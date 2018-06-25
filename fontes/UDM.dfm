object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 443
  Width = 800
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\projeto tcc\bd\calorytcc.s3db'
      'OpenMode=ReadWrite'
      'LockingMode=Normal'
      'DriverID=SQLite')
    LoginPrompt = False
    Left = 40
    Top = 8
  end
  object FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink
    Left = 32
    Top = 64
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produto  where CodigoBarra = :parametro;')
    Left = 160
    Top = 136
    ParamData = <
      item
        Name = 'PARAMETRO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object FDQuery1codigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQuery1produto: TStringField
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 65
    end
    object FDQuery1descricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
    end
    object FDQuery1un: TStringField
      FieldName = 'un'
      Origin = 'un'
      Size = 4
    end
    object FDQuery1vrvenda: TFloatField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
    end
    object FDQuery1sigla: TStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 6
    end
    object FDQuery1grupo: TStringField
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 50
    end
    object FDQuery1CodigoBarra: TStringField
      FieldName = 'CodigoBarra'
      Origin = 'CodigoBarra'
      Required = True
      Size = 13
    end
    object FDQuery1vrpromocao: TFloatField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
    end
    object FDQuery1VRAVISTA: TFloatField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
    end
    object FDQuery1ativo: TStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object FDQDetalheProdCodBar: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produto where produto = :PDetalheProdCodBar;')
    Left = 160
    Top = 192
    ParamData = <
      item
        Name = 'PDETALHEPRODCODBAR'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
    object FDQDetalheProdCodBarcodigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQDetalheProdCodBarproduto: TStringField
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 65
    end
    object FDQDetalheProdCodBardescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
    end
    object FDQDetalheProdCodBarun: TStringField
      FieldName = 'un'
      Origin = 'un'
      Size = 4
    end
    object FDQDetalheProdCodBarvrvenda: TFloatField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
    end
    object FDQDetalheProdCodBarsigla: TStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 6
    end
    object FDQDetalheProdCodBargrupo: TStringField
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 50
    end
    object FDQDetalheProdCodBarCodigoBarra: TStringField
      FieldName = 'CodigoBarra'
      Origin = 'CodigoBarra'
      Required = True
      Size = 13
    end
    object FDQDetalheProdCodBarvrpromocao: TFloatField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
    end
    object FDQDetalheProdCodBarVRAVISTA: TFloatField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
    end
    object FDQDetalheProdCodBarativo: TStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object FDQFiltroCadCLi: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from cliente where id_cli like :PCodCadCli or nome_cli ' +
        'like :PNomeCadCli;')
    Left = 280
    Top = 8
    ParamData = <
      item
        Name = 'PCODCADCLI'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'PNOMECADCLI'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
    object FDQFiltroCadCLiid_cli: TIntegerField
      FieldName = 'id_cli'
      Origin = 'id_cli'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQFiltroCadCLitipo_cli: TStringField
      FieldName = 'tipo_cli'
      Origin = 'tipo_cli'
      FixedChar = True
      Size = 1
    end
    object FDQFiltroCadCLinome_cli: TStringField
      FieldName = 'nome_cli'
      Origin = 'nome_cli'
      Required = True
      Size = 60
    end
    object FDQFiltroCadCLicpf_cnpj_cli: TStringField
      FieldName = 'cpf_cnpj_cli'
      Origin = 'cpf_cnpj_cli'
    end
    object FDQFiltroCadCLirg_ie_cli: TStringField
      FieldName = 'rg_ie_cli'
      Origin = 'rg_ie_cli'
    end
    object FDQFiltroCadCLiapelido_cli: TStringField
      FieldName = 'apelido_cli'
      Origin = 'apelido_cli'
      Size = 15
    end
    object FDQFiltroCadCLifone_cli: TStringField
      FieldName = 'fone_cli'
      Origin = 'fone_cli'
      Size = 15
    end
    object FDQFiltroCadCLiendereco_cli: TStringField
      FieldName = 'endereco_cli'
      Origin = 'endereco_cli'
      Size = 50
    end
    object FDQFiltroCadCLinum_cli: TStringField
      FieldName = 'num_cli'
      Origin = 'num_cli'
      Size = 10
    end
    object FDQFiltroCadCLicomplemento_cli: TStringField
      FieldName = 'complemento_cli'
      Origin = 'complemento_cli'
      Size = 30
    end
    object FDQFiltroCadCLibairro_cli: TStringField
      FieldName = 'bairro_cli'
      Origin = 'bairro_cli'
      Size = 50
    end
    object FDQFiltroCadCLicep_cli: TStringField
      FieldName = 'cep_cli'
      Origin = 'cep_cli'
      Size = 15
    end
    object FDQFiltroCadCLicidade_cli: TStringField
      FieldName = 'cidade_cli'
      Origin = 'cidade_cli'
      Size = 30
    end
    object FDQFiltroCadCLiuf_cli: TStringField
      FieldName = 'uf_cli'
      Origin = 'uf_cli'
      FixedChar = True
      Size = 2
    end
    object FDQFiltroCadCLiemail_cli: TStringField
      FieldName = 'email_cli'
      Origin = 'email_cli'
      Size = 60
    end
    object FDQFiltroCadCLiliberaaprazo_cli: TStringField
      FieldName = 'liberaaprazo_cli'
      Origin = 'liberaaprazo_cli'
      FixedChar = True
      Size = 1
    end
    object FDQFiltroCadCLiobs_cli: TWideMemoField
      FieldName = 'obs_cli'
      Origin = 'obs_cli'
      BlobType = ftWideMemo
    end
    object FDQFiltroCadCLifoto_cli: TBlobField
      FieldName = 'foto_cli'
      Origin = 'foto_cli'
    end
    object FDQFiltroCadCLidata_cad_cli: TDateTimeField
      FieldName = 'data_cad_cli'
      Origin = 'data_cad_cli'
    end
  end
  object FDQMaxIdCli: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(id_cli) as max from cliente;')
    Left = 280
    Top = 64
    object FDQMaxIdClimax: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'max'
      Origin = 'max'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQCadCli: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cliente')
    Left = 280
    Top = 128
    object FDQCadCliid_cli: TIntegerField
      FieldName = 'id_cli'
      Origin = 'id_cli'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCadClitipo_cli: TStringField
      FieldName = 'tipo_cli'
      Origin = 'tipo_cli'
      FixedChar = True
      Size = 1
    end
    object FDQCadClinome_cli: TStringField
      FieldName = 'nome_cli'
      Origin = 'nome_cli'
      Required = True
      Size = 60
    end
    object FDQCadClicpf_cnpj_cli: TStringField
      FieldName = 'cpf_cnpj_cli'
      Origin = 'cpf_cnpj_cli'
    end
    object FDQCadClirg_ie_cli: TStringField
      FieldName = 'rg_ie_cli'
      Origin = 'rg_ie_cli'
    end
    object FDQCadCliapelido_cli: TStringField
      FieldName = 'apelido_cli'
      Origin = 'apelido_cli'
      Size = 15
    end
    object FDQCadClifone_cli: TStringField
      FieldName = 'fone_cli'
      Origin = 'fone_cli'
      Size = 15
    end
    object FDQCadCliendereco_cli: TStringField
      FieldName = 'endereco_cli'
      Origin = 'endereco_cli'
      Size = 50
    end
    object FDQCadClinum_cli: TStringField
      FieldName = 'num_cli'
      Origin = 'num_cli'
      Size = 10
    end
    object FDQCadClicomplemento_cli: TStringField
      FieldName = 'complemento_cli'
      Origin = 'complemento_cli'
      Size = 30
    end
    object FDQCadClibairro_cli: TStringField
      FieldName = 'bairro_cli'
      Origin = 'bairro_cli'
      Size = 50
    end
    object FDQCadClicep_cli: TStringField
      FieldName = 'cep_cli'
      Origin = 'cep_cli'
      Size = 15
    end
    object FDQCadClicidade_cli: TStringField
      FieldName = 'cidade_cli'
      Origin = 'cidade_cli'
      Size = 30
    end
    object FDQCadCliuf_cli: TStringField
      FieldName = 'uf_cli'
      Origin = 'uf_cli'
      FixedChar = True
      Size = 2
    end
    object FDQCadCliemail_cli: TStringField
      FieldName = 'email_cli'
      Origin = 'email_cli'
      Size = 60
    end
    object FDQCadCliliberaaprazo_cli: TStringField
      FieldName = 'liberaaprazo_cli'
      Origin = 'liberaaprazo_cli'
      FixedChar = True
      Size = 1
    end
    object FDQCadCliobs_cli: TWideMemoField
      FieldName = 'obs_cli'
      Origin = 'obs_cli'
      BlobType = ftWideMemo
    end
    object FDQCadClidata_cad_cli: TDateTimeField
      FieldName = 'data_cad_cli'
      Origin = 'data_cad_cli'
    end
    object FDQCadClifoto_cli: TBlobField
      FieldName = 'foto_cli'
      Origin = 'foto_cli'
    end
  end
  object FDQConsultaProd: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from produto where produto like :PNomeProd or codigo li' +
        'ke :PCodProd or CodigoBarra = :PCodBar;')
    Left = 160
    Top = 8
    ParamData = <
      item
        Name = 'PNOMEPROD'
        DataType = ftString
        ParamType = ptInput
        Size = 65
      end
      item
        Name = 'PCODPROD'
        DataType = ftString
        ParamType = ptInput
        Size = 15
      end
      item
        Name = 'PCODBAR'
        DataType = ftString
        ParamType = ptInput
        Size = 13
      end>
    object FDQConsultaProdcodigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQConsultaProdproduto: TStringField
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 65
    end
    object FDQConsultaProddescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
    end
    object FDQConsultaProdun: TStringField
      FieldName = 'un'
      Origin = 'un'
      Size = 4
    end
    object FDQConsultaProdvrvenda: TFloatField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
    end
    object FDQConsultaProdsigla: TStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 6
    end
    object FDQConsultaProdgrupo: TStringField
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 50
    end
    object FDQConsultaProdCodigoBarra: TStringField
      FieldName = 'CodigoBarra'
      Origin = 'CodigoBarra'
      Required = True
      Size = 13
    end
    object FDQConsultaProdvrpromocao: TFloatField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
    end
    object FDQConsultaProdVRAVISTA: TFloatField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
    end
    object FDQConsultaProdativo: TStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object FDQMaxIdProd: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(codigo) as maxIdProd from produto')
    Left = 160
    Top = 72
    object FDQMaxIdProdmaxIdProd: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'maxIdProd'
      Origin = 'maxIdProd'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
  object FDQCadProd: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produto;')
    Left = 160
    Top = 248
    object FDQCadProdcodigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQCadProdproduto: TStringField
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 65
    end
    object FDQCadProddescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
    end
    object FDQCadProdun: TStringField
      FieldName = 'un'
      Origin = 'un'
      Size = 4
    end
    object FDQCadProdvrvenda: TFloatField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
    end
    object FDQCadProdsigla: TStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 6
    end
    object FDQCadProdgrupo: TStringField
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 50
    end
    object FDQCadProdCodigoBarra: TStringField
      FieldName = 'CodigoBarra'
      Origin = 'CodigoBarra'
      Required = True
      Size = 13
    end
    object FDQCadProdvrpromocao: TFloatField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
    end
    object FDQCadProdVRAVISTA: TFloatField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
    end
    object FDQCadProdativo: TStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object FDQPedido: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      'p.id_pedido, '
      'p.datahora_pedido, '
      'p.valor_pedido, '
      'p.nrparcela_pedido, '
      'c.id_cli, '
      'c.nome_cli, '
      'c.cpf_cnpj_cli, '
      'c.foto_cli, '
      'fp.descricao_forma_pag, '
      'fp.condicional_forma_pag '
      'from pedido p '
      'inner join cliente c on (p.id_cli_pedido = c.id_cli) '
      
        'inner join forma_pag fp on (p.id_formapag_pedido = fp.id_forma_p' +
        'ag) '
      'where fp.condicional_forma_pag = :PFormaPag;')
    Left = 384
    Top = 8
    ParamData = <
      item
        Name = 'PFORMAPAG'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
    object FDQPedidoid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQPedidodatahora_pedido: TDateTimeField
      FieldName = 'datahora_pedido'
      Origin = 'datahora_pedido'
      Required = True
    end
    object FDQPedidovalor_pedido: TBCDField
      FieldName = 'valor_pedido'
      Origin = 'valor_pedido'
      Required = True
      Precision = 8
      Size = 2
    end
    object FDQPedidonrparcela_pedido: TIntegerField
      FieldName = 'nrparcela_pedido'
      Origin = 'nrparcela_pedido'
      Required = True
    end
    object FDQPedidoid_cli: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cli'
      Origin = 'id_cli'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPedidonome_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cli'
      Origin = 'nome_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQPedidocpf_cnpj_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cnpj_cli'
      Origin = 'cpf_cnpj_cli'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPedidofoto_cli: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto_cli'
      Origin = 'foto_cli'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQPedidodescricao_forma_pag: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'descricao_forma_pag'
      Origin = 'descricao_forma_pag'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQPedidocondicional_forma_pag: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'condicional_forma_pag'
      Origin = 'condicional_forma_pag'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object FDQMaxIdPedido: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(Id_pedido) as maxIdPedido from pedido;')
    Left = 384
    Top = 72
    object FDQMaxIdPedidomaxIdPedido: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'maxIdPedido'
      Origin = 'maxIdPedido'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQConsFormaPag: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from forma_pag where id_forma_pag like :PIdFormaPag;')
    Left = 488
    Top = 8
    ParamData = <
      item
        Name = 'PIDFORMAPAG'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object FDQConsFormaPagid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQConsFormaPagdescricao_forma_pag: TStringField
      FieldName = 'descricao_forma_pag'
      Origin = 'descricao_forma_pag'
      Required = True
      Size = 30
    end
    object FDQConsFormaPaggeraconta_forma_pag: TStringField
      FieldName = 'geraconta_forma_pag'
      Origin = 'geraconta_forma_pag'
      FixedChar = True
      Size = 1
    end
    object FDQConsFormaPagavista_forma_pag: TStringField
      FieldName = 'avista_forma_pag'
      Origin = 'avista_forma_pag'
      FixedChar = True
      Size = 1
    end
    object FDQConsFormaPagcondicional_forma_pag: TStringField
      FieldName = 'condicional_forma_pag'
      Origin = 'condicional_forma_pag'
      FixedChar = True
      Size = 1
    end
  end
  object FDQCadFormaPag: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from forma_pag;')
    Left = 488
    Top = 72
    object FDQCadFormaPagid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQCadFormaPagdescricao_forma_pag: TStringField
      FieldName = 'descricao_forma_pag'
      Origin = 'descricao_forma_pag'
      Required = True
      Size = 30
    end
    object FDQCadFormaPaggeraconta_forma_pag: TStringField
      FieldName = 'geraconta_forma_pag'
      Origin = 'geraconta_forma_pag'
      FixedChar = True
      Size = 1
    end
    object FDQCadFormaPagavista_forma_pag: TStringField
      FieldName = 'avista_forma_pag'
      Origin = 'avista_forma_pag'
      FixedChar = True
      Size = 1
    end
    object FDQCadFormaPagcondicional_forma_pag: TStringField
      FieldName = 'condicional_forma_pag'
      Origin = 'condicional_forma_pag'
      FixedChar = True
      Size = 1
    end
  end
  object FDQProdItemPedido: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from produto')
    Left = 160
    Top = 312
    object FDQProdItemPedidocodigo: TStringField
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 30
    end
    object FDQProdItemPedidoproduto: TStringField
      FieldName = 'produto'
      Origin = 'produto'
      Required = True
      Size = 65
    end
    object FDQProdItemPedidodescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
    end
    object FDQProdItemPedidoun: TStringField
      FieldName = 'un'
      Origin = 'un'
      Size = 4
    end
    object FDQProdItemPedidovrvenda: TFloatField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
    end
    object FDQProdItemPedidosigla: TStringField
      FieldName = 'sigla'
      Origin = 'sigla'
      Size = 6
    end
    object FDQProdItemPedidogrupo: TStringField
      FieldName = 'grupo'
      Origin = 'grupo'
      Size = 50
    end
    object FDQProdItemPedidoCodigoBarra: TStringField
      FieldName = 'CodigoBarra'
      Origin = 'CodigoBarra'
      Required = True
      Size = 13
    end
    object FDQProdItemPedidovrpromocao: TFloatField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
    end
    object FDQProdItemPedidoVRAVISTA: TFloatField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
    end
    object FDQProdItemPedidoativo: TStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
end