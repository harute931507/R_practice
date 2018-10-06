?pie
example(pie)

# 成大 105 學年度專任教師統計資料
# 資料來源: 人事室教職員人數統計表
t1 <- c(644, 379, 267, 28, 26)
pie(t1)
names(t1) <- c("教授", "副教授", "助理教授", "講師", "其他")
pie(t1)
pie(t1, clockwise=TRUE)
(t2 <- t1/sum(t1))
(t2 <- round(t1/sum(t1) * 100, 2))
(t2 <- paste0(round(t1/sum(t1) * 100, 2), "%"))
pie(t1, labels=t2, col=c("darkgoldenrod1", "darkolivegreen2",
                         "salmon", "cadetblue2", "brown2"))
legend("topleft", names(t1), cex=0.7, 
       fill=c("darkgoldenrod1", "darkolivegreen2",
              "salmon", "cadetblue2", "brown2"))
