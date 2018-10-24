
library(igraph)

el <- read.csv("https://raw.githubusercontent.com/hdm-gk038/Lobby/master/226305_Projekt_Lobbyarbeit_Edgelist.csv", header=T, as.is=T, quote="", sep = ",", fileEncoding="UTF-8")
nl <- read.csv("https://raw.githubusercontent.com/hdm-gk038/Lobby/master/226305_Projekt_Lobbyarbeit_Nodelist.csv", header=T, as.is=T, quote="", sep = ",", fileEncoding="UTF-8")

head(el)
head(nl)

a <-as.matrix(el)
g <- graph_from_data_frame(d=el, vertices=nl, directed=T)

V(g)$size <- 6
weight <- E(g)$weight
E(g)$width <- weight*1.5
E(g)$arrow.size <- 0

label <- V(g)$label

colrs <- c("yellowgreen", "deepskyblue3", "darkorange2")
V(g)$color <- colrs[V(g)$type]

V(g)$shape = "circle"
thema <- V(g)[type == "3"]
thema
V(g)[thema]$shape = "square"




plot(g, layout=layout_with_fr)





