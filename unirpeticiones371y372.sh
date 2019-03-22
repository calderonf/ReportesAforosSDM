cat peticion371/results/reporte_general_carpeta.csv > reportes/reportes_peticiones_371-372.csv
cat peticion372/results/reporte_general_carpeta_sinmarco.csv >> reportes/reportes_peticiones_371-372.csv

cd reportes
echo "aproximando hora de archivos, seleccione archivo reportes_peticiones_371-372.csv"
python AproximarHoraArchivos.py
