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


def test_buffer_values_part1():
    #values_mb = [0, 1, 8, 16, 32, 64, 128, 256, 512, 1024, 5000]

    values_mb = [0, 0.5, 1, 2, 5, 10, 50, 100, 500]

    filename = "execute_part1_all.sql"
    f = open(filename,'w')
    for value in values_mb:
        adjusted_value = value * 1024 * 1024
        set_buffer_string = "SET bulk_insert_buffer_size = %s;" % adjusted_value
        tee_string = "tee " + str(value) + "mb.txt;"

        f.write(set_buffer_string)
        f.write('\n')

        f.write(tee_string)
        f.write('\n')

        f.write("source lahman2014_beta.sql")

        f.write('\n')

    f.close()

def test_different_buffer_values():
    names = generate_names()

    values_mb = [0, 0.5, 1, 2, 5, 10, 50, 100, 500]
    for value in values_mb:
        filename = "/home/e56wong/part2-baseball/part2-baseballDB/csv/buffer_value_%s.sql" % value
        adjusted_value = value * 1024 * 1024
        f = open(filename,'w')

        set_buffer_string = "SET bulk_insert_buffer_size = %s;" % adjusted_value
        tee_string = "tee " + str(value) + "mb.txt;"

        f.write(set_buffer_string)
        f.write('\n')

        f.write(tee_string)
        f.write('\n')

        generate_sql_part_2(names, f)

        f.close()

        print "successfully written to %s" % filename

    execute_script = "/home/e56wong/part2-baseball/part2-baseballDB/csv/execute_all.sql"
    execute_file = open(execute_script, 'w')
    for value in values_mb:
       execute_file.write("source buffer_value_" + str(value) + ".sql;")
       execute_file.write('\n')

    execute_file.close()

    print "successfully written to %s" % execute_script

test_different_buffer_values()
#test_buffer_values_part1()
