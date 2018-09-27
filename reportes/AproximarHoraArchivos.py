#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Wed Sep 26 20:26:18 2018

@author: francisco
"""

import easygui
import os


def sumarUnaHora(HH):
    if HH=='01':
        HH='02'
    elif HH=='02':
        HH='03'
    elif HH=='03':
        HH='04'
    elif HH=='04':
        HH='05'
    elif HH=='05':
        HH='06'
    elif HH=='06':
        HH='07'
    elif HH=='07':
        HH='08'
    elif HH=='08':
        HH='09'
    elif HH=='09':
        HH='10'
    elif HH=='10':
        HH='11'
    elif HH=='11':
        HH='12'
    elif HH=='12':
        HH='13'
    elif HH=='13':
        HH='14'
    elif HH=='14':
        HH='15'
    elif HH=='15':
        HH='16'
    elif HH=='16':
        HH='17'
    elif HH=='17':
        HH='18'
    elif HH=='18':
        HH='19'
    elif HH=='19':
        HH='20'
    elif HH=='20':
        HH='21'
    elif HH=='21':
        HH='22'
    elif HH=='22':
        HH='23'
    elif HH=='23':
        HH='00'
    elif HH=='00':
        HH='01'
    return HH

path=easygui.fileopenbox(title="seleccione un archivo separado por comas",filetypes=["*.csv"])
data = open(path,'r')
filename, file_extension = os.path.splitext(path)
towrite=open(filename+'_HoraAprox'+file_extension,'w')


for line in data:
    lindata=line.split(',')
    if lindata[0]=="FECHA":
        print ('primera linea detectada')
        print(line)
        towrite.write(line)
    else:
        print("Siguiente Linea:")
        print("antes:")
        print (line)
        print("Despues:")
        fecha=lindata[6].split(':')
        HH=fecha[0]
        MM=int(fecha[1])
        SS=fecha[2]
        if (MM<7.5 and MM>=0):
            MM='00'
            
        elif (MM >= 52.5 and MM<=60):
            HH=sumarUnaHora(HH)
            MM='00'
                    
        elif MM<22.5 and MM>=7.5:
            MM='15'
        elif MM<37.5 and MM>=22.5:
            MM='30'
        elif MM<52.5 and MM>=37.5:
            MM='45'
        newlin=lindata[0]+','+lindata[1]+','+lindata[2]+','+lindata[3]+','+lindata[4]+','+lindata[5]+','+str(HH)+':'+str(MM)+','+lindata[7]+','+lindata[8]+','+lindata[9]+','+lindata[10]+','+lindata[11]+','+lindata[12]+','+lindata[13]+','+lindata[14]+','+lindata[15]+',\n'
        print (newlin)
        print(".")
        print("")
        towrite.write(newlin)
    
        
        
        
