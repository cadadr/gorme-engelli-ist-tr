# gorme-engelli.R

library(xtable)

veri <- read.csv(
    file = "istanbul.csv",
    stringsAsFactors = T
)

# Bilinmeyen levelleri düş.
eğitim <- droplevels(veri[veri$Eğitim.Durumu != "", ])

# Faktörleri eğitim seviyesine göre artan şekilde sırala.
eğitim$Eğitim.Durumu <- factor(
    eğitim$Eğitim.Durumu,
    levels = c(
        "Okuryazar Değil",	"Okuryazar",	"Özel Eğitim",
        "İlkokul",		"İlköğretim",	"Ortaokul",
        "Lise",			"Ön Lisans",	"Lisans",
        "Lisans Üstü"
    )
)

# Her seviyenin toplama oranla yüzdelik değeri.
görme.engelli.yüzdeler <-
    t(prop.table(table(eğitim$Eğitim.Durumu))) * 100



# Basitleştirilmiş eğitim verisi.
eğitim.basit <- eğitim

# Özel eğitimi K12 içerisine alıyorum çünkü genel nüfusla
# karşılaştırmak daha kolay öyle. Zaten yanlış bilmiyorsam bu tarz
# özel eğitim genelde K12 içerisinde veriliyor.
levels(eğitim.basit$Eğitim.Durumu) <- c(
    "Okuryazar Değil",	"Okuryazar",		"K12/1-8",
    "K12/1-8",		"K12/1-8",		"K12/1-8",
    "K12/Lise",		"Yüksek Öğrenim",	"Yüksek Öğrenim",
    "Lisans Üstü"
)

görme.engelli.basit.yüzdeler <-
    t(prop.table(table(eğitim.basit$Eğitim.Durumu))) * 100


# Genel nüfus.
#
# Not: bu veri 6 yaş ve üzeri vatandaşları sayıyor sadece.

tüik.eğitim <- read.csv(
    file = "tuik-egitim-edit.csv",
    stringsAsFactors = T,
    sep = "|"
)

genel.eğitim <-
    data.frame(
        Eğitim.Seviyesi = c(
            "Okuryazar Değil", "Okuryazar", "K12/1-8", "K12/Lise",
            "Yüksek Öğrenim", "Lisans Üstü"
        ),
        Sayı = rep(0, 6)
    )

genel.eğitim[genel.eğitim$Eğitim.Seviyesi == "Okuryazar Değil", ]$Sayı <-
    sum(tüik.eğitim[tüik.eğitim$Eğitim.Seviyesi ==
                    "Okuma Yazma Bilmeyen", ]$Sayı)

genel.eğitim[genel.eğitim$Eğitim.Seviyesi == "Okuryazar", ]$Sayı <-
    sum(tüik.eğitim[tüik.eğitim$Eğitim.Seviyesi ==
                    "Okuma Yazma Bilen Fakat Bir Okul Bitirmeyen", ]$Sayı)

genel.eğitim[genel.eğitim$Eğitim.Seviyesi == "K12/1-8", ]$Sayı <-
    sum(tüik.eğitim[tüik.eğitim$Eğitim.Seviyesi ==
                    "Ortaokul Veya Dengi Meslek Ortaokul", ]$Sayı) +
    sum(tüik.eğitim[tüik.eğitim$Eğitim.Seviyesi ==
                    "İlkokul", ]$Sayı) +
    sum(tüik.eğitim[tüik.eğitim$Eğitim.Seviyesi ==
                    "İlköğretim", ]$Sayı)

genel.eğitim[genel.eğitim$Eğitim.Seviyesi == "K12/Lise", ]$Sayı <-
    sum(tüik.eğitim[tüik.eğitim$Eğitim.Seviyesi ==
                    "Lise Ve Dengi Meslek Okulu", ]$Sayı)

genel.eğitim[genel.eğitim$Eğitim.Seviyesi == "Yüksek Öğrenim", ]$Sayı <-
    sum(tüik.eğitim[tüik.eğitim$Eğitim.Seviyesi ==
                    "Yüksekokul Veya Fakülte", ]$Sayı)

genel.eğitim[genel.eğitim$Eğitim.Seviyesi == "Lisans Üstü", ]$Sayı <-
    sum(tüik.eğitim[tüik.eğitim$Eğitim.Seviyesi == "Doktora", ]$Sayı) +
    sum(tüik.eğitim[tüik.eğitim$Eğitim.Seviyesi ==
                    "Yüksek Lisans (5 Veya 6 Yıllık Fakülteler Dahil)", ]$Sayı)

# Bu şuna eşdeğer: ‘table(eğitim.basit$Eğitim.Durumu)’
genel.eğitim <- structure(
    genel.eğitim$Sayı, names = genel.eğitim$Eğitim.Seviyesi)

genel.eğitim.basit.yüzdeler <- t(prop.table(genel.eğitim)) * 100


# Final grafik.

bileşik.yüzdeler <- as.data.frame(t(genel.eğitim.basit.yüzdeler))

colnames(bileşik.yüzdeler) <- c("Genel.Nüfus")

bileşik.yüzdeler$Görme.Engelli <-
    as.data.frame(görme.engelli.basit.yüzdeler[1, ])[, 1]

colnames(bileşik.yüzdeler) <- gsub("\\.", " ", colnames(bileşik.yüzdeler))

png(file = "final.png", width=1024, height=512)

barplot(
    t(bileşik.yüzdeler),
    beside = T,
    main = "Görme engelli vatandaşların eğitim durumu\
(Genel nüfus ile karşılaştırması)",
    ylab = "Nüfusa oranı (%)",
    xlab = "Eğitim durumu",
    col  = c("limegreen", "slateblue"),
    legend.text = colnames(bileşik.yüzdeler)
)

grid(nx = NA, ny = NULL, lty = 2, col = "gray", lwd = 2)

graphics.off

sink("table.html")

print(xtable(t(bileşik.yüzdeler)), type = "html")

sink()
