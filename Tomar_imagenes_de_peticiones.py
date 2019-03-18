# -*- coding: utf-8 -*-
"""
imagenes a carpeta de peticiones,
"""
from glob import glob
import os
from shutil import copy2 as cp

folder="imagesbase"

if not os.path.exists(folder):
    os.mkdir(folder)
    print("Directory " , folder ,  " Created ")
else:    
    print("Directory " , folder ,  " already exists")

folderbase="../../"+folder

#peticiones 31 de enero
init=277
dest=306
ran1=range(init,dest+1)
#peticiones 7 de febrero
init=309
dest=338
ran2=range(init,dest+1)
rango=ran1+ran2

mainfolder=os.getcwd()
for x in rango:
    os.chdir(mainfolder)
    parhname = "peticion"+str(x)+"/results/"
    print ("Estoy en "+os.getcwd())
    
    if os.path.exists(parhname):
        os.chdir(parhname)
        print("Directory " , parhname ,  " changed ")
    else:    
        print("Directory " , folder ,  " does not exists")
    print ("Voy para "+parhname)
    images=set(glob("*.jpg")+glob("*.JPG"))   
    print (images)
    for im in images:
        origen=im
        destino=folderbase+"/peticion"+str(x)+"-"+im
        print(origen)
        print(destino)
        cp(origen,destino)
        







