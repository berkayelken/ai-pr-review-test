**Code Review Standartlarý**

Code review roadmap ve standartlar dokumanýn da kodu gözden geçirirken ve kodumuz gözden geçirilirken yaklaþýmýmýz, farklý açýlardan izleyeceðimiz yollar nedir  sorularýna cevap bulabiliriz.

Code review aþamasýnda kendimize sormamýz gerekenler
Kod kolayca anlayabiliyor  muyum?
Kod, kodlama standartlarýna uyarak yazýlmýþ mý?
Ayný kod iki defadan fazla mý  kopyalandý?
Kök nedenini bulmak için unit test veya debug yapýlabiliyor mu?
Metodlar veya class?lar çok mu uzun ? Evetse, çok fazla fonksiyonalite mi içeriyor?
Yaklaþýmýmýz nasýl olmalý?
        1- Herkesin uymasý gerekenler
Birçok programlamadaki yöntemlerin sadece bir  kabul olduðunu düþünün. Yöntemleri tartýþýn ve hýzla bir çözüme ulaþýn.
Ýyi sorular sorun; doðrudan talep etmeyin. ("Bunu adlandýrmak hakkýnda ne düþünüyorsun: user_id?")
Açýk ve net sorular yargýlanmaz ve geliþtirme yapan kiþilerin varsayýmlarýyla cevaplanamaz.
Açýklama isteyin. ("Anlamadým. Açýklýða kavuþturur musun?")
Kod sahipliðinden kaçýnýn. ("benim", "benim deðil", "senin")
Kiþisel özelliklere atýfta bulunabilecek terimleri kullanmaktan kaçýnýn. ("aptalca", "saçma"). Herkesin zeki ve iyi niyetli olduðunu varsayalým.
Açýk olun. Karþýnýzdaki insanlarýn her zaman algýlarý açýk olmayabilir, bunu düþünün.
Mütevazý olun. ("Emin deðilim - hadi bakalým.")
Abartma kullanmayýn. ("her zaman", "asla", "sonsuz", "hiçbir þey")
Alaycý olmayýn.
Gerçeklerle hareket edin, özgüvenli olun.
Çok fazla "anlamadým" veya "Alternatif çözüm" gibi yorumlar varsa, insanlara açýklamaktan kaçýnmayýn ve eþzamanlý olarak konuþun (ör. Sohbet, ekran paylaþýmý, þahsen). En son tartýþmayý özetleyen bir açýklama gönderin.

2- Kodunuzun incelenmesi
Kod gözden geçiren kiþilerin önerilerine karþý minnettar olur(?iyi tespit, deðiþikliði yapacaðým  ?)
Ortak bir aksiyon "Kiþisel olarak alma. Bu kod incelemesi." Bunu eklerdik, ama þimdi ne demek istediðimizi söylemeyi tercih ediyoruz: Duygularý doðrudan karþý tarafa aktarmanýn ne kadar zor olduðunu ve geri bildirimi yanlýþ yorumlamanýn ne kadar kolay olduðunun farkýnda olun. Gözden geçirme agresif veya öfkeli veya baþka bir þekilde kiþisel görünüyorsa, mümkünse þahsen yorumlarýn açýklamasýný isteyin ve netleþtirin.
Kodunuzun hiç gözden geçirilmemiþ halini düþünerek, gözden geçirenin yorumlarýndan en iyi niyeti kabul edin.
Kodun neden var olduðunu açýklayýn. ("Bu nedenlerden ötürü böyledir. Bu sýnýfý / dosyayý / yöntemini / deðiþkeni yeniden adlandýrmam daha net olur mu?")
Gelecekteki biletlere / hikayelere bazý deðiþiklikler ve yeniden düzenlemeler yapýn.
Code review da yapýlacak deðiþikliklerde yorumlarýn kaybolmasýna izin vermeyin.
Gözden geçirenin bakýþ açýsýný anlamaya çalýþýn.
Her yoruma cevap vermeye çalýþýn.
Code review sürecinizi CI sürecinde yönetin CD sürecine code review bitmeden girmeyin
Code review maddelerinin projeye olan etkisine hakim olun.
Son editör kontrolü, çekme isteði yazarýna aittir.
     3- Kodu inceleyeceðimizde
          Deðiþikliðin neden gerekli olduðunu anlayýn (bir hatayý düzeltir, kullanýcý deneyimini geliþtirir, mevcut kodu yeniden düzenler). Sonra;
Güçlü veya deðil, review maddelerinizi belirtin.
Sorunu çözerken kodu basitleþtirmenin yollarýný belirleyin.
Eðer tartýþmalar çok felsefi ya da akademik olursa, tartýþmayý teknik olarak konuþabileceðiniz katýlýmýn yüksek olduðu bir ortama götürün. Bu arada, geliþtirme yapan arkadaþýn alternatif yaklaþýmlar hakkýnda nihai kararý vermesine izin verin.
Alternatif uygulamalar sunun, geliþtirme yapan kiþinin zaten onlarý düþündüðünü varsayalým. ("Burada validation ile ilgili ne düþünüyorsunuz?")
Developer?ýn bakýþ açýsýný anlamaya çalýþýn.
Yorumlarýnýzý ?, ?OK? veya ?Hazýr ? gibi yorumlarla kapatýn.
Unutmayýn, bir kapý bekçisi olmak için deðil, feedback vermek için buradasýnýz.
Code Review yaparken çerçevemiz ne olmalý?
        1- Kod Formatý
            Kodun üzerinden geçerken kodun görsel motifinin okunabilirliði güçleþtirmemesi, kolaylaþtýrmasý gerekmektedir, kod formatýnýn düzgün olduðundan emin olun:
Kod bloklarýnýn baþlangýç ve bitiþinin net olarak göründüðünden emin olun ve kod hizalamak için white space?leri kullanýn
Ýsimlendirme standartlarýna uyulup uyulmadýðýndan emin olun (Pascal, CamelCase vb.)
Kodun yatay düzlemde uzunluðu 14 inç dizüstü bilgisayar ekranýna uymalýdýr. Kodu görüntülemek için yatay scroll ile kaydýrma yapmaya gerek olmamalýdýr. Bu nedenle her zaman 14 inçlik bir monitörde görünecek þekilde kod yazýn.
Aþaðýdaki temel standartlara uygunluðu kontrol edin:
BASE-1: Deðiþken isimleri anlamlý, amaç neyse ona göre verilmiþ.
BASE-2: Deðiþkenlerin tanýmlandýðý yer ile kullanýldýðý yer arasýndaki uzaklýk kýsa tutulmuþ. Örneðin bir hesabýn balance'ý AccountService'te deðil direkt Account objesi içinde çözülmeli.
BASE-3: Database entityleri hariç Anemic Domain Model'e yer verilmemiþtir. (Bir class'ýn sadece set/get içerip hiçbir davranýþsal fonksiyona sahip olmamasý durumu.)
BASE-4: Domain Layer Responsibilities yerine getirilmiþ. Ýþ konseptinin temsili, iþ durumlarý, iþ kurallarýnýn yönetimi domain model üzerinde yönetilmiþtir.
BASE-5: Coincidental Cohesion'dan kaçýnýlmýþ. Ýlgisiz yapýlar bir arada barýndýrýlmamýþtýr.
BASE-6: Logical Cohesion'dan kaçýnýlmýþ. Gerçekte farklý tabiatta olmalarýna raðmen bir konu üzerinde iliþki olduðu düþünülerek tapýlar bir araya getirilmemiþ.
BASE-7: Temporal Cohesion'dan kaçýnýlmýþ. Yapýlar zamansal birliktelikten ötürü bir araya getirilmemiþ.
BASE-8: Procedural Cohesion'dan kaçýnýlmýþ. Bir konu ile ilgili iþler yukardan aþaðýya doðru fonksiyonel olarak bir araya getirilmemiþ. ( Martin Fowler Transaction Script'inden kaçnýlmýþ)
BASE-9: Communicational/Informational Cohesion'dan kaçýnýlmýþ. Ayný veri üzerinde çalýþan yapýlar birliktelik gözetilmeden bir araya getirilmemiþ.
BASE-10: Sequential Cohesion'dan kaçýnýlmýþ. Sýnýf seviyesinde birbirinin çýktýsýný besleyen pipe þeklinde çalýþan yapýdan uzak durulmuþ. (Nice-to-have)
BASE-11: Functional Cohesion kullanýlmýþ. Tek, çok iyi tanýmlanmýþ ve olabildiðince küçük yapýlar bir arada.
BASE-12: Content Coupling'den kaçýnýlmýþ. Yapýlar birbirlerinin iç yapýlarýna baðlý olarak implement edilmemiþ.
BASE-13: Common Coupling'den kaçýnýlmýþ. Bir verinin pek çok yerden ortak þekilde yönetilmesi ve kullanýlmasýndan kaçýnýlmýþ.
BASE-14: External Coupling'den kaçýnýlmýþ. Yapýlar arasýnda ortak kullandýklarý dýþ bileþenlerden kaçýnýlmýþ. (Eðer var ise Façade ve Repository gibi yaklaþýmlar ile çözüm aranýr.)
BASE-15: Control Coupling'den kaçýnýlmýþ. Yapýlarýn flag geçerek birbirlerinin akýþýný kontrol etmesinden kaçýnýlmýþ.
BASE-16: Stamp Coupling'den kaçýnýlmýþ. Yapýlarýn birbirine karmaþýk veri yapýsý geçerek baðýmlýlýk oluþturmasý tercih edilmemiþ.
BASE-17: Data Coupling'den kaçýnýlmýþ. Yapýlarýn birbirine basit/ilkel/atomik veri geçerek oluþturduklarý baðýmlýlýktan kaçýnýlmýþ. (Nice-to-have)
BASE-18: Message Coupling, No Coupling uygulanamayan yerlerde tercih edilmiþ. Nesenelerin arayüz bilgisi dýþýnda baþka bilgi gerektirmeden kullanýlmasý saðlanmýþ.
BASE-19: Metot isimleri ile metodun amacýný net ifade edilmiþ.
BASE-20: Metotlarýn parametre sayýlarý az tutulmuþ.
BASE-21: Class'larýn içindeki metot sayýsý az ve amaca yönelik belirlenmiþ.
BASE-22: Ýç içe if ler yok. Cyclomatic Complexity düþük tutulmuþ.
BASE-23: Kod içinde gereksiz comment yazýlmamýþ, kendini anlatan kod yazýlmýþ.
BASE-24: Dry prensibi uygulanmýþ. Ayný kod parçasýnýn tekrarlandýðý duruma yer verilmemiþ.
BASE-25: KISS prensibi uygulanmýþ. Yapý içinde gereksiz hiçbir kod parçasý býrakýlmamýþ.
BASE-26: Ternary ifadeler yerine condition'ý tam anlatan methodlar yazýlarak boolean deðerler atanmýþ.
BASE-27: Kodu okumayý zorlaþtýran conditional complexity yaratýlmamýþ.
BASE-28: Uzun metotlar (15 satýrdan uzun) yazýlmamýþ.
BASE-29: Uzun classlar (importlar hariç 250 satýrdan uzun) yazýlmamýþ.
BASE-30: Tekrarlanan Magic Number'lar yok. Hardcoded deðerler Const olarak isimlendirerek kullanýlmýþ.
BASE-31: Ayný kodlama standardý tüm kodlarda uygulanmýþ. Farklý dosyalar arasýnda tutarsýzlýk yaratýlmamýþ.
BASE-32: Hard coded deðerler yerine constants veya gerekirse configuration dosyalarý kullanýlmýþ
        2- Mimari
             Kodun senaryo akýþýný deðil, þematik yönünü bulunduðu platforma göre inceleyin.
ARCH-1: Disiplin ayýrýmlarýna dikkat edin
ARCH-1A: Gereksinimlere göre multi-layer, namespaces ve package yapýsýnýn kullanýlmasý(Presentation, business, service layer vb...)
ARCH-1B: Gereksinimlere göre dosyalara bölünmesi (HTML, Properties, JavaScript ve CSS).
ARCH-2: Mevcut yazýlým patternlerinin kullanýmýný kontrol edin.
ARCH-3: En uygun design patternlere uyulmuþ mu inceleyin.
ARCH-4: Aþaðýdaki temel standartlara uygunluðu kontrol edin:
ARCH-4A: Web/REST standartlarýna dikkat edilmiþ.
ARCH-4B: Rest Api de açýk metot parametreler için defansif validation kodlarý yazýlmýþ.
ARCH-4C: Controller, Repository gibi class'larda domain logic'lere yer verilmemiþ.
ARCH-4D: instanceof, typeof gibi yöntemlerle runtime'da type'lara bakarak kod ilerletilmemiþ. Reflection kullanýlmamýþ.
ARCH-4E: Mutator (metodun state deðiþikliðine neden olduðu) ve Accessor(metodun bir þeyi read etmek için kullanýldýðý) ayrýmýna dikkat edilmiþ.
ARCH-4F: Find, Get, Search gibi metotlar field update yapmamalý. Command & Query Separation a dikkat edilmiþ.
ARCH-4G: Loglamaya dikkat edilmiþ. Production ortamýnda akýþýn trace'ini okuyabilmek için yerinde loglar kullanýlmýþ.
ARCH-4H: Hatalar olduðunda hata detayýyla ilgili loglar basýlmýþ.
         3- Non Functional Gereksinimler
Maintainability 
 Ýleride gelebilecek bir deðiþiklik veya bug fix durumunda support eforumu minumum olacak þekilde metodlarýn geliþtirmesi yapýlmalýdýr.
MNTC-1  Okunabilirlik: 
MNTC-1A: Kodun akýþý karýþýk olmamalý, kod akýþýný izlenerek iþlevi anlaþýlmalý 
MNTC-1B: Kod içinde isimlendirme yaptýðýmýz bütün member?lar amacýna uygun, anlaþýlýr olarak isimlendirilmeli
MNTC-1C: Kod okurken çok fazla zaman harcanýyorsa, kod design?ý tekrar gözden geçirilmelidir.
MNTC-2 Test edilebilirlik : 
MNTC-2A: Kodun test edilmesi kolay olmalýdýr. 
MNTC-2B: Metodlarýn diðer katmanlarda kullanýlacaksa interface pattern?i uygulanmalýdýr, çünkü interface?ler kolayca mock?lanabilir. 
MNTC-2C: Mümkün olabildiðince static fonksiyonlardan veya singleton class?lardan kaçýnýn(gerekmedikçe kullanýlmamalý)
MNTC-2D: Testler aþaðýdaki temel standartlara uygun olmalýdýr:
MNTC-2D-1: Testler class'ýn sorumluluklarýný kapsayacak þekilde yazýlmýþ. Her farklý davranýþ için test yazýlmýþ.
MNTC-2D-2: Test pyramid uygulanmýþ. Integration, Unit, Acceptance test yazýlmýþ.
MNTC-2D-3: Testler "Given When Then" akýþý ile yazýlmýþ. Hazýrlýk / Geliþme / Sonuç ayrýmý yapýlmýþ.
MNTC-2D-4: State tabanlý testler ile Behavior tabanlý testler (mocks)  doðru kullanýlmýþ.
MNTC-2D-5: Testler ile kod yönlendirilmiþ. Testlerde çok fazla assertion/verification yok. "One assertion/verification per test" yaklaþýmý yapýlmýþ.
MNTC-2D-6: Class'lar arasý message zincirlerine yer verilmemiþ (get.get.get diye ilerleyen Train Wreck diyebileceðimiz zincirler)
MNTC-2D-7: Testlerde complex class'larýn kurulmasý için Builder + Fluent Interface kullanýlmýþ.
MNTC-2D-8: Test Datasý kullanýlýyorsa testin sonunda test database'i sýfýrlanmýþ. Testlerin sistemde side effect'i oluþturmayacak þekilde yazýlmýþ.
MNTC-2D-9: Boundary, edge case'lerin testleri ayrýca yazýlmýþ. Sadece baþarý senaryolarý test edilmemiþ.
MNTC-2D-10: Kod, deðiþiklik olduðunda mutlaka en az 1 test case fail olacak þekilde test senaryolarý ile desteklenmiþ.
MNTC-3 Hata ayýklama: Hatalarýn veya istisnai durumlarýn tespiti için kod akýþýnda kontrollü olarak log desteði olacak þekilde geliþtirme yapýlmalýdýr.
MNTC-4 Konfigürasyonel yapýlar :  Veriler sýk sýk deðiþtirilirse, hiçbir kod deðiþikliði gerekmeyecek þekilde yapýlandýrýlabilir deðerleri (XML dosyasý, veritabaný tablosu) yerinde tutun.
Reusability
RUSE-1: DRY (Do not Repeat Yourself) principle: Ayný kod iki defadan fazla tekrarlanmamalýdýr.
RUSE-2: Kod içersinden yeniden kullanýlabilecek bloklar ayrý metodlar olarak yazýlmalýdýr. 
RUSE-3: Güvenlik - exceptionlarý yakalacak ve loglayacak yapýda olmalýdýr.
Reliability
REL-1: Kod içersinde yapýlacak eklemeler kod desenini mümkün olabildiðince etkilememeli ve kodda yapýlan eklemelerin kodsal olarak etki alaný mininum olacak þekilde düþünülmelidir.
Güvenlik
SEC-1: Authentication, authorization,  SQL injections ve Cross Site Scripting (XSS) gibi güvenlik tehditlerine karþý input validasyonlarýna dikkat edilmeli, hassas verilerin þifrelenmesi (þifreler, kredi kartý bilgileri vb.) saðlanmalý
Performans
PERF-1: StringBuilder, generic collection class gibi ihtiyaçlara en uygun veri türünü kullanýn.
PERF-2: Lazy loading, asynchronous ve parallel processing.
PERF-3: Caching, local storage ve session/application data alanlarýnýn kullanýmýn efektif olarak saðlanmasý
Usability
USE-1: Uygulamanýz bir API ise veya User Interface?e sahipse dýþardan bir gözle kullanýlabilirliðini test edin.
Other
GNRL-1: Proje yapýsýný açýklayan Readme içerisinde yabancý birinin projeyi çekip nasýl çalýþtýracaðý gibi bilgilendirmelere yer verilmiþ.
GNRL-2: Maliyetli iþlemler için caching gibi optimizasyonlar düþünülmüþ.
GNRL-3: Exception'lar ignore edilmemiþ.
GNRL-4: Gereksiz overenginneering'e kaçan zorlama kod, dependency vb. eklenmemiþ.
GNRL-5: Proje baðýmlýlýklarý ihtiyacý karþýlayacak þekilde kurgulanmýþ, fazla baðýmlýlýk/library eklenmemiþ.
GNRL-6: Git pratiklerine uyulmuþ. (küçük commit'ler, commit mesajlarý, temiz history, ignore edilen dosyalar)
        4- Object-Oriented Analysis and Design (OOAD) Principles (Nesneye Dayalý Analiz ve Tasarým Ýlkeleri) 
DSGN-1: SOLID prensibine uygunluðu kontrol edin:
Single Responsibility Principle(SRP)
Open-Closed Principle(OCP)
Liskov Substitution Principle(LSP) 
Interface Segregation Principle
Dependency Inversion Principle
DSGN-2: Class'larýn içindeki metotlar ahenkli, tek bir sorumluluk alanýnda odaklý yazýlmýþ.
DSGN-3: Objectler arasý baðýmlýlýklar enjekte edilmiþ. Dependency Injection kullanýlmýþ.
DSGN-4: Class'lar arasý baðýmlýlýklarýn en azda tutulmasýna dikkat edilmiþ.
DSGN-5: Static singleton baðýmlýlýk kullanýlmamýþ.
DSGN-6: Null veya Exception üstünden logic kurulmamýþ.
DSGN-7: Flag parametreleriyle metodun içindeki logic karmaþýklaþtýrýlmamýþ.
DSGN-8: Interface gibi abstractionlar ihtiyaç olduðu için kullanýlmýþ. Gereksiz abstraction eklenmemiþ.
DSGN-9: Interface içeriði az ve tek sorumluluða özgü metot imzasý barýndýracak þekilde tasarlanmýþ.
DSGN-10: Domain çok iyi yakalanmýþ ve framework'lerden uzakta kendi class'larýnda domain model kodlanmýþ.
DSGN-11: Gereksiz design pattern kullanýmý yapýlmamýþ. Gerçekten bir problem çözmek için kullanýlmýþ.
DSGN-12: Open-Closed Prensibine dikkat edilmiþ. Kod geniþlemeye açýk, deðiþikliðe kapalý þeklinde tasarlanmýþ.
DSGN-13: Kod, yeni sorumluluk eklendiðinde shotgun surgery'ye sebep olmayacak þekilde tasarlanmýþ.
     5- Nice-to-Have
    Geliþtirmelerimizde aþaðýdaki prebsipleri uygulamayý tercih etmek kod kalitemiz açýsýndan önem arz etmekle birlikte henüz zorunlu beklentiler içinde deðildir.
EXP-1: Geliþtirme stratejisi olarak Test Driven Development tercih edilmiþ. (Atomic Commit'ler ile ispat edilmeli.)
EXP-2: Sequential Cohesion dahi kullanýlmayýp her yerde Functional cohesion tercih edilmiþ.
EXP-3: Data coupling'den dahi kaçýnýlýp message coupling veya no coupling tercih edilmiþ.
EXP-4: GRASP teknikleri uygulanmýþ.