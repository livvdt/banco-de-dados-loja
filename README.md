# Projeto: Banco de Dados para Sistema de Loja

## Descrição

Desenvolvi um banco de dados para um sistema de "Loja" utilizando SQL, implementando uma estrutura relacional completa para gestão de clientes, produtos e controle financeiro.

## Estrutura do Banco de Dados

### **Tabelas Principais**
- **Cliente** - Cadastro completo com dados pessoais e endereço
- **Estado** - Controle de unidades federativas
- **Município** - Gestão de municípios com relacionamento com estados
- **Contas a Receber** - Controle financeiro das contas a receber

## ⚙️ Funcionalidades Técnicas

### **Controle Financeiro**
- Sistema de status de pagamentos via **ENUM**
- Estados: **Registrada (1) / Cancelada (2) / Paga (3)**
- Validação automática de estados válidos

### **Relacionamentos e Integridade**
- **Chaves estrangeiras** para integridade referencial
- **Auto incremento** nas chaves primárias
- Relacionamentos entre tabelas garantindo consistência

### **Regras de Negócio**
- Implementação via **CONSTRAINT**
- Validações personalizadas
- Restrições de integridade dos dados

## 🛠️ Tecnologias Utilizadas
- **MySQL Server**
- **SQL** (DDL e DML)
- **MySQL Workbench**

## 🎯 Objetivos Alcançados
✅ Modelagem relacional eficiente  
✅ Controle completo do fluxo de vendas  
✅ Gestão financeira integrada  
✅ Estrutura escalável para expansões
