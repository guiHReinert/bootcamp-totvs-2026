entrada = input()

# Extract
nomes = entrada.split(",")

# Transform
nomes_transformados = [nome.strip().upper() for nome in nomes]

# Load
print("; ".join(nomes_transformados))