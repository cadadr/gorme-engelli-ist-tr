# Görme engelli vatandaşların eğitim durumu: genel nüfus ile karşılaştırması

**8 Temmuz 2022**

Bu basit çalışma İstanbul Büyükşehir Belediyesi’nin 8 Haziran 2022
tarihindeki haliyle görme engelli İstanbullulara dair verisini
([ibb2022]) TÜİK’in 2021 tarihli Eğitim Seviyesi istatistikleri
([tüik2021]) ile karşılaştırmaktadır.

[ibb2022]: https://data.ibb.gov.tr/dataset/gorme-engelli-birey-bilgileri/resource/b445a78e-0975-40ad-a808-6653def7935d
[tüik2021]: https://biruni.tuik.gov.tr/medas/?kn=130&locale=tr

Her iki veritabanı da 2 Temmuz 2022 tarihinde görüntülenmiştir.
[ibb2022] veritabanı XLSX formatında indirilip CSV’ye çevirilmiş,
[tüik2021] ise CSV olarak indirilmiş, ve çeşitli düzenlemeler
yapıldıktan sonra kullanılmıştır. [ibb2022]’nin CSV dosyası ve
[tüik2021]’in her iki versiyonu repoda mevcuttur.

Sonuçta ortaya çıkan tablo şu şekildedir:

<img width="100%" src="final.png"
     alt="Karşılaştırmalı eğitim durumu grafiği."/>

Grafikten gördüğümüz üzere, görme engelli olmayan vatandaşlarda
okuryazar olmama oranı, nüfus genelinin yaklaşık 7,5 kat üzerinde
(görme engellilerde %18,72, genel nüfusta %2,48). Örgün eğitim almayıp
yine de okuryazar olan kişilerin oranı ise genel nüfusta yaklaşık 3
kat kadar daha yüksek (genel nüfusta %10,04, görme engellilerde
%3,96).

Çalışmada çeşitli detaylı göstergeleri «K12/1-8» ve «K12/Lise» olarak
birleştirdim. Bunun sebebi karşılaştırmayı kolaylaştırmaktı. Önemli
bir detay olarak, [ibb2022]’de, örneğin %3,92’lik bir kısmını temsil
eden «Özel Eğitim»’li olarak listelenen kimseleri, işbu özel eğitimin
örgün eğitim kapsamında sağlanan özel eğitim hizmeti olduğunu
düşünerek, «K12/1-8» kapsamına aldım. Önemli bir husus şu ki eğer bu
eğitim durumu indexini doğru yorumladıysam, bu özel eğitimin bir
kısmının lise yıllarında da olduğu gibi bir problem var. Fakat doğru
ya da yanlış yorumlamış olmama bağlı olmaksızın, bu durum gözlenen
sonuçları ciddi bir şekilde etkilemiyor, çünki karşılaştırılan
oranlar, K12/1-8’in oranından bu 3,92 rakamını çıkarsak dahi ciddi bir
şekilde değişmiyor.

K12/1-8 sütunları lise eğitimi görmemiş, ilkokul ortaokul ya da
ilköğretim mezunu kişiler ile, özel eğitim görmüş kimseleri
kapsıyorlar. Her iki veri setinde de en çok vatandaşı bu aralıkta
görüyoruz. Görme engelli vatandaşların %55,61’sı, genel nüfusun ise
%47,52’si bu kategorideler.

Bir sonraki kategori, mesleki ya da diğer liselerde eğitim görmüş
kimseleri kapsıyor. Genel nüfusun %22,26’sı ile görme engelli
vatandaşların %15,59’unu burada buluyoruz.

Bu son iki karşılaştırmadan, ciddi oranda görme engelli vatandaşın,
örgün eğitime dahil olabilseler dahi, liseye geçişte ayrımcılık
yaşadıkları sonucunu çıkarabiliriz.

Yüksek öğrenim kategorisinde önlisans ve lisans kademesinde diploma
sahibi olan vatandaşları görüyoruz. Genel nüfusun %15,51’i bu eğitim
seviyesine sahipken, görme engelli vatandaşlarda bu rakam yalnızca
%5,9. Okuryazar kategorisinde olduğu gibi burada da 3 kata varan bir
dezavantaj görülüyor.

Belki de en dramatik rakam son kategori olan lisans üstü eğitim
kategorisinde mevcut. Yüksek lisans ve doktora diploması sahiplerinin
yanında, tıp gibi, 5 veya 6 yıllık fakültelerin mezunlarını da içeren
bu kategoride, genel nüfusun %2,17’si temsil edilirken, bu oran görme
engelli vatandaşlarda yalnızca %0,2. Yani, lisans üstü seviyesinde
görme engelli vatandaşların 10,85 kat daha az temsil edildiğini
görüyoruz. Kuşkusuz bu tesadüfi bir rakam olamaz, görme engelli
vatandaşların eğitimlerinde ilerlemelerinin ortaokul itibariyle her
adımda gitgide zorlaştığı aşikar.

Bu sonuçlara bakarken dikkate edilmesi gereken en öncelikli detay,
görme engelli verileri yalnızca İstanbul’dan gelirken, genel nüfus
verilerinin Türkiye genelini kapsıyor olması (görme engelli
vatandaşlar da dahil olmak üzere), ve [tüik2021] verisinin yalnızca 6
yaş ve üzeri vatandaşları hesaba almasıdır. Bu karşılaştırmayı
yaparken İstanbul örnekleminin Türkiye genelini temsil ettiği ve
Türkiye verisinin görme engelli vatandaşları da içeriyor olmasının
kayda değer bir değişikliğe sebep vermeyeceği varsayımlarından yola
çıkıyoruz.

Ayrıca iki veri setinde de hatrı sayılır sayıda eğitim durumu
bilinmeyen vatandaş bulunduğunu ve bunların çalışma dışı bırakıldığını
da not etmeliyim.

Son olarak, ne TÜİK, ne de İBB kategori ve kriterlerini açık bir
şekilde belirttikleri için, her iki veri setinde de bulunan kategori
ve değişken isimlerini kendi genel bilgime göre yorumlamak durumunda
kaldım.

Aşağıda tablo şeklinde grafikteki kategorilere ait yüzde değerleri
verilmiştir.

<table border=1>
<tr> <th>  </th> <th> Okuryazar Değil </th> <th> Okuryazar </th> <th> K12/1-8 </th> <th> K12/Lise </th> <th> Yüksek Öğrenim </th> <th> Lisans Üstü </th>  </tr>
  <tr> <td align="right"> Genel Nüfus </td> <td align="right"> 2.48 </td> <td align="right"> 10.04 </td> <td align="right"> 47.53 </td> <td align="right"> 22.26 </td> <td align="right"> 15.52 </td> <td align="right"> 2.17 </td> </tr>
  <tr> <td align="right"> Görme Engelli </td> <td align="right"> 18.72 </td> <td align="right"> 3.96 </td> <td align="right"> 55.61 </td> <td align="right"> 15.60 </td> <td align="right"> 5.90 </td> <td align="right"> 0.21 </td> </tr>
   </table>

Bu çalışmanın sonunda iki ana gözlemde bulunabiliriz: ilkin, görme
engelli vatandaşların %22,67 gibi büyük bir kesimi, yaklaşık her 5
görme engelli vatandaşın biri, örgün eğitimin dışında kalırken,
bunların yalnızca küçük bir kesimi bu duruma rağmen okuma yazma
öğrenebiliyor. İkincisi, örgün eğitime girişteki dezavantajı bertaraf
edebilen görme engelli vatandaşlar için, her müteakip eğitim seviyesi
bunlardan birçoğunu eğitim sisteminin dışına iten birer engel teşkil
ediyor. Her adımda aradaki farkın katlandığı, üniversite seviyesinde 3
kat olan dezavantajın, lisansüstü eğitimde neredeyse 11 kata ulaştığı
görülüyor.

Sonuç olarak, gerek ayrımcılık, gerek erişilebilirlik imkanlarının
yetersizliği, gerek sağlamcılık gibi sebeplerle, görme engelli
vatandaşlar ya temel eğitime ulaşamıyor, ya da en temel eğitim
sonrasında örgün eğitim sisteminin dışında kalıyor.
