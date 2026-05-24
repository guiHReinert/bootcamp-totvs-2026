linha = input().strip()

# Extract
partes = linha.split(",")
produto = partes[0]
quantidade = int(partes[1])
valor_unitario = int(partes[2])

# Transform
total = quantidade * valor_unitario

# Load
print(f"{produto}: {total}")