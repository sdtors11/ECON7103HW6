
clear
cd "C:\Users\sedat\OneDrive\Masaüstü\ECON7103HW\ECON7103_HW6"
import delimited "C:\Users\sedat\OneDrive\Masaüstü\ECON7103HW\hello-world\phdee-2023-db\homework5\instrumentalvehicles.csv"

gen rd = length - 225
gen rdl = 0
replace rdl = 1 if length > 225 
rdrobust price rd
rdplot price rd
rdbwselect price rd, bwselect(mserd)
rdbwselect price rd, kernel(uniform) c(0) p(4)
ivregress liml price car (mpg = rd), vce(robust)
outreg2 using Q11.doc, replace ctitle("2SLS Results: Liml Estimator")
outreg2 using Q11.tex, replace ctitle("2SLS Results: Liml Estimator")
ivregress 2sls price car (mpg = rd), vce(robust) first small
outreg2 using Q12.doc, replace ctitle("2SLS Results: 2sls Estimator")
outreg2 using Q12.tex, replace ctitle("2SLS Results: 2sls Estimator")