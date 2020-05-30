library(gtools)

head(esoph)
nrow(esoph)
all_cases <- sum(esoph$ncases)
all_controls <- sum(esoph$ncontrols)

ncases_120 <- sum(subset(esoph, alcgp=='120+')$ncases)
ncontrol_120 <- sum(subset(esoph, alcgp=='120+')$ncontrol)
prob_120_case <- ncases_120/(ncases_120+ncontrol_120)
