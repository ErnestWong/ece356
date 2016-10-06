SET bulk_insert_buffer_size = 0;
tee 0mb.txt;
source lahman2014_beta.sql
SET bulk_insert_buffer_size = 524288.0;
tee 0.5mb.txt;
source lahman2014_beta.sql
SET bulk_insert_buffer_size = 1048576;
tee 1mb.txt;
source lahman2014_beta.sql
SET bulk_insert_buffer_size = 2097152;
tee 2mb.txt;
source lahman2014_beta.sql
SET bulk_insert_buffer_size = 5242880;
tee 5mb.txt;
source lahman2014_beta.sql
SET bulk_insert_buffer_size = 10485760;
tee 10mb.txt;
source lahman2014_beta.sql
SET bulk_insert_buffer_size = 52428800;
tee 50mb.txt;
source lahman2014_beta.sql
SET bulk_insert_buffer_size = 104857600;
tee 100mb.txt;
source lahman2014_beta.sql
SET bulk_insert_buffer_size = 524288000;
tee 500mb.txt;
source lahman2014_beta.sql
