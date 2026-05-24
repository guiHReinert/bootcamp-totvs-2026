CREATE TABLE IF NOT EXISTS usuarios(
	id INT,
	nome VARCHAR(255) NOT NULL,
	email VARCHAR(127) NOT NULL UNIQUE,
	endereco VARCHAR(63) NOT NULL,
	data_nascimento DATE NOT NULL
);

COMMENT ON COLUMN usuarios.nome IS 'Nome do usuário';
COMMENT ON COLUMN usuarios.email IS 'E-mail do usuário';
COMMENT ON COLUMN usuarios.endereco IS 'Endereço do usuário';
COMMENT ON COLUMN usuarios.data_nascimento IS 'Data de nascimento';

CREATE TABLE IF NOT EXISTS destinos(
	id INT,
	nome VARCHAR(255) NOT NULL,
	descricao VARCHAR(255) NOT NULL
);

COMMENT ON COLUMN destinos.nome IS 'Nome do destino';
COMMENT ON COLUMN destinos.descricao IS 'Decsrição da reserva';

CREATE TABLE IF NOT EXISTS reservas(
	id INT,
	id_usuario INT,
	id_destino INT,
	data DATE,
	status VARCHAR(255) DEFAULT 'pendente'
);

COMMENT ON COLUMN reservas.id IS 'ID único da reserva';
COMMENT ON COLUMN reservas.id_usuario IS 'Referência ao ID do usuário que fez a reserva';
COMMENT ON COLUMN reservas.id_destino IS 'Referência ao ID do destino da reserva';
COMMENT ON COLUMN reservas.data IS 'Data da reserva';
COMMENT ON COLUMN reservas.status IS 'Status da reserva: confirmada, pendente, cancelada, ...';

--SELECT COLUMN_NAME FROM information_schema.columns WHERE table_name = 'usuarios';
--SELECT COLUMN_NAME FROM information_schema.columns WHERE table_name = 'destinos';
SELECT COLUMN_NAME FROM information_schema.columns WHERE table_name = 'reservas';