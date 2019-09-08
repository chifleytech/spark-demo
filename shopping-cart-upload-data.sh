#!/bin/bash

hdfs dfs -mkdir /data/shopping-cart
hdfs dfs -mkdir /data/shopping-cart/amazon
hdfs dfs -mkdir /data/shopping-cart/google
hdfs dfs -mkdir /data/shopping-cart/expected
hadoop fs -put /data-init/shopping/Amazon.csv hdfs://localhost:9000/data/shopping-cart/amazon/Amazon.csv
hadoop fs -put /data-init/shopping/Google.csv hdfs://localhost:9000/data/shopping-cart/google/Google.csv
hadoop fs -put /data-init/shopping/Amazon_Google_perfectMapping.csv hdfs://localhost:9000/data/shopping-cart/expected/Expected.csv
date