data = load '/user/cloudera/hive-share/tables/' using PigStorage(',') AS (count:int, state:chararray);
data_all = group data all;
data_max = foreach data_all generate data.state MAX(data.count);
store data_max into 'pig-final/' using PigStorage(':');