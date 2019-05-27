
#Peticiones_dia_sin_carro
#inicia copia de peticiones
cat peticion385/results/reporte_general_carpeta.csv > reportes/reportes_peticiones_SEMANASANTA2019.csv

cat peticion386/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion387/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion388/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion389/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv

cat peticion390/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion391/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion392/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion393/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion394/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion395/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion396/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion397/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion398/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion399/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv

cat peticion400/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion401/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv
cat peticion402/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_SEMANASANTA2019.csv


cd reportes
echo "aproximando hora de archivos, seleccione archivo reportes_peticiones_SEMANASANTA2019.csv"
python AproximarHoraArchivos.py

