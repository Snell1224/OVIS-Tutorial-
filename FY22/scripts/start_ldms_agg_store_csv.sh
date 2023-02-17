#!/bin/bash
 
TOP=/opt/ovis
export LD_LIBRARY_PATH=$TOP/lib64/:$LD_LIBRARY_PATH
export LDMSD_PLUGIN_LIBPATH=$TOP/lib64/ovis-ldms
export PATH=$TOP/sbin:$TOP/bin:$PATH
export ZAP_LIBPATH=$TOP/lib64/ovis-ldms
export PYTHONPATH=$TOP/lib/python3.6/site-packages/:$PYTHONPATH
 
 
ldmsd -x sock:20001 -l /home/user1/ldmscon2021/basic/exercises/ldms/logs/simple_agg_store_csv -c /home/user1/ldmscon2021/basic/exercises/ldms/conf/E5/agg_store_csv.conf
