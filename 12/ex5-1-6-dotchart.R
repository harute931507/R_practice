# R Examples of dotchart()
dotchart(VADeaths, main="Death Rates in Virginia - 1940")
dotchart(t(VADeaths), xlim=c(0,100), 
         main="Death Rates in Virginia - 1940")

# modify the symbol and color
dotchart(VADeaths, col=rainbow(5), pch=c(15:19))
dotchart(t(VADeaths), col=rainbow(4), pch=c(15:18))
dotchart(VADeaths[,c(1,2)], col=rainbow(5), pch=c(15:19))
dotchart(VADeaths[,c(1,3)], col=rainbow(5), pch=c(15:19))
