select c.nome_razao, c.endereco,c.nu_endereco,c.telefone1,c.telefone2,c.rg,c.cpf_cnpj,c.cnh,v.marca_veiculo,v.cor_veiculo,
v.placa,v.descricao,v.chassis,v.fl_tipo_veiculo,b.nome,l.data_abertura,l.data_retorno,c.id_cliente,v.id_veiculo,
l.obs,l.id_locacao,l.vl_diaria,l.vl_total
from tb_locacao as l
left join tb_clientes as c on l.cliente_id = c.id_cliente
left join tb_bairros as b on c.bairro_id = b.id_bairro
left join tb_veiculos as v on l.veiculo_id = v.id_veiculo
