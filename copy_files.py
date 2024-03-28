import os
import shutil

def copy_files_and_folders(source_dir, destination_dir, items):
    if not os.path.exists(destination_dir):
        os.makedirs(destination_dir)

    for item in items:
        item_path = os.path.join(source_dir, item)
        destination_path = os.path.join(destination_dir, item)
        print(item)

        if os.path.exists(destination_path):
            if os.path.isfile(destination_path):
                os.remove(destination_path)
            elif os.path.isdir(destination_path):
                shutil.rmtree(destination_path)

        if os.path.exists(item_path):
            if os.path.isfile(item_path):
                os.makedirs(os.path.dirname(destination_path), exist_ok=True)
                shutil.copy(item_path, destination_path)
            elif os.path.isdir(item_path):
                shutil.copytree(item_path, destination_path)
        else:
            print(f"Cannot copy {item_path}: item does not exist")

SOURCE_DIRECTORY = r''
destination_folder = os.path.dirname(os.path.abspath(__file__))

items_to_copy = [
    'config/drippyloadingscreen/image',
    'config/fancymenu/assets',
    'config/fancymenu/customization',
    'config/ftbquests/quests',
    # 'global_packs/required_data/DawnCraft_Datapack/data/ars_nouveau',
    'global_packs/required_data/DawnCraft_Datapack/data/brutalbosses',
    'global_packs/required_data/DawnCraft_Datapack/data/cataclysm',
    'global_packs/required_data/DawnCraft_Datapack/data/custom',
    'global_packs/required_data/DawnCraft_Datapack/data/dungeons_arise',
    'global_packs/required_data/DawnCraft_Datapack/data/idas',
    'global_packs/required_data/DawnCraft_Datapack/data/minecraft',
    'global_packs/required_data/DawnCraft_Datapack/data/quest_giver',
    'global_packs/required_data/DawnCraft_Datapack/pack.mcmeta',
    'global_packs/required_data/witch-raids-1-18-v-1-1'
]

copy_files_and_folders(SOURCE_DIRECTORY, destination_folder, items_to_copy)
