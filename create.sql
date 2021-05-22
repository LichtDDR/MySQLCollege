create table Marca (
    Cod_Marca integer,
    Nome_Marca VARCHAR(30),
    PRIMARY KEY(Cod_Marca));
create table Modelo (
    Cod_Modelo integer,
    Cod_Marca integer,
    Nome_Modelo VARCHAR(50),
    PRIMARY KEY(Cod_Modelo),
    Foreign key (Cod_Marca) References Marca (Cod_Marca));
create table Veiculo (
    Cod_Vei integer,
    Cod_Modelo integer,
    Placa_Vei VARCHAR(8),
    Disponibilidade VARCHAR(1),
    PRIMARY KEY(Cod_Vei),
    Foreign key (Cod_Modelo) References Modelo (Cod_Modelo));
create table Cliente (
    Cod_Cli integer,
    Nome_Cli VARCHAR(40),
    Renda_Cli integer,
    Idade integer,
    PRIMARY KEY(Cod_Cli));
create table Reserva (
    Cod_Reserva integer,
    Cod_Vei integer,
    Cod_Cli integer,
    Dt_retirada DATE,
    Dt_devolucao DATE,
    Dt_reserva DATE,
    Valor integer,
    PRIMARY KEY(Cod_Reserva),
    Foreign key (Cod_Vei) References Veiculo (Cod_Vei),
    Foreign key (Cod_Cli) References Cliente (Cod_Cli));
