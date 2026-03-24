-- Thiago Sposito : RM561694
-- Murilo Macedo : RM566462

set serveroutput on
set verify off

drop table produtos cascade constraints;

create table produtos(
    id_produto number(2)primary key,
    nome varchar2(100),
    preco number(10,2),
    quantidade number(8,2)
    );
    
    insert into produtos values(1,'computador',5000,300);
    insert into produtos values(2,'notebook',3000,200);
    insert into produtos values(3,'mouse',400,400);
    insert into produtos values(4,'teclado',500,400);
    insert into produtos values(5,'monitor',2000,150);
    commit;
    
declare
    v_id_produto number(2):= &id_produto;
    v_qtd_compra number(8,2) := &qtd_compra;
    
    v_nome produtos.nome%type;
    v_preco produtos.preco%type;
    v_quantidade produtos.quantidade%type;
    
    v_total number;
    begin
    
        select nome, preco, quantidade
        into v_nome, v_preco, v_quantidade
        from produtos where v_id_produto = id_produto;
        
        if v_id_produto > 5 then
            dbms_output.put_line('Produto não encontrado');
        else
            if (v_qtd_compra > v_quantidade) then
                dbms_output.put_line('Quantidade maior que o nosso estoque!');
            elsif (v_qtd_compra <= v_quantidade) then
                dbms_output.put_line('Compra realizada com sucesso!');
                    if v_qtd_compra > 5 then
                        v_total := v_preco * v_qtd_compra;
                        v_total := v_total * 0.9; 
                    end if;
                update produtos set quantidade = (v_quantidade - v_qtd_compra) where id_produto = v_id_produto; 
            end if;
        end if;
        
        dbms_output.put_line('Produto comprado: ' || v_nome);
        dbms_output.put_line('Valor total da compra: ' || v_total);
        dbms_output.put_line('Quantidade de produtos comprados: ' || v_qtd_compra);
    end;
    select * from produtos