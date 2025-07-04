#!/bin/bash

set -e

# Config
CHECKLIST_FILE=".github/scripts/pr_checklist.md"
DEFAULT_BRANCH="origin/master"

# Get diff
git fetch origin $DEFAULT_BRANCH
git checkout $GITHUB_HEAD_REF

DIFF=$(git diff origin/$DEFAULT_BRANCH)

if [ -z "$DIFF" ]; then
  echo "No diff found."
  exit 0
fi

# Read checklist
CHECKLIST=$(cat $CHECKLIST_FILE)

# Escape for JSON
ESCAPED_DIFF=$(echo "$DIFF" | sed 's/"/\\"/g')
ESCAPED_CHECKLIST=$(echo "$CHECKLIST" | sed 's/"/\\"/g')

# Compose prompt
PROMPT=$(cat <<EOF
You are a senior backend engineer experienced in Java and Spring Boot. You are performing a pull request review for a backend team. The team writes all reviews in Turkish using clear, respectful and constructive language.

Please do the following:

1. Analyze the given pull request diff and check it carefully according to the following checklist:
$CHECKLIST

2. Identify any potential improvements, mistakes or unclear parts.
3. If you see any security, performance or readability issues, mention them clearly.
4. Write your review in Turkish.
5. Keep your tone professional, respectful and concise.
6. If everything looks good, still add a short approval message in Turkish.

Here is the pull request diff:
$DIFF
EOF
)

# Call OpenAI API
echo "Calling OpenAI API..."

RESPONSE=$(curl -s https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d "{
    \"model\": \"gpt-4.1\",
    \"messages\": [
      {\"role\": \"system\", \"content\": \"You are a senior expert backend developer and helpful code reviewer.\"},
      {\"role\": \"user\", \"content\": \"${PROMPT}\"}
    ]
  }")

REVIEW=$(echo "$RESPONSE" | jq -r '.choices[0].message.content')

echo "Review:"
echo "$REVIEW"

# Post comment to PR
REPO=$GITHUB_REPOSITORY
PR_NUMBER=$(echo $GITHUB_REF | awk -F'/' '{print $NF}')

curl -s -H "Authorization: token $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  -X POST \
  -d "{\"body\": \"$REVIEW\"}" \
  "https://api.github.com/repos/$REPO/issues/$PR_NUMBER/comments"

echo "? PR comment posted!"
