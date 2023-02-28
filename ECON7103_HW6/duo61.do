clear
cd "C:\Users\sedat\OneDrive\Masaüstü\ECON7103HW\ECON7103_HW6"
import delimited "C:\Users\sedat\OneDrive\Masaüstü\ECON7103HW\hello-world\phdee-2023-db\homework5\instrumentalvehicles.csv"

gen rd = length - 225
rdrobust price rd
rdplot price rd
rdbwselect price rd, bwselect(mserd)
rdbwselect price rd, kernel(uniform) c(0) p(4) 