import json

# Ler os arquivos JSON pt_br e en_us
with open('pt_br.json', 'r', encoding='utf-8') as pt_br_file:
    pt_br_data = json.load(pt_br_file)

with open('en_us.json', 'r', encoding='utf-8') as en_us_file:
    en_us_data = json.load(en_us_file)

# Criar um dicionário para o arquivo de saída
output_data = en_us_data

# Iterar sobre as chaves em pt_br e atualizar o dicionário de saída, se a chave existir em en_us
for key, value in pt_br_data.items():
    if key in output_data:
        output_data[key] = value

# Escrever o arquivo de saída
with open('output.json', 'w', encoding='utf-8') as output_file:
    json.dump(output_data, output_file, indent=4, ensure_ascii=False)

print("O arquivo 'output.json' foi criado com as substituições.")
