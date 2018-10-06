?boxplot
example(boxplot)

boxplot(iris[1:4], cex.axis=0.7)
boxplot(iris[1:4], cex.axis=0.7, notch=TRUE)
boxplot(iris[1:4], cex.axis=0.7, col=heat.colors(4))

boxplot(Sepal.Length~Species, data=iris, col="gold",
        ylim=c(1,8), xlim=c(0.25, 3.5), outline=F,
        boxwex=0.35, at=c(1:3)-0.2)
boxplot(Sepal.Width~Species, data=iris, add=TRUE,
        col="cornflowerblue", axes=FALSE, outline=F,
        boxwex=0.35, at=c(1:3)+0.2)
legend("topleft", c("Sepal.Length", "Sepal.Width"),
       bty="n", fill=c("gold", "cornflowerblue"), cex=0.8)

# the width parameter:
(cylnum <- table(mtcars$cyl))
bw <- cylnum/sum(cylnum)
bdat <- boxplot(mpg~cyl, data=mtcars, col="gold", width=cylnum)
