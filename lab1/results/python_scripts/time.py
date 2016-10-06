import os
import re

def find_text_files(directory):
    files = []

    for file in os.listdir(directory):
        if file.endswith(".txt"):
            names.append(file)

    return names

def extract_times(output_file):
    filenames = find_text_files()

    f = open(output_file,'w')
    for file in filenames:
        f.write("%s: %s") % (file, record_time(file))

    f.close()



# returns total time in seconds
def record_time(filename):
    log_file = open(filename, "rb")
    total_time = 0

    with open(filename) as f:
        content = f.readlines()

    for line in content:
        line = log_file.readline()
        duration = re.search(r"([0-9]+\.[0-9]{2}\s)", line)
        if duration is not None:
            total_time += float(duration.group(1))

    return str(total_time)

extract_times("/home/e56wong/part2-baseball/part2-baseballDB/results", "aggregate_results.txt")
