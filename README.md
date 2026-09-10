# Modelagem de Dados — Clínica Veterinária

## Introdução

Este projeto apresenta a modelagem de dados de um sistema de gestão para uma Clínica Veterinária. O trabalho foi desenvolvido a partir do cenário proposto, passando pelo Modelo Conceitual (DER), Esquema Relacional, Dicionário de Dados e Script SQL (DDL).

## Modelo

O banco de dados contempla as entidades:

- Cliente
- Animal
- Veterinário
- Consulta

O relacionamento entre Cliente e Animal é 1:N: um cliente pode possuir vários animais, enquanto cada animal pertence a apenas um cliente.

O relacionamento entre Veterinário e Animal é N:N, representado pela entidade associativa Consulta: um veterinário pode realizar várias consultas e um animal pode possuir várias consultas ao longo do tempo.

## Arquivos

- `1_modelo_conceitual.pdf` — Diagrama Entidade-Relacionamento.
- `2_esquema_relacional.txt` — Esquema Relacional com PKs e FKs.
- `3_dicionario_dados.pdf` — Dicionário de Dados.
- `4_script_fisico.sql` — Script DDL para criação do banco.
- `README.md` — Documentação do projeto.

## Divisão das tarefas

- Integrante 1: levantamento de entidades, atributos e requisitos.
- Integrante 2: elaboração e revisão do DER.
- Integrante 3: conversão para o esquema relacional e elaboração do dicionário de dados.
- Integrante 4: elaboração/revisão do script SQL e documentação.

## Integrantes

Preencher com os nomes completos dos integrantes do grupo.

## Observações

O modelo segue os requisitos descritos no cenário fornecido. A tabela `Consulta` foi utilizada para representar o relacionamento N:N entre Veterinário e Animal. Como o cenário não especifica um identificador próprio para consulta, foi adotada uma chave composta para essa tabela.
