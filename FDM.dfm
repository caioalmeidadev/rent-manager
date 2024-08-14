object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 292
  Width = 525
  object Conn: TFDConnection
    Params.Strings = (
      'Database=rent'
      'User_Name=root'
      'Password=masterkey'
      'Server=localhost'
      'Compress=False'
      'DriverID=MySQL')
    LoginPrompt = False
    BeforeConnect = ConnBeforeConnect
    Left = 32
    Top = 32
  end
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'D:\Projetos\rent-manager\Win32\Debug\libmysql.dll'
    Left = 32
    Top = 80
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 32
    Top = 128
  end
  object qrEmpresa: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from tb_empresa limit 1')
    Left = 184
    Top = 152
    object qrEmpresaid_empresa: TFDAutoIncField
      FieldName = 'id_empresa'
      Origin = 'id_empresa'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrEmpresarazao_social: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'razao_social'
      Origin = 'razao_social'
      Size = 120
    end
    object qrEmpresanome_fantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 80
    end
    object qrEmpresacnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cnpj'
      Origin = 'cnpj'
      Size = 14
    end
    object qrEmpresains_est: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ins_est'
      Origin = 'ins_est'
      Size = 14
    end
    object qrEmpresaendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 160
    end
    object qrEmpresanu_endereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nu_endereco'
      Origin = 'nu_endereco'
      Size = 8
    end
    object qrEmpresabairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 80
    end
    object qrEmpresacep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      Size = 8
    end
    object qrEmpresatelefone1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone1'
      Origin = 'telefone1'
      Size = 12
    end
    object qrEmpresatelefone2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'telefone2'
      Origin = 'telefone2'
      Size = 12
    end
    object qrEmpresamunicipio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'municipio'
      Origin = 'municipio'
      Size = 80
    end
    object qrEmpresaestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 2
    end
  end
  object dsEmpresa: TDataSource
    DataSet = qrEmpresa
    Left = 216
    Top = 152
  end
  object qrUsuario: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from tb_usuarios where login like :USUARIO')
    Left = 184
    Top = 200
    ParamData = <
      item
        Name = 'USUARIO'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object qrUsuarioid_usuario: TFDAutoIncField
      FieldName = 'id_usuario'
      Origin = 'id_usuario'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrUsuarionome_usuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_usuario'
      Origin = 'nome_usuario'
      Size = 45
    end
    object qrUsuariologin: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'login'
      Origin = 'login'
      Size = 45
    end
    object qrUsuariosenha: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'senha'
      Origin = 'senha'
      Size = 50
    end
    object qrUsuarioacesso_id: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'acesso_id'
      Origin = 'acesso_id'
    end
    object qrUsuarioempresa_id: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'empresa_id'
      Origin = 'empresa_id'
      Size = 6
    end
  end
  object qrUsuarioAcesso: TFDQuery
    MasterSource = dsUsuario
    MasterFields = 'acesso_id'
    Connection = Conn
    SQL.Strings = (
      'select * from tb_usuario_acesso where id_acesso = :acesso_id')
    Left = 248
    Top = 200
    ParamData = <
      item
        Name = 'ACESSO_ID'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object qrUsuarioAcessoid_acesso: TFDAutoIncField
      FieldName = 'id_acesso'
      Origin = 'id_acesso'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object qrUsuarioAcessonome_acesso: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_acesso'
      Origin = 'nome_acesso'
      Size = 50
    end
    object qrUsuarioAcessocad_usuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_usuario'
      Origin = 'cad_usuario'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessocad_veiculo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_veiculo'
      Origin = 'cad_veiculo'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessocad_cliente: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_cliente'
      Origin = 'cad_cliente'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessocad_bairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_bairro'
      Origin = 'cad_bairro'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessocad_municipio: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_municipio'
      Origin = 'cad_municipio'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessocad_estado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_estado'
      Origin = 'cad_estado'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessonova_locacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nova_locacao'
      Origin = 'nova_locacao'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessocancela_locacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cancela_locacao'
      Origin = 'cancela_locacao'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessofinaliza_locacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'finaliza_locacao'
      Origin = 'finaliza_locacao'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessorel_clientes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_clientes'
      Origin = 'rel_clientes'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessorel_recibo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_recibo'
      Origin = 'rel_recibo'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessorel_contrato: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_contrato'
      Origin = 'rel_contrato'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessoconfig: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'config'
      Origin = 'config'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessocad_empresa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_empresa'
      Origin = 'cad_empresa'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessocad_parametros: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_parametros'
      Origin = 'cad_parametros'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessocad_acesso_usuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cad_acesso_usuario'
      Origin = 'cad_acesso_usuario'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessorel_veiculos: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_veiculos'
      Origin = 'rel_veiculos'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessorel_locacoes: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rel_locacoes'
      Origin = 'rel_locacoes'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessodar_desconto_locacao: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'dar_desconto_locacao'
      Origin = 'dar_desconto_locacao'
      FixedChar = True
      Size = 1
    end
    object qrUsuarioAcessoprc_desconto_locacao: TBCDField
      AutoGenerateValue = arDefault
      FieldName = 'prc_desconto_locacao'
      Origin = 'prc_desconto_locacao'
      Precision = 10
      Size = 2
    end
    object qrUsuarioAcessoaltera_vl_diaria: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'altera_vl_diaria'
      Origin = 'altera_vl_diaria'
      FixedChar = True
      Size = 1
    end
  end
  object dsUsuario: TDataSource
    DataSet = qrUsuario
    Left = 216
    Top = 200
  end
  object qrParametros: TFDQuery
    Connection = Conn
    SQL.Strings = (
      'select * from tb_parametros where empresa_id = :ID_')
    Left = 192
    Top = 96
    ParamData = <
      item
        Name = 'ID_'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
  end
  object dsParametros: TDataSource
    DataSet = qrParametros
    Left = 232
    Top = 96
  end
  object frxDBDsEmpresa: TfrxDBDataset
    UserName = 'frxDBDsEmpresa'
    CloseDataSource = False
    DataSource = dsEmpresa
    BCDToCurrency = False
    Left = 256
    Top = 152
  end
  object frxDBDsParametros: TfrxDBDataset
    UserName = 'frxDBDsParametros'
    CloseDataSource = False
    DataSource = dsParametros
    BCDToCurrency = False
    Left = 280
    Top = 96
  end
  object qrTemp: TFDQuery
    Connection = Conn
    Left = 200
    Top = 48
  end
end
