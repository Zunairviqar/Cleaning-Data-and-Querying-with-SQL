import os

path = os.path.dirname(os.path.abspath(__file__))
path = os.path.dirname(os.getcwd())
path = path + "/data/raw"
full_path_in = os.path.join(path, 'report.csv')
dataset = open(full_path_in, 'r')

path = os.path.dirname(os.getcwd())
path = path + "/data/processed"
outfile = open(path + "/crimes_reported.csv", 'w')

dataset.readline()

for line in dataset:
    x = line.strip().replace('"', "").replace(' ', "").split(",")
    x = x[:10]
    y = ",".join(x)
    outfile.write(y + "\n")


