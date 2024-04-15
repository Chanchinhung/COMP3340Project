files = ['output/inception_v3/inception_v3_flowers_bs4_lr0.1/20240404_001541.log.json',
'output/inception_v3/inception_v3_flowers_bs4_lr0.01/20240404_031245.log.json',
'output/inception_v3/inception_v3_flowers_bs4_lr0.001/20240404_051123.log.json',
'output/inception_v3/inception_v3_flowers_bs4_lr0.0001/20240404_070948.log.json']

for file_path in files:
    with open(file_path, "r") as file:
        lines = file.readlines()
    print(f"Opened {file_path}")
    # Filter out lines containing "train"
    filtered_lines = [line for line in lines if "train" not in line]

    # Write the filtered lines back to the file
    with open(file_path, "w") as file:
        file.writelines(filtered_lines)
    print(f"deleted train in {file_path}")

print("Lines with 'train' removed from the file:", file_path)