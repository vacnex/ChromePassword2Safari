import argparse
parser = argparse.ArgumentParser()
parser.add_argument('filename')
args = parser.parse_args()

with open(args.filename) as f:
    lines = f.readlines()
nf = ""
lines.pop(0)
for i in lines:
    x = i.split(",", 2)
    del x[1]
    a = ','.join(x)
    nf += a
f = open("FormatCSV.CSV", "a")
f.write(nf)
f.close()
