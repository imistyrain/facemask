#!/bin/bash
#set pretrainmodel=yolo-ibm_40000.weights
set pretrainmodel=darknet19_448.conv.23
../darknet detector train  ibm.data yolo-ibm.cfg ../ $pretrainmodel -gpus 2
