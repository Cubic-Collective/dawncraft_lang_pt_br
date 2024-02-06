import os

def get_files_in_folder(folder_path):
    # Get a list of file names in the specified folder
    file_names = os.listdir(folder_path)
    return file_names

def compare_folders(folder1, folder2):
    files_folder1 = get_files_in_folder(folder1)
    files_folder2 = get_files_in_folder(folder2)

    common_files = set(files_folder1) & set(files_folder2)
    unique_files_folder1 = set(files_folder1) - common_files
    unique_files_folder2 = set(files_folder2) - common_files

    return common_files, unique_files_folder1, unique_files_folder2

folder1_path = r""
folder2_path = r""

common_files, unique_files_folder1, unique_files_folder2 = compare_folders(
    folder1_path, folder2_path
)

unique_files_folder1 = sorted(unique_files_folder1)
unique_files_folder2 = sorted(unique_files_folder2)

print("\nUnique files in folder1:")
for filename in unique_files_folder1:
    print(filename)

print("\nUnique files in folder2:")
for filename in unique_files_folder2:
    print(filename)
