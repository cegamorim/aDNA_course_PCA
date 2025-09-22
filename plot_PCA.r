datasetA="SkoglundEtAl2016_Pacific_FullyPublic.proj.eigenvectors"

resA = read.table(datasetA, col.names=c("Sample", "PC1", "PC2", "PC3", "PC4", "PC5", "PC6", "PC7", "PC8", "PC9", "PC10", "Pop"))

popGroups=read.table("indiv_pop_PCA.tab", col.names=c("Sample", "Population","Color","Point"))

mergedA = merge(resA, popGroups, by="Sample")

plot(mergedA$PC1, mergedA$PC2, col=mergedA$Color, pch=mergedA$Point)

