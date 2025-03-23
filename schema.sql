CREATE TABLE musteriler(
  musteri_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  musteri_adi VARCHAR(45) NOT NULL,
  musteri_email VARCHAR(45),
  PASSWORD VARCHAR(20),
  adres_bilgisi TEXT,
  dogum_tarihi DATETIME,
  cinsiyet VARCHAR(30)
);

CREATE TABLE odeme_kartlari(
    kart_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    kart_uzerindeki_isim VARCHAR(45) NOT NULL,
    kart_numarasi VARCHAR(19) NOT NULL,
    skt DATE NOT NULL,
    cvv VARCHAR(4) NOT NULL,
    musteri_id INT UNSIGNED,
    FOREIGN KEY (musteri_id) REFERENCES musteriler(musteri_id)
);

CREATE TABLE siparisler(
    siparis_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    siparis_tutari FLOAT,
    musteri_id INT UNSIGNED,
    FOREIGN KEY (musteri_id) REFERENCES musteriler(musteri_id)
);

CREATE TABLE fatura_detay(
    fatura_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    fatura_adresi VARCHAR(75) NOT NULL,
    fatura_kesme_tarihi DATETIME DEFAULT CURRENT_TIMESTAMP,
    siparis_id INT UNSIGNED,
    FOREIGN KEY (siparis_id) REFERENCES siparisler(siparis_id)
);

CREATE TABLE odeme(
    odeme_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    odeme_tarihi DATETIME DEFAULT CURRENT_TIMESTAMP,
    odeme_tutari FLOAT NOT NULL,
    odeme_yontemi VARCHAR(45) NOT NULL,
    odeme_durumu VARCHAR(45) NOT NULL,
    fatura_id INT UNSIGNED,
    FOREIGN KEY (fatura_id) REFERENCES fatura_detay(fatura_id)
);
