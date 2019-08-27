
#Peticiones_dia_sin_carro
#inicia copia de peticiones
cat /home/francisco/ReportesAforosSDM/Scooters_CAMARA_40_CR11XCL85/12-08-2019/results/reporte_general_carpeta.csv > reportes/reportes_peticiones_Scooters_2019.csv

cat /home/francisco/ReportesAforosSDM/Scooters_CAMARA_40_CR11XCL85/13-08-2019/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_Scooters_2019.csv
cat /home/francisco/ReportesAforosSDM/Scooters_CAMARA_40_CR11XCL85/14-08-2019/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_Scooters_2019.csv
cat /home/francisco/ReportesAforosSDM/Scooters_CAMARA_40_CR11XCL85/15-08-2019/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_Scooters_2019.csv
cat /home/francisco/ReportesAforosSDM/Scooters_CAMARA_40_CR11XCL85/16-08-2019/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_Scooters_2019.csv


cd reportes
echo "aproximando hora de archivos, seleccione archivo reportes/reportes_peticiones_Scooters_2019.csv"
python2 AproximarHoraArchivos_Scooters.py

