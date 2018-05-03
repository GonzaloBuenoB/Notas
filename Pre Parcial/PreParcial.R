plaintext = "ftbopdifdvboepsptbwpmwjpefmdjofbnbmgjubopftubcbwjfoepmbufmfwjtjpotfoubepfombtbmbzbqspwfdipqbsbefdjsmfrvfibcjbdpmhbepfmmjcspefejftuffofmufoefefspefspqbsptbmpnjspdpnptjopivcjfsbfoufoejepobebrvjfspefdjsejkpbnbmgjuboprvfopmpifdpmhbepqpsrvfqsfwjbnfoufmpivcjfsbnpkbepdpombnbohvfsbojqpsrvftfnfibzbdbjepbmbhvbtjnqmfnfoufmpifdpmhbepqpsrvftjqbsbwfsdpnpsftjtufbmbjoufnqfsjfmptfncbuftefftubobuvsbmfabeftfsujdbmbjefbftefevdibnqefkbsvomjcspefhfpnfusjbdpmhbepbmbjoufnqfsjfqbsbwfstjbqsfoefdvbuspdptbtefmbwjebsfbm"

text_mod <- strsplit(plaintext, split = "")[[1]]
text_mod <- factor(text_mod)
table(text_mod)
plainfactor = as.factor(strsplit(plaintext, "")[[1]])
plot(plainfactor)

hiddenfactor = as.factor(NULL)
levels(hiddenfactor) <- letters
#letters.shift = c(letters[-1], letters[1])
letters.shift = c(letters[26], letters)

#for(i in seq_along(plainfactor)){
# j = which(letters.shift == plainfactor[i])
# hiddenfactor[i] = letters[j]
#}


letters.shift <- letters.shift[-13]
letters.shift <- letters.shift[-25]
letters.shift <- letters.shift[-24]
levels(plainfactor) <- letters.shift

plainfactor

#b

rwalk = function(n){
  move = sample(1:4, n-1, replace = T)
  x = c(0, cumsum(c(-1,1,0,0)[move]))
  y = c(0, cumsum(c(0,0,-1,1)[move]))
  list(x=x, y=y)
}

#y las simulaciones de montecarlo correspondientes
n = 10^5
k = 10^3
spath = matrix(0,n,k)
out = rep(FALSE,k)

for(i in 1:k){
  rw = rwalk(n)
  out[i] <- any(rw$x<0 & rw$y == 0)
}

prob = sum(out)/k
prob



