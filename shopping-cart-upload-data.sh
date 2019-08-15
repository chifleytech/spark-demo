#!/bin/bash

hdfs dfs -mkdir /data/shopping-cart
hdfs dfs -mkdir /data/shopping-cart/amazon
hdfs dfs -mkdir /data/shopping-cart/google
hdfs dfs -mkdir /data/shopping-cart/expected
hadoop fs -put /root/data/shopping/Amazon.csv hdfs://master:9000/data/shopping-cart/amazon/Amazon.csv
hadoop fs -put /root/data/shopping/Google.csv hdfs://master:9000/data/shopping-cart/google/Google.csv
hadoop fs -put /root/data/shopping/Amazon_Google_perfectMapping.csv hdfs://master:9000/data/shopping-cart/expected/Expected.csv
date