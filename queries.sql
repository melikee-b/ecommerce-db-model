SELECT m.musteri_adi, s.siparis_id, s.siparis_tutari, f.fatura_id, f.fatura_adresi, f.fatura_kesme_tarihi
FROM musteriler m
JOIN siparisler s ON m.musteri_id = s.musteri_id
JOIN fatura_detay f ON s.siparis_id = f.siparis_id
WHERE m.musteri_adi = '';/*buraya sorgulamak istediğimiz müşteri adı girilmeli */
/*yukarı satıra girdiğiniz isimli müşterinin siparişlerini ve ilgili fatura detaylarını listeler*/

SELECT m.musteri_adi, m.musteri_email, f.fatura_id, f.fatura_adresi, f.fatura_kesme_tarihi, 
       o.odeme_id, o.odeme_tarihi, o.odeme_tutari, o.odeme_yontemi, o.odeme_durumu,
       k.kart_id, k.kart_uzerindeki_isim, k.kart_numarasi, k.skt, k.cvv
FROM musteriler m
JOIN siparisler s ON m.musteri_id = s.musteri_id
JOIN fatura_detay f ON s.siparis_id = f.siparis_id
JOIN odeme o ON f.fatura_id = o.fatura_id
JOIN odeme_kartlari k ON m.musteri_id = k.musteri_id
WHERE o.odeme_yontemi = 'Kredi Karti';
/*Kredi Kartı ile ödeme yapan müşterilerin fatura detaylarını ve ödeme kartlarını listelemek için */