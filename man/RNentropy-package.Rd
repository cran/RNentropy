\name{RNentropy-package}
\alias{RNentropy-package}
\docType{package}
\title{
\packageTitle{RNentropy}
}
\description{
\packageDescription{RNentropy}
}
\author{
\packageAuthor{RNentropy}

Maintainer: \packageMaintainer{RNentropy}
}
\references{doi = {10.1093/nar/gky055}
}
\keyword{ package }

\examples{
#load expression values and experiment design
data("RN_Brain_Example_tpm", "RN_Brain_Example_design")
#compute statistics and p-values. 
#Limited to first 5000 transcripts due to CRAN computation time restrictions
Results <- RN_calc(RN_Brain_Example_tpm[1:5000,], RN_Brain_Example_design)
#select only genes with significant changes of expression
Results <- RN_select(Results)
#Compute the Point Mutual information Matrix
Results <- RN_pmi(Results)

#load expression values and experiment design
data("RN_BarresLab_FPKM", "RN_BarresLab_design")
#compute statistics and p-values 
#Restricted to first 5000 transcripts due to CRAN computation time restrictions
Results_B <- RN_calc(RN_BarresLab_FPKM[1:5000,], RN_BarresLab_design)
#select only genes with significant changes of expression
Results_B <- RN_select(Results_B)
#Compute the Point Mutual information matrix
Results_B <- RN_pmi(Results_B)
}
