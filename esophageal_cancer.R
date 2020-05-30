library(gtools)

head(esoph)
nrow(esoph)
#3b
all_cases <- sum(esoph$ncases)
#3c
all_controls <- sum(esoph$ncontrols)
#4a
ncases_120 <- sum(subset(esoph, alcgp=='120+')$ncases)
ncontrol_120 <- sum(subset(esoph, alcgp=='120+')$ncontrol)
prob_120_case <- ncases_120/(ncases_120+ncontrol_120)
#4b
ncases_0alc <- sum(subset(esoph, alcgp=='0-39g/day')$ncases)
ncontrol_0alc <- sum(subset(esoph, alcgp=='0-39g/day')$ncontrol)
prob_0alc_case <- ncases_0alc/(ncases_0alc+ncontrol_0alc)
#4c
all_smoker_and_case <- sum(subset(esoph, tobgp!='0-9g/day')$ncases)
all_smoker_and_case/all_cases
#4d
all_smoker_and_control <- sum(subset(esoph, tobgp!='0-9g/day')$ncontrol)
all_smoker_and_control/all_controls
#5a
prob_ncases_120 <- ncases_120/all_cases
#5b
ncases_30 <- sum(subset(esoph, tobgp=='30+')$ncases)
ncases_30
ncases_30/all_cases
#5c
ncases_30and120 <- sum(subset(esoph, tobgp=='30+' & alcgp=='120+')$ncases)
ncases_30and120/all_cases
#5d
ncases_30or120 <- sum(subset(esoph, tobgp=='30+' | alcgp=='120+')$ncases)
ncases_30or120/all_cases
#6a
ncontrols_120 <- sum(subset(esoph, alcgp=='120+')$ncontrols)
prob_ncontrols_120 <- ncontrols_120/all_controls
#6b
prob_ncases_120/prob_ncontrols_120 #3.274254
#6c
ncontrols_30 <- sum(subset(esoph, tobgp=='30+')$ncontrols)
ncontrols_30
ncontrols_30/all_controls
#6d
ncontrols_30and120 <- sum(subset(esoph, tobgp=='30+' & alcgp=='120+')$ncontrols)
ncontrols_30and120/all_controls
#6e
ncontrols_30or120 <- sum(subset(esoph, tobgp=='30+' | alcgp=='120+')$ncontrols)
ncontrols_30or120/all_controls
#6f
ncases_30or120/all_cases/(ncontrols_30or120/all_controls)


