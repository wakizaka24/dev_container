mysql --user=root --password=root --local-infile docker_db -e "LOAD DATA LOCAL INFILE '/docker-entrypoint-initdb.d/1_3_test1_table_import.csv' INTO TABLE TEST1_TABLE FIELDS TERMINATED BY ',' ENCLOSED BY '\"' LINES TERMINATED BY '\n'"