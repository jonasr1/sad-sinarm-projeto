# Projeto SAD – Integração e Análise de Dados do SINARM

Este repositório contém a estrutura completa de processamento, integração, organização, modelagem analítica e visualização de dados utilizada para o projeto **SAD (Sistema de Análise de Dados)** baseado em informações do **SINARM**.

O objetivo é fornecer um ambiente organizado para:

- Padronizar processos de ETL/ELT
- Implementar regras de negócio
- Construir áreas de *staging* e *data warehouse*
- Criar um modelo analítico (OLAP)
- Disponibilizar visualizações e indicadores em Power BI

---

## Contextualização

O projeto utiliza registros de portes de arma emitidos no Brasil para criar uma base analítica que permita explorar padrões históricos, operacionais e geográficos do SINARM, oferecendo suporte à tomada de decisão e análises estratégicas.

---

## Escopo/objetivo do Data Mart

O objetivo principal do Data Mart é suportar a análise gerencial e estratégica de informações relacionadas à emissão, vencimento e cancelamento de portes de arma, permitindo identificar padrões de comportamento e tendências temporais e geográficas. O período de tempo efetivo que foi utilizado, é de 2004 à 2023. Respondendo perguntas como:

- Quantos portes foram concedidos em cada ano?
- Quais estados tiveram o maior número de portes de armas concedidos?
- Quais tipos de porte (caçador de subsistência, defesa pessoal, funcional etc.) são mais comuns?
- Qual é a distribuição de concessões por gênero?
- Como evoluiu o número de portes por tipo de permissão(funcional, defesa pessoal etc.) ao longo dos anos?
- Como estão distribuídos os pedidos por abrangência (ex.: estadual, nacional) e status (ativo, cancelado, vencido)?

---

## 🛠️ Tecnologias Utilizadas

- **PostgreSQL 17** – Armazenamento dos dados, staging e DW.
- **Pentaho PDI 8.3 (Kettle)** – Processos de ETL.
- **Power BI Desktop** – Dashboards e análises.
- **Dados Abertos PF (SINARM)** – Fonte primária de dados.
- **DBeaver** – Modelagem, administração e criação do schema.

---

## 🏗️ Arquitetura Tecnológica

<p align="center">
  <img width="600" height="240" alt="image" src="https://github.com/user-attachments/assets/f4a75e41-fcec-45c9-8590-2f960ad758e9" />
</p>
O projeto foca na análise histórica dos portes de arma de fogo emitidos no Brasil (2004–2023), utilizando dados públicos do SINARM para construir indicadores estratégicos, modelos analíticos e dashboards gerenciais.

---

## 🔄 Fluxo Geral do Projeto

1. **Definição do Escopo e Objetivo**
2. **Identificação das Fontes de Dados**
3. **Definição da Abordagem Utilizada**
4. **Modelagem das Dimensões(tabela fato + dimensões)**
5. **Projeto Físico**
6. **ETL**
7. **OLAP**

## Modelo Dimensional

<p align="center">
  <img width="600" height="528" alt="image" src="https://github.com/user-attachments/assets/15ffa68f-7659-4bf2-92f9-ee42d5b079ba" />
</p>

## Dashboards

### Visão Geral

<p align="center">
  <img width="841" height="475" alt="image" src="https://github.com/user-attachments/assets/0df5f46f-74fe-45eb-92a1-452df22089cb" />
</p>

### Arma

<p align="center">
  <img width="844" height="481" alt="image" src="https://github.com/user-attachments/assets/46f0875b-7880-42c3-bc68-3162423ceecd" />
</p>

### Localização

<p align="center">
  <img width="834" height="481" alt="image" src="https://github.com/user-attachments/assets/2c268772-d182-48e7-9a04-d68aa5dee592" />
</p>

## 📄 Documentação Completa

Para visualizar a apresentação completa, [clique aqui](https://github.com/user-attachments/files/24108224/Documentacao-SAD.pdf) e faça o download.
