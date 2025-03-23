# ecommerce-db-model(E-Ticaret Platformu Veri Tabanı Projesi)

## Proje Tanımı
Bu proje, e-ticaret web sitesinin arkasında bulunan veri tabanını tasarlamak ve uygulamak amacıyla geliştirilmiştir. Hedefimiz, kullanıcıların ürünleri arayabilmesi, inceleyebilmesi, sepetlerine ekleyebilmesi ve satın alabilmesi gibi temel işlevlerin sorunsuz bir şekilde yürütülmesini sağlamaktır. Ayrıca, işletmenin envanterini yönetmesi, siparişleri takip etmesi ve ödemeleri işlemesi için bir altyapı oluşturulmuştur.

## İş Kuralları
- **Ödeme-Fatura Detay**: Her ödemenin bir fatura detayı vardır (1:1).
- **Fatura Detay-Siparişler**: Her siparişin bir fatura detaydı vardır (1:1).
- **Müşteriler-Müşteri Analitiği**: Her müşteri için bir analitik oluşturulur (1:1).
- **Müşteriler-Oturumlar**: Bir müşterinin birden çok oturumu olabilir (1:M).
- **Müşteriler-Sepet**: Her müşterinin bir sepeti vardır (1:1).
- **Müşteriler-Müşteri Yorum**: Bir müşteri birden çok yorum yapabilir (1:M).
- **Müşteriler-Ödeme Kartları**: Bir müşterinin birden çok ödeme kartı olabilir (1:M).
- **Müşteriler-Siparişler**: Bir müşterinin birden çok siparişi olabilir (1:M).
- **Ürünler-Sepet**: Bir sepette birden fazla ürün olabilir (M:1).
- **Ürünler-Ürün Özellikleri**: Bir ürünün birden fazla özelliği vardır (1:M).
- **Ürünler-Müşteri Yorum**: Bir müşteri birden fazla yorum yapabilir (1:M).
- **Ürünler-Ürün Kategori**: Birden fazla ürün birden fazla kategoriye ait olabilir (M:N).
- **Ürünler-Stok**: Bir stokta birden fazla ürün olabilir (1:M).
- **Ürünler-Sipariş Detay**: Bir ürün için birden fazla sipariş detaydı vardır (1:M).
- **Ürünler-Tedarikçi Sipariş Detayları**: Bir ürün için birden fazla tedarikçi sipariş detaydı bulunur (1:M).

## Teknolojiler
- **Veri Tabanı**: MySQL veya PostgreSQL

## Veri Tabanı Modelleri

### Chen Modeli
Chen modeli, varlıkların birbirleriyle olan ilişkileri ve bu ilişkilerin kardinalitelerini göstermek için kullanılmıştır. Bu modelde müşteriler, siparişler, stok, kampanyalar ve ödeme bilgilerinin detayları yer almaktadır.

![image](https://github.com/user-attachments/assets/4f77b0bc-b8a9-42e8-8748-df4068bfdd6f)


### Kaz Ayağı (Crow's Foot) Modeli
Kaz ayağı modeli, tablolar arasındaki ilişkileri daha sade bir şekilde görmek için kullanılmıştır. Bu modelde, tabloların birbiriyle olan birden fazla ilişkisi daha anlaşılır hale getirilmiştir.

![image](https://github.com/user-attachments/assets/dd2e6920-6119-46ef-becb-7d37cefafd01)

### İlişkisel Şema
Bu şema, e-ticaret platformunun temel yapısını oluşturan tabloların ve bu tablolar arasındaki ilişkilerin tanımını yapmaktadır. Bu sayede verilerin nasıl organize edildiği ve iş kurallarının nasıl uygulandığı görülmektedir.

![image](https://github.com/user-attachments/assets/c211df7e-97a7-4112-8f12-2ccca58e4d76)





