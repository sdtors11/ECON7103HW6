clear
cd "C:\Users\sedat\OneDrive\Masaüstü\ECON7103HW\ECON7103_HW6"
import delimited "C:\Users\sedat\OneDrive\Masaüstü\ECON7103HW\hello-world\phdee-2023-db\homework5\instrumentalvehicles.csv"


ivregress liml price car  height (mpg = weight), vce(robust)