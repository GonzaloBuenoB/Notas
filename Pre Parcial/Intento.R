plaintext = "ftbopdifdvboepsptbwpmwjpefmdjofbnbmgjubopftubcbwjfoepmbufmfwjtjpotfoubepfombtbmbzbqspwfdipqbsbefdjsmfrvfibcjbdpmhbepfmmjcspefejftuffofmufoefefspefspqbsptbmpnjspdpnptjopivcjfsbfoufoejepobebrvjfspefdjsejkpbnbmgjuboprvfopmpifdpmhbepqpsrvfqsfwjbnfoufmpivcjfsbnpkbepdpombnbohvfsbojqpsrvftfnfibzbdbjepbmbhvbtjnqmfnfoufmpifdpmhbepqpsrvftjqbsbwfsdpnpsftjtufbmbjoufnqfsjfmptfncbuftefftubobuvsbmfabeftfsujdbmbjefbftefevdibnqefkbsvomjcspefhfpnfusjbdpmhbepbmbjoufnqfsjfqbsbwfstjbqsfoefdvbuspdptbtefmbwjebsfbm"
xl = c(length = 26)

for (i in 1:26){
  d <- letters[i]
  s <- gsub(d,"",plaintext) 
  xl[i] <- nchar(plaintext) - nchar(s) 
}


lol <- cbind(letters,xl)
plot(letters,xl)

#B

locx = 0
locy = 0

while (locx > 0 & locy > 0)
for (k in 1:10^3){
  for (i in 1:10^5){
   paso <- runif(1)

   ifelse(paso <= 0.25, locx <- locx + 1, 
          ifelse(paso <= 0.5, locx <- locx - 1, 
                 ifelse(paso <= 0.75, locy <- locy + 1, 
                        ifelse(paso <= 1, locy <- locy - 1,""))))
   
  }
  
}

