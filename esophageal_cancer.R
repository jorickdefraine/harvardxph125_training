library(gtools)

head(esoph)
nrow(esoph)
all_cases <- sum(esoph$ncases)
all_controls <- sum(esoph$ncontrols)

ncases_120 <- sum(subset(esoph, alcgp=='120+')$ncases)
ncontrol_120 <- sum(subset(esoph, alcgp=='120+')$ncontrol)
prob_120_case <- ncases_120/(ncases_120+ncontrol_120)

ncases_0alc <- sum(subset(esoph, alcgp=='0-39g/day')$ncases)
ncontrol_0alc <- sum(subset(esoph, alcgp=='0-39g/day')$ncontrol)
prob_0alc_case <- ncases_0alc/(ncases_0alc+ncontrol_0alc)

all_smoker_and_case <- sum(subset(esoph, tobgp!='0-9g/day')$ncases)
all_smoker_and_case/all_cases

all_smoker_and_control <- sum(subset(esoph, tobgp!='0-9g/day')$ncontrol)
all_smoker_and_control/all_controls

