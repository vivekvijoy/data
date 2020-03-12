Affairs<-read.csv("/Users/vivekvijoy/Desktop/data science/ExcelR/ASSIGNMENTS/9.Logistic Regression/affairs.csv")
View(Affairs)


ols <- lm(affairs ~ age + yearsmarried + religiousness + occupation + rating,
             data = Affairs)
probit <- glm(I(affairs > 0) ~ age + yearsmarried + religiousness + occupation + rating,
                 data = Affairs, family = binomial(link = "probit"))

probit1 <- glm(affairs ~ age + yearsmarried + religiousness + occupation + rating,
                  data = Affairs)
View(probit1)
probit2 <- glm(affairs ~ age + yearsmarried + religiousness + occupation + rating,
                   right = 4, data = Affairs)

fm_pois <- glm(affairs ~ age + yearsmarried + religiousness + occupation + rating,
               data = Affairs, family = poisson)

library("MASS")
fm_nb <- glm.nb(affairs ~ age + yearsmarried + religiousness + occupation + rating,
                data = Affairs)


library("pscl")
fm_zip <- zeroinfl(affairs ~ age + yearsmarried + religiousness + occupation + rating | age + 
                     yearsmarried + religiousness + occupation + rating, data = Affairs)
