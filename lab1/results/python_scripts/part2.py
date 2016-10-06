import os
import re

def generate_names():
    names = []

    for file in os.listdir("/home/e56wong/part2-baseball/part2-baseballDB/csv"):
        if file.endswith(".csv"):
            names.append(file.split('.')[0])

    return names

def generate_sql_part_2(names, f):
    for name in names: 
        sql_string = []
        sql_string.append("DELETE FROM %s;" % name)
        sql_string.append("LOAD DATA LOCAL INFILE '%s.csv'" % name)
        sql_string.append("INTO TABLE %s" % name)
        sql_string.append("CHARACTER SET 'UTF8'")
        sql_string.append("FIELDS TERMINATED BY ',' ")
        sql_string.append("ENCLOSED BY '\"'")
        sql_string.append("LINES TERMINATED BY '\\n'")
        sql_string.append("IGNORE 1 LINES ; ")
        sql_string.append("\n")

        for sql in sql_string:
            f.write(sql)
            f.write('\n')

def test_different_buffer_values():
    names = generate_names()

    values_mb = [1, 8, 10, 100, 1000]
    #values_mb = [8]
    for value in values_mb:
        filename = "/home/e56wong/part2-baseball/part2-baseballDB/csv/buffer_value_%s.sql" % value
        adjusted_value = value * 1024 * 1024
        f = open(filename,'w')

        string = "SET bulk_insert_buffer_size = %s;" % adjusted_value
        f.write(string)
        f.write('\n')
        generate_sql_part_2(names, f)

        f.close()

        print "successfully written to %s" % filename

test_different_buffer_values()
