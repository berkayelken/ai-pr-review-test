**Code Review Standartlar�**

Code review roadmap ve standartlar dokuman�n da kodu g�zden ge�irirken ve kodumuz g�zden ge�irilirken yakla��m�m�z, farkl� a��lardan izleyece�imiz yollar nedir� sorular�na cevap bulabiliriz.

Code review a�amas�nda kendimize sormam�z gerekenler
Kod kolayca�anlayabiliyor��muyum?
Kod,�kodlama standartlar�na uyarak�yaz�lm�� m�?
Ayn� kod�iki�defadan�fazla�m���kopyaland�?
K�k nedenini bulmak i�in unit test veya debug yap�labiliyor mu?
Metodlar veya class?lar �ok mu uzun�?�Evetse, �ok fazla fonksiyonalite mi i�eriyor?
Yakla��m�m�z nas�l olmal�?
� � � � 1- Herkesin uymas� gerekenler
Bir�ok programlamadaki y�ntemlerin sadece bir� kabul oldu�unu d���n�n. Y�ntemleri tart���n ve h�zla bir ��z�me ula��n.
�yi sorular sorun; do�rudan talep etmeyin. ("Bunu adland�rmak hakk�nda ne d���n�yorsun: user_id?")
A��k ve net sorular yarg�lanmaz ve geli�tirme yapan ki�ilerin varsay�mlar�yla cevaplanamaz.
A��klama isteyin. ("Anlamad�m. A��kl��a kavu�turur musun?")
Kod sahipli�inden ka��n�n. ("benim", "benim de�il", "senin")
Ki�isel �zelliklere at�fta bulunabilecek terimleri kullanmaktan ka��n�n. ("aptalca", "sa�ma"). Herkesin zeki ve iyi niyetli oldu�unu varsayal�m.
A��k olun. Kar��n�zdaki insanlar�n her zaman alg�lar� a��k olmayabilir, bunu d���n�n.
M�tevaz� olun. ("Emin de�ilim - hadi bakal�m.")
Abartma kullanmay�n. ("her zaman", "asla", "sonsuz", "hi�bir �ey")
Alayc� olmay�n.
Ger�eklerle hareket edin, �zg�venli olun.
�ok fazla "anlamad�m" veya "Alternatif ��z�m" gibi yorumlar varsa, insanlara a��klamaktan ka��nmay�n ve e�zamanl� olarak konu�un (�r. Sohbet, ekran payla��m�, �ahsen). En son tart��may� �zetleyen bir a��klama g�nderin.

2- Kodunuzun incelenmesi
Kod g�zden ge�iren ki�ilerin �nerilerine kar�� minnettar olur(?iyi tespit, de�i�ikli�i yapaca��m� ?)
Ortak bir aksiyon "Ki�isel olarak alma. Bu kod incelemesi." Bunu eklerdik, ama �imdi ne demek istedi�imizi s�ylemeyi tercih ediyoruz: Duygular� do�rudan kar�� tarafa aktarman�n ne kadar zor oldu�unu ve geri bildirimi yanl�� yorumlaman�n ne kadar kolay oldu�unun fark�nda olun. G�zden ge�irme agresif veya �fkeli veya ba�ka bir �ekilde ki�isel g�r�n�yorsa, m�mk�nse �ahsen yorumlar�n a��klamas�n� isteyin ve netle�tirin.
Kodunuzun hi� g�zden ge�irilmemi� halini d���nerek, g�zden ge�irenin yorumlar�ndan en iyi niyeti kabul edin.
Kodun neden var oldu�unu a��klay�n. ("Bu nedenlerden �t�r� b�yledir. Bu s�n�f� / dosyay� / y�ntemini / de�i�keni yeniden adland�rmam daha net olur mu?")
Gelecekteki biletlere / hikayelere baz� de�i�iklikler ve yeniden d�zenlemeler yap�n.
Code review da yap�lacak de�i�ikliklerde yorumlar�n kaybolmas�na izin vermeyin.
G�zden ge�irenin bak�� a��s�n� anlamaya �al���n.
Her yoruma cevap vermeye �al���n.
Code review s�recinizi CI s�recinde y�netin CD s�recine code review bitmeden girmeyin
Code review maddelerinin projeye olan etkisine hakim olun.
Son edit�r kontrol�, �ekme iste�i yazar�na aittir.
� � �3- Kodu inceleyece�imizde
� � � � � De�i�ikli�in neden gerekli oldu�unu anlay�n (bir hatay� d�zeltir, kullan�c� deneyimini geli�tirir, mevcut kodu yeniden d�zenler). Sonra;
G��l� veya de�il, review maddelerinizi belirtin.
Sorunu ��zerken kodu basitle�tirmenin yollar�n� belirleyin.
E�er tart��malar �ok felsefi ya da akademik olursa, tart��may� teknik olarak konu�abilece�iniz kat�l�m�n y�ksek oldu�u bir ortama g�t�r�n. Bu arada, geli�tirme yapan arkada��n alternatif yakla��mlar hakk�nda nihai karar� vermesine izin verin.
Alternatif uygulamalar sunun, geli�tirme yapan ki�inin zaten onlar� d���nd���n� varsayal�m. ("Burada validation ile ilgili ne d���n�yorsunuz?")
Developer?�n bak�� a��s�n� anlamaya �al���n.
Yorumlar�n�z� ?, ?OK? veya ?Haz�r ? gibi yorumlarla kapat�n.
Unutmay�n, bir kap� bek�isi olmak i�in de�il, feedback vermek i�in buradas�n�z.
Code Review yaparken �er�evemiz ne olmal�?
� � � � 1- Kod Format�
� � � � � � Kodun �zerinden ge�erken kodun g�rsel motifinin okunabilirli�i g��le�tirmemesi, kolayla�t�rmas� gerekmektedir, kod format�n�n d�zg�n oldu�undan emin olun:
Kod bloklar�n�n ba�lang�� ve biti�inin net olarak g�r�nd���nden emin olun ve kod hizalamak i�in white space?leri kullan�n
�simlendirme standartlar�na uyulup uyulmad���ndan emin olun (Pascal, CamelCase vb.)
Kodun yatay d�zlemde uzunlu�u 14 in� diz�st� bilgisayar ekran�na uymal�d�r.�Kodu g�r�nt�lemek i�in yatay scroll ile kayd�rma yapmaya gerek olmamal�d�r. Bu nedenle her zaman 14 in�lik bir monit�rde g�r�necek �ekilde kod yaz�n.
A�a��daki temel standartlara uygunlu�u kontrol edin:
BASE-1: De�i�ken isimleri anlaml�, ama� neyse ona g�re verilmi�.
BASE-2:�De�i�kenlerin tan�mland��� yer ile kullan�ld��� yer aras�ndaki uzakl�k k�sa tutulmu�. �rne�in bir hesab�n balance'� AccountService'te de�il direkt Account objesi i�inde ��z�lmeli.
BASE-3:�Database entityleri hari� Anemic Domain Model'e yer verilmemi�tir. (Bir class'�n sadece set/get i�erip hi�bir davran��sal fonksiyona sahip olmamas� durumu.)
BASE-4:�Domain Layer Responsibilities yerine getirilmi�. �� konseptinin temsili, i� durumlar�, i� kurallar�n�n y�netimi domain model �zerinde y�netilmi�tir.
BASE-5:�Coincidental Cohesion'dan ka��n�lm��. �lgisiz yap�lar bir arada bar�nd�r�lmam��t�r.
BASE-6: Logical Cohesion'dan ka��n�lm��. Ger�ekte farkl� tabiatta olmalar�na ra�men bir konu �zerinde ili�ki oldu�u d���n�lerek tap�lar bir araya getirilmemi�.
BASE-7:�Temporal Cohesion'dan ka��n�lm��. Yap�lar zamansal birliktelikten �t�r� bir araya getirilmemi�.
BASE-8:�Procedural Cohesion'dan ka��n�lm��. Bir konu ile ilgili i�ler yukardan a�a��ya do�ru fonksiyonel olarak bir araya getirilmemi�. ( Martin Fowler Transaction Script'inden ka�n�lm��)
BASE-9:�Communicational/Informational Cohesion'dan ka��n�lm��. Ayn� veri �zerinde �al��an yap�lar birliktelik g�zetilmeden bir araya getirilmemi�.
BASE-10:�Sequential Cohesion'dan ka��n�lm��. S�n�f seviyesinde birbirinin ��kt�s�n� besleyen pipe �eklinde �al��an yap�dan uzak durulmu�. (Nice-to-have)
BASE-11:�Functional Cohesion kullan�lm��. Tek, �ok iyi tan�mlanm�� ve olabildi�ince k���k yap�lar bir arada.
BASE-12:�Content Coupling'den ka��n�lm��. Yap�lar birbirlerinin i� yap�lar�na ba�l� olarak implement edilmemi�.
BASE-13: Common Coupling'den ka��n�lm��. Bir verinin pek �ok yerden ortak �ekilde y�netilmesi ve kullan�lmas�ndan ka��n�lm��.
BASE-14:�External Coupling'den ka��n�lm��. Yap�lar aras�nda ortak kulland�klar� d�� bile�enlerden ka��n�lm��. (E�er var ise Fa�ade ve Repository gibi yakla��mlar ile ��z�m aran�r.)
BASE-15:�Control Coupling'den ka��n�lm��. Yap�lar�n flag ge�erek birbirlerinin ak���n� kontrol etmesinden ka��n�lm��.
BASE-16:�Stamp Coupling'den ka��n�lm��. Yap�lar�n birbirine karma��k veri yap�s� ge�erek ba��ml�l�k olu�turmas� tercih edilmemi�.
BASE-17:�Data Coupling'den ka��n�lm��. Yap�lar�n birbirine basit/ilkel/atomik veri ge�erek olu�turduklar� ba��ml�l�ktan ka��n�lm��. (Nice-to-have)
BASE-18:�Message Coupling, No Coupling uygulanamayan yerlerde tercih edilmi�. Nesenelerin aray�z bilgisi d���nda ba�ka bilgi gerektirmeden kullan�lmas� sa�lanm��.
BASE-19:�Metot isimleri ile metodun amac�n� net ifade edilmi�.
BASE-20:�Metotlar�n parametre say�lar� az tutulmu�.
BASE-21:�Class'lar�n i�indeki metot say�s� az ve amaca y�nelik belirlenmi�.
BASE-22:��� i�e if ler yok. Cyclomatic Complexity d���k tutulmu�.
BASE-23:�Kod i�inde gereksiz comment yaz�lmam��, kendini anlatan kod yaz�lm��.
BASE-24:�Dry prensibi uygulanm��. Ayn� kod par�as�n�n tekrarland��� duruma yer verilmemi�.
BASE-25:�KISS prensibi uygulanm��. Yap� i�inde gereksiz hi�bir kod par�as� b�rak�lmam��.
BASE-26:�Ternary ifadeler yerine condition'� tam anlatan methodlar yaz�larak boolean de�erler atanm��.
BASE-27:�Kodu okumay� zorla�t�ran conditional complexity yarat�lmam��.
BASE-28:�Uzun metotlar (15 sat�rdan uzun) yaz�lmam��.
BASE-29:�Uzun classlar (importlar hari� 250 sat�rdan uzun) yaz�lmam��.
BASE-30:�Tekrarlanan Magic Number'lar yok. Hardcoded de�erler Const olarak isimlendirerek kullan�lm��.
BASE-31:�Ayn� kodlama standard� t�m kodlarda uygulanm��. Farkl� dosyalar aras�nda tutars�zl�k yarat�lmam��.
BASE-32:�Hard coded de�erler yerine constants veya gerekirse configuration dosyalar� kullan�lm��
� � � � 2- Mimari
� � � � � � �Kodun senaryo ak���n� de�il, �ematik y�n�n� bulundu�u platforma g�re inceleyin.
ARCH-1:�Disiplin ay�r�mlar�na dikkat edin
ARCH-1A:�Gereksinimlere g�re multi-layer, namespaces ve package yap�s�n�n kullan�lmas�(Presentation, business, service layer vb...)
ARCH-1B:�Gereksinimlere g�re dosyalara b�l�nmesi (HTML, Properties, JavaScript ve CSS).
ARCH-2:�Mevcut yaz�l�m patternlerinin kullan�m�n� kontrol edin.
ARCH-3:�En uygun design patternlere uyulmu� mu inceleyin.
ARCH-4:�A�a��daki temel standartlara uygunlu�u kontrol edin:
ARCH-4A: Web/REST standartlar�na dikkat edilmi�.
ARCH-4B: Rest Api de a��k metot parametreler i�in defansif validation kodlar� yaz�lm��.
ARCH-4C: Controller, Repository gibi class'larda domain logic'lere yer verilmemi�.
ARCH-4D: instanceof, typeof gibi y�ntemlerle runtime'da type'lara bakarak kod ilerletilmemi�. Reflection kullan�lmam��.
ARCH-4E: Mutator (metodun state de�i�ikli�ine neden oldu�u) ve Accessor(metodun bir �eyi read etmek i�in kullan�ld���) ayr�m�na dikkat edilmi�.
ARCH-4F: Find, Get, Search gibi metotlar field update yapmamal�. Command & Query Separation a dikkat edilmi�.
ARCH-4G: Loglamaya dikkat edilmi�. Production ortam�nda ak���n trace'ini okuyabilmek i�in yerinde loglar kullan�lm��.
ARCH-4H: Hatalar oldu�unda hata detay�yla ilgili loglar bas�lm��.
� � �� � 3-�Non�Functional�Gereksinimler
Maintainability�
��leride gelebilecek bir de�i�iklik veya bug fix durumunda support eforumu minumum olacak �ekilde metodlar�n geli�tirmesi yap�lmal�d�r.
MNTC-1 �Okunabilirlik:�
MNTC-1A:�Kodun ak��� kar���k olmamal�, kod ak���n� izlenerek i�levi anla��lmal��
MNTC-1B:�Kod i�inde isimlendirme yapt���m�z b�t�n member?lar amac�na uygun, anla��l�r olarak isimlendirilmeli
MNTC-1C:�Kod okurken �ok fazla zaman harcan�yorsa, kod design?� tekrar g�zden ge�irilmelidir.
MNTC-2 Test edilebilirlik�:�
MNTC-2A: Kodun test edilmesi kolay olmal�d�r.�
MNTC-2B: Metodlar�n di�er katmanlarda kullan�lacaksa interface pattern?i uygulanmal�d�r, ��nk� interface?ler kolayca mock?lanabilir.�
MNTC-2C: M�mk�n olabildi�ince static fonksiyonlardan veya singleton class?lardan ka��n�n(gerekmedik�e kullan�lmamal�)
MNTC-2D: Testler a�a��daki temel standartlara uygun olmal�d�r:
MNTC-2D-1: Testler class'�n sorumluluklar�n� kapsayacak �ekilde yaz�lm��. Her farkl� davran�� i�in test yaz�lm��.
MNTC-2D-2: Test pyramid uygulanm��. Integration, Unit, Acceptance test yaz�lm��.
MNTC-2D-3: Testler "Given When Then" ak��� ile yaz�lm��. Haz�rl�k / Geli�me / Sonu� ayr�m� yap�lm��.
MNTC-2D-4: State tabanl� testler ile Behavior tabanl� testler (mocks) �do�ru kullan�lm��.
MNTC-2D-5: Testler ile kod y�nlendirilmi�. Testlerde �ok fazla assertion/verification yok. "One assertion/verification per test" yakla��m� yap�lm��.
MNTC-2D-6: Class'lar aras� message zincirlerine yer verilmemi� (get.get.get diye ilerleyen Train Wreck diyebilece�imiz zincirler)
MNTC-2D-7: Testlerde complex class'lar�n kurulmas� i�in Builder + Fluent Interface kullan�lm��.
MNTC-2D-8: Test Datas� kullan�l�yorsa testin sonunda test database'i s�f�rlanm��. Testlerin sistemde side effect'i olu�turmayacak �ekilde yaz�lm��.
MNTC-2D-9: Boundary, edge case'lerin testleri ayr�ca yaz�lm��. Sadece ba�ar� senaryolar� test edilmemi�.
MNTC-2D-10: Kod, de�i�iklik oldu�unda mutlaka en az 1 test case fail olacak �ekilde test senaryolar� ile desteklenmi�.
MNTC-3 Hata ay�klama:�Hatalar�n veya istisnai durumlar�n tespiti i�in kod ak���nda kontroll� olarak log deste�i olacak �ekilde geli�tirme yap�lmal�d�r.
MNTC-4 Konfig�rasyonel yap�lar : �Veriler s�k s�k de�i�tirilirse, hi�bir kod de�i�ikli�i gerekmeyecek �ekilde yap�land�r�labilir de�erleri (XML dosyas�, veritaban� tablosu) yerinde tutun.
Reusability
RUSE-1: DRY (Do not Repeat Yourself) principle: Ayn� kod iki defadan fazla tekrarlanmamal�d�r.
RUSE-2: Kod i�ersinden yeniden kullan�labilecek bloklar ayr� metodlar olarak yaz�lmal�d�r.�
RUSE-3: G�venlik -�exceptionlar� yakalacak ve loglayacak yap�da olmal�d�r.
Reliability
REL-1: Kod i�ersinde yap�lacak eklemeler kod desenini m�mk�n olabildi�ince etkilememeli ve kodda yap�lan eklemelerin kodsal olarak etki alan� mininum olacak �ekilde d���n�lmelidir.
G�venlik
SEC-1: Authentication, authorization,��SQL injections�ve�Cross Site Scripting�(XSS)�gibi g�venlik tehditlerine kar�� input validasyonlar�na dikkat edilmeli, hassas verilerin �ifrelenmesi (�ifreler, kredi kart� bilgileri vb.) sa�lanmal�
Performans
PERF-1: StringBuilder, generic collection class gibi ihtiya�lara en uygun veri t�r�n� kullan�n.
PERF-2: Lazy�loading,�asynchronous�ve�parallel�processing.
PERF-3: Caching, local storage ve�session/application�data alanlar�n�n kullan�m�n efektif olarak sa�lanmas�
Usability
USE-1: Uygulaman�z bir API ise veya User Interface?e sahipse d��ardan bir g�zle kullan�labilirli�ini test edin.
Other
GNRL-1: Proje yap�s�n� a��klayan Readme i�erisinde yabanc� birinin projeyi �ekip nas�l �al��t�raca�� gibi bilgilendirmelere yer verilmi�.
GNRL-2: Maliyetli i�lemler i�in caching gibi optimizasyonlar d���n�lm��.
GNRL-3: Exception'lar ignore edilmemi�.
GNRL-4: Gereksiz overenginneering'e ka�an zorlama kod, dependency vb. eklenmemi�.
GNRL-5: Proje ba��ml�l�klar� ihtiyac� kar��layacak �ekilde kurgulanm��, fazla ba��ml�l�k/library eklenmemi�.
GNRL-6: Git pratiklerine uyulmu�. (k���k commit'ler, commit mesajlar�, temiz history, ignore edilen dosyalar)
� � � � 4- Object-Oriented Analysis and Design (OOAD) Principles (Nesneye Dayal� Analiz ve Tasar�m �lkeleri)�
DSGN-1: SOLID prensibine uygunlu�u kontrol edin:
Single Responsibility Principle(SRP)
Open-Closed Principle(OCP)
Liskov Substitution Principle(LSP)�
Interface Segregation Principle
Dependency Inversion Principle
DSGN-2: Class'lar�n i�indeki metotlar ahenkli, tek bir sorumluluk alan�nda odakl� yaz�lm��.
DSGN-3: Objectler aras� ba��ml�l�klar enjekte edilmi�. Dependency Injection kullan�lm��.
DSGN-4: Class'lar aras� ba��ml�l�klar�n en azda tutulmas�na dikkat edilmi�.
DSGN-5: Static singleton ba��ml�l�k kullan�lmam��.
DSGN-6: Null veya Exception �st�nden logic kurulmam��.
DSGN-7: Flag parametreleriyle metodun i�indeki logic karma��kla�t�r�lmam��.
DSGN-8: Interface gibi abstractionlar ihtiya� oldu�u i�in kullan�lm��. Gereksiz abstraction eklenmemi�.
DSGN-9: Interface i�eri�i az ve tek sorumlulu�a �zg� metot imzas� bar�nd�racak �ekilde tasarlanm��.
DSGN-10: Domain �ok iyi yakalanm�� ve framework'lerden uzakta kendi class'lar�nda domain model kodlanm��.
DSGN-11: Gereksiz design pattern kullan�m� yap�lmam��. Ger�ekten bir problem ��zmek i�in kullan�lm��.
DSGN-12: Open-Closed Prensibine dikkat edilmi�. Kod geni�lemeye a��k, de�i�ikli�e kapal� �eklinde tasarlanm��.
DSGN-13: Kod, yeni sorumluluk eklendi�inde shotgun surgery'ye sebep olmayacak �ekilde tasarlanm��.
� � �5- Nice-to-Have
� ��Geli�tirmelerimizde a�a��daki prebsipleri uygulamay� tercih etmek kod kalitemiz a��s�ndan �nem arz etmekle birlikte hen�z zorunlu beklentiler i�inde de�ildir.
EXP-1: Geli�tirme stratejisi olarak Test Driven Development tercih edilmi�. (Atomic Commit'ler ile ispat edilmeli.)
EXP-2: Sequential Cohesion dahi kullan�lmay�p her yerde Functional cohesion tercih edilmi�.
EXP-3: Data coupling'den dahi ka��n�l�p message coupling veya no coupling tercih edilmi�.
EXP-4: GRASP teknikleri uygulanm��.