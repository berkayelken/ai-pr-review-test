#!/bin/bash

set -e

CHECKLIST_FILE=".github/scripts/pr_checklist.md"

echo "? Reading event payload..."
PR_DIFF_URL=$(jq -r .pull_request.diff_url "$GITHUB_EVENT_PATH")
PR_NUMBER=$(jq -r .pull_request.number "$GITHUB_EVENT_PATH")
REPO=$GITHUB_REPOSITORY

echo "? Diff URL: $PR_DIFF_URL"
echo "? PR Number: $PR_NUMBER"

echo "? Downloading diff..."
OWNER=$(echo "$REPO" | cut -d'/' -f1)
REPO_NAME=$(echo "$REPO" | cut -d'/' -f2)

DIFF=$(curl -s \
  -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3.diff" \
  "https://api.github.com/repos/$OWNER/$REPO_NAME/pulls/$PR_NUMBER")

echo "? Diff length: ${#DIFF}"
echo "? First 10 lines of diff:"
echo "$DIFF" | head -n 10

if [ -z "$DIFF" ]; then
  echo "? No diff found. Exiting."
  exit 0
fi

CHECKLIST=$(cat "$CHECKLIST_FILE")

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

echo "? Calling OpenAI API..."
RESPONSE=$(curl -s https://api.openai.com/v1/chat/completions \
  -H "Content-Type: application/json" \
  -H "Authorization: Bearer $OPENAI_API_KEY" \
  -d "{
    \"model\": \"gpt-4o\",
    \"messages\": [
      {\"role\": \"system\", \"content\": \"You are a helpful code reviewer.\"},
      {\"role\": \"user\", \"content\": \"$PROMPT\"}
    ]
  }")

echo "? Raw OpenAI Response:"
echo "$RESPONSE"

REVIEW=$(echo "$RESPONSE" | jq -r '.choices[0].message.content')

echo "? Review:"
echo "$REVIEW"

echo "? Posting comment to PR #$PR_NUMBER..."
curl -s -H "Authorization: Bearer $GITHUB_TOKEN" \
  -H "Accept: application/vnd.github.v3+json" \
  -X POST \
  -d "{\"body\": \"$REVIEW\", \"event\": \"COMMENT\"}" \
  "https://api.github.com/repos/$REPO/pulls/$PR_NUMBER/reviews"

echo "? PR comment posted!"
