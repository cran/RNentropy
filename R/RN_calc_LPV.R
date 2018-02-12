RN_calc_LPV <-
function(X, design, bind = TRUE)
{
	rnums <- sapply(X, is.numeric)

	.RN_design_check(X, design, rnums)

	l1 <- rep("LOC_LPV", length(X[rnums]))
	l2 <- colnames(X[rnums])
	PV <- apply(X[rnums],  1, '.RN_calc_LPV_row', design = design)
	PV <- t(PV)
	colnames(PV) <- paste(l1, l2, sep="_")

	if(bind)
	{
		return (cbind(X, PV))
	}
	else
		return (PV)
}