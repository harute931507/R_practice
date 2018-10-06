op <- par(oma=rep(3, 4), bg="gray90")

plot(0:1, 0:1)
plot(0:1, 0:1, type="n")
plot(0:1, 0:1, type="n", ann=FALSE)
plot(0:1, 0:1, type="n", axes=FALSE)
plot(0:1, 0:1, type="n", ann=FALSE, axes=FALSE)
box("outer", col="red")
box("figure", col="green")
box("plot", col="blue")

par()$mar
# mar: gives the number of lines of margin to be specified on 
# the four sides of the plot
par("oma")
# oma: gives the size of the outer margins in lines of text
 
text(0.5, 0.5, "Plot Region")
mtext("Figure Region", side=1, line=2)
for (i in 0:3) mtext(paste("Line", i), side=2, line=i, las=0)
for (i in 0:1) mtext(paste("Line", i), side=4, line=i, las=0)
mtext("Outer Region", side=1, line=1.5, outer=TRUE)
for (i in 0:3) mtext(paste("Line", i), side=3, line=i, outer=TRUE)
par(op)

# Margins provide you space for your axes, axis, labels, and
# titles.
