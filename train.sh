#!/bin/bash
iter=65000
resume=1
modelname=ibm
if [ $resume = 1 ]; then
pretrainmodel=yolo-"$modelname"_$iter.weights
backupPath=backup
else
pretrainmodel=darknet19_448.conv.23
backupPath=..
if [ ! -d "backup" ]; then 
	mkdir "backup"
fi
fi
../darknet detector train $modelname.data yolo-$modelname.cfg $backupPath/$pretrainmodel -gpus 1,2
