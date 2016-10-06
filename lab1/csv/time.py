import re
import os

def generate_files():
    names = []

    for file in os.listdir("."):
        if file.endswith(".txt"):
            names.append(file)

    names.sort()
    return names

def write_time_to_file():
    files = generate_files()

    result_file = open("results.txt", "w")
    for file in files:
        output_file = file + "_output.txt"
        time = compute_time(file, output_file)
        result_file.write(file + ": " + time + " s")
        result_file.write('\n\n')



def compute_time(input_file, output_file):
    total_time = 0
    output_file = open(output_file, "w")

    with open(input_file) as f:
        content = f.readlines()

    for line in content:
        duration = re.search(r"([0-9]+\.[0-9]{2}\s)", line)
        if duration is not None:
            output_file.write(duration.group(1))
            output_file.write('\n')
            total_time += float(duration.group(1))

    output_file.close()
    return str(total_time)


write_time_to_file()
