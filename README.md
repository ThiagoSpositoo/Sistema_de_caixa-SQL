# 📦 Sistema de Controle de Produtos (PL/SQL)

## 👨‍💻 Autores
- Thiago Sposito – RM561694  
- Murilo Macedo – RM566462  

---

## 📌 Descrição do Projeto

Este projeto consiste em um sistema simples de controle de estoque desenvolvido em **PL/SQL**, que permite simular a compra de produtos armazenados em um banco de dados Oracle.

O sistema realiza as seguintes operações:

- Consulta de produtos
- Verificação de estoque disponível
- Cálculo do valor total da compra
- Aplicação de desconto
- Atualização do estoque após a compra

---

## 🛠️ Tecnologias Utilizadas

- Oracle SQL Developer
- PL/SQL
- SQL

---

## 🗄️ Estrutura do Banco de Dados

### Tabela: `produtos`

| Campo       | Tipo            | Descrição                     |
|------------|----------------|------------------------------|
| id_produto | NUMBER(2)      | Identificador do produto (PK)|
| nome       | VARCHAR2(100)  | Nome do produto              |
| preco      | NUMBER(10,2)   | Preço do produto             |
| quantidade | NUMBER(8,2)    | Quantidade em estoque        |

---

## 📥 Dados Iniciais

O sistema já inicia com os seguintes produtos cadastrados:

- Computador – R$ 5000
- Notebook – R$ 3000
- Mouse – R$ 400
- Teclado – R$ 500
- Monitor – R$ 2000

---

## ⚙️ Funcionamento do Sistema

O sistema solicita ao usuário:

- ID do produto
- Quantidade desejada para compra

### 🔍 Regras de Negócio

- Se o produto não existir → exibe mensagem de erro
- Se a quantidade solicitada for maior que o estoque → bloqueia a compra
- Se a compra for válida:
  - Atualiza o estoque
  - Calcula o valor total
  - Aplica **10% de desconto** para compras com mais de 5 unidades

---

## 💡 Lógica do Processo

1. Recebe o ID do produto e quantidade
2. Busca os dados do produto no banco
3. Valida se o produto existe
4. Verifica disponibilidade em estoque
5. Calcula o valor total da compra
6. Aplica desconto (se aplicável)
7. Atualiza o estoque
8. Exibe o resumo da compra

---

## 🖥️ Exemplo de Saída

Compra realizada com sucesso!
<br>Produto comprado: notebook
<br>Valor total da compra: 16200
<br>Quantidade de produtos comprados: 6

---

## 🚀 Como Executar

1. Abrir o Oracle SQL Developer
2. Executar o script completo
3. Inserir:
   - ID do produto
   - Quantidade desejada
4. Ver o resultado no `DBMS_OUTPUT`

---

## 📌 Observações Importantes

- O `SET SERVEROUTPUT ON` deve estar ativado para visualizar as saídas
- O comando `COMMIT` é utilizado para salvar os dados no banco
- O script recria a tabela sempre que executado

---

## 📈 Objetivo Acadêmico

Este projeto tem como objetivo praticar:

- Manipulação de dados com SQL
- Estruturas condicionais em PL/SQL
- Uso de variáveis e tipos ancorados (`%TYPE`)
- Controle de fluxo
- Atualização de dados no banco
