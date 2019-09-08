#!/bin/bash
hdfs dfs -mkdir /data/ncvr
hdfs dfs -mkdir /data/ncvr/2014
hdfs dfs -mkdir /data/ncvr/2017
hadoop fs -put /data/ncvr/VR_Snapshot_20141104.txt hdfs://$HOSTNAME:9000/data/ncvr/2014/data.txt
hadoop fs -put /data/ncvr/VR_Snapshot_20171107.txt hdfs://$HOSTNAME:9000/data/ncvr/2017/data.txt
date