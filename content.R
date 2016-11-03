library(googleVis)
op <- options(gvis.plot.tag='chart')

adres = "HAN, Ruitenberglaan 31, 6826 CC Arnhem"
extra = "Groot Auditorium"
directions = "<a href='https://goo.gl/maps/1dgHpkwo1M92'>Routebeschrijving</a>"

locaties <- data.frame(adres = "HAN, Ruitenberglaan 31, 6826 CC Arnhem",
                       tooltip= paste0(extra, "<br>", directions)
                       )

M1 <- gvisMap(locaties, "adres" , "tooltip",
              options=list(showTip=TRUE,
                           mapType='normal',
                           zoomLevel=16,
                           width=100,
                           height=300
              )
)
plot(M1)
