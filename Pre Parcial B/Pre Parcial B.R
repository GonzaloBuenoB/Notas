#a
plaintext = "ftbopdifdvboepsptbwpmwjpefmdjofbnbmgjubopftubcbwjfoepmbufmfwjtjpotfoubepfombtbmbzbqspwfdipqbsbefdjsmfrvfibcjbdpmhbepfmmjcspefejftuffofmufoefefspefspqbsptbmpnjspdpnptjopivcjfsbfoufoejepobebrvjfspefdjsejkpbnbmgjuboprvfopmpifdpmhbepqpsrvfqsfwjbnfoufmpivcjfsbnpkbepdpombnbohvfsbojqpsrvftfnfibzbdbjepbmbhvbtjnqmfnfoufmpifdpmhbepqpsrvftjqbsbwfsdpnpsftjtufbmbjoufnqfsjfmptfncbuftefftubobuvsbmfabeftfsujdbmbjefbftefevdibnqefkbsvomjcspefhfpnfusjbdpmhbepbmbjoufnqfsjfqbsbwfstjbqsfoefdvbuspdptbtefmbwjebsfbm"
texto <- factor(strsplit(plaintext, split = "")[[1]], levels = letters)
plot(table(texto))
table(texto)

levelsdecifrados <- c(letters[26],letters[-26])
levels(texto) <- levelsdecifrados

#b
k = 10^3
n = 10^5
movx <- c(-1,1,0,0)
movy <- c(0,0,-1,1)
out <- rep(FALSE,k)

rwalk <- function(i){
 dado <- sample(1:4, i-1, replace = T)
  locx <- c(0, cumsum((movx)[dado]))
  locy <- c(0, cumsum((movy)[dado]))
  list(x = locx, y = locy)
}

for(a in 1:k){
  rw = rwalk(n)
  out[a] <- any(rw$x < 0 & rw$y == 0)
}

prob = sum(out)/k
prob
