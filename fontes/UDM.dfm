object DM: TDM
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 440
  Width = 1816
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
    object FDQuery1vrvenda: TBCDField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
      Precision = 9
      Size = 2
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
    object FDQuery1vrpromocao: TBCDField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
      Precision = 9
      Size = 2
    end
    object FDQuery1VRAVISTA: TBCDField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
      Precision = 9
      Size = 2
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
    object FDQDetalheProdCodBarvrvenda: TBCDField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
      Precision = 9
      Size = 2
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
    object FDQDetalheProdCodBarvrpromocao: TBCDField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
      Precision = 9
      Size = 2
    end
    object FDQDetalheProdCodBarVRAVISTA: TBCDField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
      Precision = 9
      Size = 2
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
        'like :PNomeCadCli order by nome_cli;')
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
    object FDQFiltroCadCLidata_cad_cli: TDateTimeField
      FieldName = 'data_cad_cli'
      Origin = 'data_cad_cli'
    end
    object FDQFiltroCadCLifoto_cli: TBlobField
      FieldName = 'foto_cli'
      Origin = 'foto_cli'
    end
  end
  object FDQCadCli: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from cliente')
    Left = 280
    Top = 144
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
    object FDQConsultaProdvrvenda: TBCDField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
      Precision = 9
      Size = 2
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
    object FDQConsultaProdvrpromocao: TBCDField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
      Precision = 9
      Size = 2
    end
    object FDQConsultaProdVRAVISTA: TBCDField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
      Precision = 9
      Size = 2
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
    object FDQCadProdvrvenda: TBCDField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
      Precision = 9
      Size = 2
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
    object FDQCadProdvrpromocao: TBCDField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
      Precision = 9
      Size = 2
    end
    object FDQCadProdVRAVISTA: TBCDField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
      Precision = 9
      Size = 2
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
      'p.id_cli_pedido, '
      'p.datahora_pedido, '
      'p.valor_pedido, '
      'p.descmoeda_pedido, '
      'p.descpercent_pedido, '
      'p.id_formapag_pedido, '
      'p.nrparcela_pedido, '
      'p.obs_pedido, '
      'p.status_pedido, '
      'c.id_cli, '
      'c.nome_cli, '
      'c.cpf_cnpj_cli, '
      'c.foto_cli, '
      'fp.id_forma_pag, '
      'fp.descricao_forma_pag, '
      'fp.condicional_forma_pag '
      'from pedido p '
      'inner join cliente c on (p.id_cli_pedido = c.id_cli) '
      
        'inner join forma_pag fp on (p.id_formapag_pedido = fp.id_forma_p' +
        'ag) '
      
        'where (fp.condicional_forma_pag = :PFormaPag and p.status_pedido' +
        ' = :PStatusPedCond) or p.status_pedido = :PStatusPedido;')
    Left = 368
    Top = 8
    ParamData = <
      item
        Name = 'PFORMAPAG'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'PSTATUSPEDCOND'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end
      item
        Name = 'PSTATUSPEDIDO'
        DataType = ftString
        ParamType = ptInput
        Size = 1
      end>
    object FDQPedidoid_pedido: TFDAutoIncField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQPedidoid_cli_pedido: TIntegerField
      FieldName = 'id_cli_pedido'
      Origin = 'id_cli_pedido'
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
      Precision = 9
      Size = 2
    end
    object FDQPedidodescmoeda_pedido: TBCDField
      FieldName = 'descmoeda_pedido'
      Origin = 'descmoeda_pedido'
      Precision = 9
      Size = 2
    end
    object FDQPedidodescpercent_pedido: TFloatField
      FieldName = 'descpercent_pedido'
      Origin = 'descpercent_pedido'
    end
    object FDQPedidoid_formapag_pedido: TIntegerField
      FieldName = 'id_formapag_pedido'
      Origin = 'id_formapag_pedido'
      Required = True
    end
    object FDQPedidonrparcela_pedido: TIntegerField
      FieldName = 'nrparcela_pedido'
      Origin = 'nrparcela_pedido'
      Required = True
    end
    object FDQPedidoobs_pedido: TWideMemoField
      FieldName = 'obs_pedido'
      Origin = 'obs_pedido'
      BlobType = ftWideMemo
    end
    object FDQPedidostatus_pedido: TStringField
      FieldName = 'status_pedido'
      Origin = 'status_pedido'
      Required = True
      FixedChar = True
      Size = 1
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
    object FDQPedidoid_forma_pag: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
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
    Left = 368
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
      
        'select * from forma_pag where id_forma_pag like :PIdFormaPag or ' +
        'descricao_forma_pag = :PDescricaoFormaPag;')
    Left = 584
    Top = 8
    ParamData = <
      item
        Name = 'PIDFORMAPAG'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'PDESCRICAOFORMAPAG'
        DataType = ftString
        ParamType = ptInput
        Size = 30
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
    Left = 584
    Top = 144
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
    object FDQProdItemPedidovrvenda: TBCDField
      FieldName = 'vrvenda'
      Origin = 'vrvenda'
      Precision = 9
      Size = 2
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
    object FDQProdItemPedidovrpromocao: TBCDField
      FieldName = 'vrpromocao'
      Origin = 'vrpromocao'
      Precision = 9
      Size = 2
    end
    object FDQProdItemPedidoVRAVISTA: TBCDField
      FieldName = 'VRAVISTA'
      Origin = 'VRAVISTA'
      Precision = 9
      Size = 2
    end
    object FDQProdItemPedidoativo: TStringField
      FieldName = 'ativo'
      Origin = 'ativo'
      FixedChar = True
      Size = 1
    end
  end
  object FDQConsAtendente: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from funcionario where id_funcionario like :PIdAtendent' +
        'e or usuario = :PUsuario;')
    Left = 688
    Top = 8
    ParamData = <
      item
        Name = 'PIDATENDENTE'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end
      item
        Name = 'PUSUARIO'
        DataType = ftString
        ParamType = ptInput
        Size = 10
      end>
    object FDQConsAtendenteid_funcionario: TIntegerField
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQConsAtendentenome_funcionario: TStringField
      FieldName = 'nome_funcionario'
      Origin = 'nome_funcionario'
      Required = True
      Size = 60
    end
    object FDQConsAtendentecpf: TStringField
      FieldName = 'cpf'
      Origin = 'cpf'
      Size = 14
    end
    object FDQConsAtendenteusuario: TStringField
      FieldName = 'usuario'
      Origin = 'usuario'
      Required = True
      Size = 10
    end
    object FDQConsAtendentesenha: TStringField
      FieldName = 'senha'
      Origin = 'senha'
      Required = True
      Size = 15
    end
  end
  object FDQCadPedido: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from pedido;')
    Left = 368
    Top = 144
    object FDQCadPedidoid_pedido: TFDAutoIncField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCadPedidoid_cli_pedido: TIntegerField
      FieldName = 'id_cli_pedido'
      Origin = 'id_cli_pedido'
    end
    object FDQCadPedidodatahora_pedido: TDateTimeField
      FieldName = 'datahora_pedido'
      Origin = 'datahora_pedido'
      Required = True
    end
    object FDQCadPedidovalor_pedido: TBCDField
      FieldName = 'valor_pedido'
      Origin = 'valor_pedido'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQCadPedidodescmoeda_pedido: TBCDField
      FieldName = 'descmoeda_pedido'
      Origin = 'descmoeda_pedido'
      Precision = 9
      Size = 2
    end
    object FDQCadPedidodescpercent_pedido: TFloatField
      FieldName = 'descpercent_pedido'
      Origin = 'descpercent_pedido'
    end
    object FDQCadPedidoid_formapag_pedido: TIntegerField
      FieldName = 'id_formapag_pedido'
      Origin = 'id_formapag_pedido'
      Required = True
    end
    object FDQCadPedidonrparcela_pedido: TIntegerField
      FieldName = 'nrparcela_pedido'
      Origin = 'nrparcela_pedido'
      Required = True
    end
    object FDQCadPedidoobs_pedido: TWideMemoField
      FieldName = 'obs_pedido'
      Origin = 'obs_pedido'
      BlobType = ftWideMemo
    end
    object FDQCadPedidostatus_pedido: TStringField
      FieldName = 'status_pedido'
      Origin = 'status_pedido'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object FDQConsItemPedido: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select '
      'ip.id_item_pedido, '
      'ip.id_pedido_item, '
      'ip.id_produto_item, '
      'ip.qte_item_pedido, '
      'ip.valor_item_pedido, '
      'ip.descmoeda_item_pedido, '
      'ip.descpercent_item_pedido, '
      'ip.id_atendente_item, '
      'p.codigo, '
      'p.produto, '
      'f.id_funcionario, '
      'f.usuario, '
      'ped.id_pedido '
      'from item_pedido ip '
      'inner join pedido ped on ip.id_pedido_item = ped.id_pedido '
      'inner join produto p on ip.id_produto_item = p.codigo '
      
        'inner join funcionario f on ip.id_atendente_item = f.id_funciona' +
        'rio '
      'where ip.id_pedido_item = :PIdPedido order by ip.id_item_pedido;')
    Left = 480
    Top = 8
    ParamData = <
      item
        Name = 'PIDPEDIDO'
        DataType = ftString
        ParamType = ptInput
        Size = 20
      end>
    object FDQConsItemPedidoid_item_pedido: TFDAutoIncField
      FieldName = 'id_item_pedido'
      Origin = 'id_item_pedido'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQConsItemPedidoid_pedido_item: TIntegerField
      FieldName = 'id_pedido_item'
      Origin = 'id_pedido_item'
      Required = True
    end
    object FDQConsItemPedidoid_produto_item: TIntegerField
      FieldName = 'id_produto_item'
      Origin = 'id_produto_item'
      Required = True
    end
    object FDQConsItemPedidoqte_item_pedido: TFloatField
      FieldName = 'qte_item_pedido'
      Origin = 'qte_item_pedido'
      Required = True
    end
    object FDQConsItemPedidovalor_item_pedido: TBCDField
      FieldName = 'valor_item_pedido'
      Origin = 'valor_item_pedido'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQConsItemPedidodescmoeda_item_pedido: TBCDField
      FieldName = 'descmoeda_item_pedido'
      Origin = 'descmoeda_item_pedido'
      Precision = 9
      Size = 2
    end
    object FDQConsItemPedidodescpercent_item_pedido: TBCDField
      FieldName = 'descpercent_item_pedido'
      Origin = 'descpercent_item_pedido'
      Precision = 9
      Size = 2
    end
    object FDQConsItemPedidoid_atendente_item: TIntegerField
      FieldName = 'id_atendente_item'
      Origin = 'id_atendente_item'
    end
    object FDQConsItemPedidocodigo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'codigo'
      Origin = 'codigo'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQConsItemPedidoproduto: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'produto'
      Origin = 'produto'
      ProviderFlags = []
      ReadOnly = True
      Size = 65
    end
    object FDQConsItemPedidoid_funcionario: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_funcionario'
      Origin = 'id_funcionario'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsItemPedidousuario: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'usuario'
      Origin = 'usuario'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQConsItemPedidoid_pedido: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQCadItemPedido: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from item_pedido;')
    Left = 480
    Top = 144
    object FDQCadItemPedidoid_item_pedido: TFDAutoIncField
      FieldName = 'id_item_pedido'
      Origin = 'id_item_pedido'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCadItemPedidoid_pedido_item: TIntegerField
      FieldName = 'id_pedido_item'
      Origin = 'id_pedido_item'
      Required = True
    end
    object FDQCadItemPedidoid_produto_item: TIntegerField
      FieldName = 'id_produto_item'
      Origin = 'id_produto_item'
      Required = True
    end
    object FDQCadItemPedidoqte_item_pedido: TFloatField
      FieldName = 'qte_item_pedido'
      Origin = 'qte_item_pedido'
      Required = True
    end
    object FDQCadItemPedidovalor_item_pedido: TBCDField
      FieldName = 'valor_item_pedido'
      Origin = 'valor_item_pedido'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQCadItemPedidodescmoeda_item_pedido: TBCDField
      FieldName = 'descmoeda_item_pedido'
      Origin = 'descmoeda_item_pedido'
      Precision = 9
      Size = 2
    end
    object FDQCadItemPedidodescpercent_item_pedido: TBCDField
      FieldName = 'descpercent_item_pedido'
      Origin = 'descpercent_item_pedido'
      Precision = 9
      Size = 2
    end
    object FDQCadItemPedidoid_atendente_item: TIntegerField
      FieldName = 'id_atendente_item'
      Origin = 'id_atendente_item'
    end
  end
  object FDQMaxIdItemPedido: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(id_item_pedido) as maxId from item_pedido;')
    Left = 480
    Top = 72
    object FDQMaxIdItemPedidomaxId: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'maxId'
      Origin = 'maxId'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQAuxiliar: TFDQuery
    Connection = FDConnection1
    Left = 40
    Top = 128
  end
  object FDQConsContasReceber: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from conta_receber cr '
      'inner join cliente cli on cr.id_cliente = cli.id_cli '
      
        'where cr.quitado = '#39'N'#39' and (cli.nome_cli like :PCLienteContasRec' +
        'eber1 and cr.data_venc between :PDataVencInicio and :PDataVencFi' +
        'nal '
      'or cli.nome_cli like :PCLienteContasReceber2) '
      'order by cli.nome_cli;')
    Left = 812
    Top = 8
    ParamData = <
      item
        Name = 'PCLIENTECONTASRECEBER1'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end
      item
        Name = 'PDATAVENCINICIO'
        DataType = ftDateTime
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'PDATAVENCFINAL'
        DataType = ftDateTime
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'PCLIENTECONTASRECEBER2'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
    object FDQConsContasReceberid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQConsContasReceberid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
    end
    object FDQConsContasReceberid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      Required = True
    end
    object FDQConsContasReceberid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
    end
    object FDQConsContasRecebervalor_documento: TBCDField
      FieldName = 'valor_documento'
      Origin = 'valor_documento'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQConsContasRecebervalor_juro: TBCDField
      FieldName = 'valor_juro'
      Origin = 'valor_juro'
      Precision = 9
      Size = 2
    end
    object FDQConsContasRecebervalor_desconto: TBCDField
      FieldName = 'valor_desconto'
      Origin = 'valor_desconto'
      Precision = 9
      Size = 2
    end
    object FDQConsContasRecebervalor_pago: TBCDField
      FieldName = 'valor_pago'
      Origin = 'valor_pago'
      Precision = 9
      Size = 2
    end
    object FDQConsContasRecebervalor_saldo: TBCDField
      FieldName = 'valor_saldo'
      Origin = 'valor_saldo'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQConsContasReceberdata_venc: TDateField
      FieldName = 'data_venc'
      Origin = 'data_venc'
      Required = True
    end
    object FDQConsContasReceberdata_cad: TDateField
      FieldName = 'data_cad'
      Origin = 'data_cad'
      Required = True
    end
    object FDQConsContasReceberdata_quitacao: TDateField
      FieldName = 'data_quitacao'
      Origin = 'data_quitacao'
    end
    object FDQConsContasReceberquitado: TStringField
      FieldName = 'quitado'
      Origin = 'quitado'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FDQConsContasReceberid_cli: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_cli'
      Origin = 'id_cli'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsContasRecebertipo_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_cli'
      Origin = 'tipo_cli'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object FDQConsContasRecebernome_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_cli'
      Origin = 'nome_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQConsContasRecebercpf_cnpj_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cnpj_cli'
      Origin = 'cpf_cnpj_cli'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsContasReceberrg_ie_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_ie_cli'
      Origin = 'rg_ie_cli'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsContasReceberapelido_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'apelido_cli'
      Origin = 'apelido_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQConsContasReceberfone_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone_cli'
      Origin = 'fone_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object FDQConsContasReceberendereco_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco_cli'
      Origin = 'endereco_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQConsContasRecebernum_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'num_cli'
      Origin = 'num_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQConsContasRecebercomplemento_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento_cli'
      Origin = 'complemento_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQConsContasReceberbairro_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro_cli'
      Origin = 'bairro_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQConsContasRecebercep_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep_cli'
      Origin = 'cep_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object FDQConsContasRecebercidade_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade_cli'
      Origin = 'cidade_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQConsContasReceberuf_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf_cli'
      Origin = 'uf_cli'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object FDQConsContasReceberemail_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email_cli'
      Origin = 'email_cli'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQConsContasReceberliberaaprazo_cli: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'liberaaprazo_cli'
      Origin = 'liberaaprazo_cli'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object FDQConsContasReceberobs_cli: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs_cli'
      Origin = 'obs_cli'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object FDQConsContasReceberdata_cad_cli: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'data_cad_cli'
      Origin = 'data_cad_cli'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsContasReceberfoto_cli: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'foto_cli'
      Origin = 'foto_cli'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsContasReceberstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
  end
  object FDQMaxIdContasReceber: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(id) as maxId from conta_receber')
    Left = 816
    Top = 80
    object FDQMaxIdContasRecebermaxId: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'maxId'
      Origin = 'maxId'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQCadContasReceber: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from conta_receber')
    Left = 816
    Top = 152
    object FDQCadContasReceberid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCadContasReceberid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
    end
    object FDQCadContasReceberid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      Required = True
    end
    object FDQCadContasReceberid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
    end
    object FDQCadContasRecebervalor_documento: TBCDField
      FieldName = 'valor_documento'
      Origin = 'valor_documento'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQCadContasRecebervalor_juro: TBCDField
      FieldName = 'valor_juro'
      Origin = 'valor_juro'
      Precision = 9
      Size = 2
    end
    object FDQCadContasRecebervalor_desconto: TBCDField
      FieldName = 'valor_desconto'
      Origin = 'valor_desconto'
      Precision = 9
      Size = 2
    end
    object FDQCadContasRecebervalor_pago: TBCDField
      FieldName = 'valor_pago'
      Origin = 'valor_pago'
      Precision = 9
      Size = 2
    end
    object FDQCadContasRecebervalor_saldo: TBCDField
      FieldName = 'valor_saldo'
      Origin = 'valor_saldo'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQCadContasReceberdata_venc: TDateField
      FieldName = 'data_venc'
      Origin = 'data_venc'
      Required = True
    end
    object FDQCadContasReceberdata_cad: TDateField
      FieldName = 'data_cad'
      Origin = 'data_cad'
      Required = True
    end
    object FDQCadContasReceberdata_quitacao: TDateField
      FieldName = 'data_quitacao'
      Origin = 'data_quitacao'
    end
    object FDQCadContasReceberquitado: TStringField
      FieldName = 'quitado'
      Origin = 'quitado'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object FDQCadBaixaContasReceber: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from baixa_conta_receber;')
    Left = 960
    Top = 152
    object FDQCadBaixaContasReceberid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCadBaixaContasReceberid_conta_receber: TIntegerField
      FieldName = 'id_conta_receber'
      Origin = 'id_conta_receber'
      Required = True
    end
    object FDQCadBaixaContasReceberdata: TDateTimeField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object FDQCadBaixaContasRecebervalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQCadBaixaContasReceberid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
      Required = True
    end
  end
  object FDQMaxIdBaixaContaReceber: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(id) as maxId from baixa_conta_receber;')
    Left = 960
    Top = 80
    object FDQMaxIdBaixaContaRecebermaxId: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'maxId'
      Origin = 'maxId'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQConsAvistaFormaPag: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from forma_pag where geraconta_forma_pag = '#39'S'#39' and avis' +
        'ta_forma_pag = '#39'S'#39';')
    Left = 584
    Top = 216
    object FDQConsAvistaFormaPagid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDQConsAvistaFormaPagdescricao_forma_pag: TStringField
      FieldName = 'descricao_forma_pag'
      Origin = 'descricao_forma_pag'
      Required = True
      Size = 30
    end
    object FDQConsAvistaFormaPaggeraconta_forma_pag: TStringField
      FieldName = 'geraconta_forma_pag'
      Origin = 'geraconta_forma_pag'
      FixedChar = True
      Size = 1
    end
    object FDQConsAvistaFormaPagavista_forma_pag: TStringField
      FieldName = 'avista_forma_pag'
      Origin = 'avista_forma_pag'
      FixedChar = True
      Size = 1
    end
    object FDQConsAvistaFormaPagcondicional_forma_pag: TStringField
      FieldName = 'condicional_forma_pag'
      Origin = 'condicional_forma_pag'
      FixedChar = True
      Size = 1
    end
  end
  object FDQConsContasReceberBaixa: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from conta_receber where id = :PIdContaReceber;')
    Left = 816
    Top = 224
    ParamData = <
      item
        Name = 'PIDCONTARECEBER'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
    object FDQConsContasReceberBaixaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQConsContasReceberBaixaid_pedido: TIntegerField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
    end
    object FDQConsContasReceberBaixaid_cliente: TIntegerField
      FieldName = 'id_cliente'
      Origin = 'id_cliente'
      Required = True
    end
    object FDQConsContasReceberBaixaid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
    end
    object FDQConsContasReceberBaixavalor_documento: TBCDField
      FieldName = 'valor_documento'
      Origin = 'valor_documento'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQConsContasReceberBaixavalor_juro: TBCDField
      FieldName = 'valor_juro'
      Origin = 'valor_juro'
      Precision = 9
      Size = 2
    end
    object FDQConsContasReceberBaixavalor_desconto: TBCDField
      FieldName = 'valor_desconto'
      Origin = 'valor_desconto'
      Precision = 9
      Size = 2
    end
    object FDQConsContasReceberBaixavalor_pago: TBCDField
      FieldName = 'valor_pago'
      Origin = 'valor_pago'
      Precision = 9
      Size = 2
    end
    object FDQConsContasReceberBaixavalor_saldo: TBCDField
      FieldName = 'valor_saldo'
      Origin = 'valor_saldo'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQConsContasReceberBaixadata_venc: TDateField
      FieldName = 'data_venc'
      Origin = 'data_venc'
      Required = True
    end
    object FDQConsContasReceberBaixadata_cad: TDateField
      FieldName = 'data_cad'
      Origin = 'data_cad'
      Required = True
    end
    object FDQConsContasReceberBaixadata_quitacao: TDateField
      FieldName = 'data_quitacao'
      Origin = 'data_quitacao'
    end
    object FDQConsContasReceberBaixaquitado: TStringField
      FieldName = 'quitado'
      Origin = 'quitado'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object FDQConsFornecedor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from fornecedor where id like :PIdForn or nome like :PN' +
        'omeForn order by nome;')
    Left = 1120
    Top = 16
    ParamData = <
      item
        Name = 'PIDFORN'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end
      item
        Name = 'PNOMEFORN'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
    object FDQConsFornecedorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQConsFornecedortipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      Origin = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object FDQConsFornecedornome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object FDQConsFornecedornome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 40
    end
    object FDQConsFornecedorcpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object FDQConsFornecedorrg_ie: TStringField
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
    end
    object FDQConsFornecedorfone: TStringField
      FieldName = 'fone'
      Origin = 'fone'
      Size = 10
    end
    object FDQConsFornecedorendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object FDQConsFornecedornumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object FDQConsFornecedorcomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 30
    end
    object FDQConsFornecedorbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDQConsFornecedorcep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 15
    end
    object FDQConsFornecedorcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object FDQConsFornecedoruf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object FDQConsFornecedoremail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object FDQConsFornecedorobs: TWideMemoField
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftWideMemo
    end
    object FDQConsFornecedorstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
    object FDQConsFornecedordata_cad: TDateField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
  end
  object FDQCadFornecedor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from fornecedor')
    Left = 1120
    Top = 152
    object FDQCadFornecedorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCadFornecedortipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      Origin = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object FDQCadFornecedornome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object FDQCadFornecedornome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 40
    end
    object FDQCadFornecedorcpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object FDQCadFornecedorrg_ie: TStringField
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
    end
    object FDQCadFornecedorfone: TStringField
      FieldName = 'fone'
      Origin = 'fone'
      Size = 10
    end
    object FDQCadFornecedorendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object FDQCadFornecedornumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object FDQCadFornecedorcomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 30
    end
    object FDQCadFornecedorbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDQCadFornecedorcep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 15
    end
    object FDQCadFornecedorcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object FDQCadFornecedoruf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object FDQCadFornecedoremail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object FDQCadFornecedorobs: TWideMemoField
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftWideMemo
    end
    object FDQCadFornecedorstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
    object FDQCadFornecedordata_cad: TDateField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
  end
  object FDQConsContaPagar: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from conta_pagar cp '
      'inner join fornecedor f on cp.id_fornecedor = f.id '
      
        'where cp.quitado = '#39'N'#39' and (f.nome_fantasia like :PFornContaPaga' +
        'r1 and cp.data_venc between :PDataVencInicio and :PDataVencFinal' +
        ' '
      'or f.nome_fantasia like :PFornContaPagar2) '
      'order by f.nome_fantasia'
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 1264
    Top = 16
    ParamData = <
      item
        Name = 'PFORNCONTAPAGAR1'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end
      item
        Name = 'PDATAVENCINICIO'
        DataType = ftDateTime
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'PDATAVENCFINAL'
        DataType = ftDateTime
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'PFORNCONTAPAGAR2'
        DataType = ftString
        ParamType = ptInput
        Size = 40
      end>
    object FDQConsContaPagarid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQConsContaPagarid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
    end
    object FDQConsContaPagarid_tipo_despesa: TIntegerField
      FieldName = 'id_tipo_despesa'
      Origin = 'id_tipo_despesa'
    end
    object FDQConsContaPagarn_doc: TStringField
      FieldName = 'n_doc'
      Origin = 'n_doc'
      Size = 30
    end
    object FDQConsContaPagarvalor_doc: TBCDField
      FieldName = 'valor_doc'
      Origin = 'valor_doc'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQConsContaPagarvalor_descmoeda: TBCDField
      FieldName = 'valor_descmoeda'
      Origin = 'valor_descmoeda'
      Precision = 9
      Size = 2
    end
    object FDQConsContaPagarvalor_acresc: TBCDField
      FieldName = 'valor_acresc'
      Origin = 'valor_acresc'
      Precision = 9
      Size = 2
    end
    object FDQConsContaPagarvalor_pago: TBCDField
      FieldName = 'valor_pago'
      Origin = 'valor_pago'
      Precision = 9
      Size = 2
    end
    object FDQConsContaPagarvalor_saldo: TBCDField
      FieldName = 'valor_saldo'
      Origin = 'valor_saldo'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQConsContaPagardata_cad: TDateTimeField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
    object FDQConsContaPagardata_venc: TDateField
      FieldName = 'data_venc'
      Origin = 'data_venc'
      Required = True
    end
    object FDQConsContaPagardata_quitacao: TDateTimeField
      FieldName = 'data_quitacao'
      Origin = 'data_quitacao'
    end
    object FDQConsContaPagarquitado: TStringField
      FieldName = 'quitado'
      Origin = 'quitado'
      FixedChar = True
      Size = 1
    end
    object FDQConsContaPagarid_1: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_1'
      Origin = 'id'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsContaPagartipo_pessoa: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'tipo_pessoa'
      Origin = 'tipo_pessoa'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object FDQConsContaPagarnome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQConsContaPagarnome_fantasia: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      ProviderFlags = []
      ReadOnly = True
      Size = 40
    end
    object FDQConsContaPagarcpf_cnpj: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object FDQConsContaPagarrg_ie: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
      ProviderFlags = []
      ReadOnly = True
    end
    object FDQConsContaPagarfone: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'fone'
      Origin = 'fone'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQConsContaPagarendereco: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'endereco'
      Origin = 'endereco'
      ProviderFlags = []
      ReadOnly = True
      Size = 50
    end
    object FDQConsContaPagarnumero: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'numero'
      Origin = 'numero'
      ProviderFlags = []
      ReadOnly = True
      Size = 10
    end
    object FDQConsContaPagarcomplemento: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'complemento'
      Origin = 'complemento'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQConsContaPagarbairro: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'bairro'
      Origin = 'bairro'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQConsContaPagarcep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      ProviderFlags = []
      ReadOnly = True
      Size = 15
    end
    object FDQConsContaPagarcidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      ProviderFlags = []
      ReadOnly = True
      Size = 30
    end
    object FDQConsContaPagaruf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'uf'
      Origin = 'uf'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 2
    end
    object FDQConsContaPagaremail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      ProviderFlags = []
      ReadOnly = True
      Size = 60
    end
    object FDQConsContaPagarobs: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'obs'
      Origin = 'obs'
      ProviderFlags = []
      ReadOnly = True
      BlobType = ftWideMemo
    end
    object FDQConsContaPagarstatus: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'status'
      Origin = 'status'
      ProviderFlags = []
      ReadOnly = True
      FixedChar = True
      Size = 1
    end
    object FDQConsContaPagardata_cad_1: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cad_1'
      Origin = 'data_cad'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQCadContaPagar: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from conta_pagar')
    Left = 1256
    Top = 152
    object FDQCadContaPagarid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCadContaPagarid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
    end
    object FDQCadContaPagarid_tipo_despesa: TIntegerField
      FieldName = 'id_tipo_despesa'
      Origin = 'id_tipo_despesa'
    end
    object FDQCadContaPagarn_doc: TStringField
      FieldName = 'n_doc'
      Origin = 'n_doc'
      Size = 30
    end
    object FDQCadContaPagarvalor_doc: TBCDField
      FieldName = 'valor_doc'
      Origin = 'valor_doc'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQCadContaPagarvalor_descmoeda: TBCDField
      FieldName = 'valor_descmoeda'
      Origin = 'valor_descmoeda'
      Precision = 9
      Size = 2
    end
    object FDQCadContaPagarvalor_acresc: TBCDField
      FieldName = 'valor_acresc'
      Origin = 'valor_acresc'
      Precision = 9
      Size = 2
    end
    object FDQCadContaPagarvalor_pago: TBCDField
      FieldName = 'valor_pago'
      Origin = 'valor_pago'
      Precision = 9
      Size = 2
    end
    object FDQCadContaPagarvalor_saldo: TBCDField
      FieldName = 'valor_saldo'
      Origin = 'valor_saldo'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQCadContaPagardata_cad: TDateTimeField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
    object FDQCadContaPagardata_venc: TDateField
      FieldName = 'data_venc'
      Origin = 'data_venc'
      Required = True
    end
    object FDQCadContaPagardata_quitacao: TDateTimeField
      FieldName = 'data_quitacao'
      Origin = 'data_quitacao'
    end
    object FDQCadContaPagarquitado: TStringField
      FieldName = 'quitado'
      Origin = 'quitado'
      FixedChar = True
      Size = 1
    end
  end
  object FDQMaxIdAgenda: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(id) from agendamento')
    Left = 1718
    Top = 104
    object FDQMaxIdAgendamaxid: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'max(id)'
      Origin = '"max(id)"'
      ProviderFlags = []
      ReadOnly = True
    end
  end
  object FDQConsValidAgenda: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from agendamento where status = '#39'A'#39' and data_agend = :P' +
        'DateAgend')
    Left = 1568
    Top = 232
    ParamData = <
      item
        Name = 'PDATEAGEND'
        DataType = ftDateTime
        ParamType = ptInput
        Size = 20
      end>
    object FDQConsValidAgendaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQConsValidAgendamensagem: TWideMemoField
      FieldName = 'mensagem'
      Origin = 'mensagem'
      BlobType = ftWideMemo
    end
    object FDQConsValidAgendadata_cad: TDateTimeField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
    object FDQConsValidAgendadata_agend: TDateTimeField
      FieldName = 'data_agend'
      Origin = 'data_agend'
    end
    object FDQConsValidAgendadata_resolv: TDateTimeField
      FieldName = 'data_resolv'
      Origin = 'data_resolv'
    end
    object FDQConsValidAgendastatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
  end
  object FDQCadAgenda: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from agendamento')
    Left = 1568
    Top = 176
    object FDQCadAgendaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCadAgendamensagem: TWideMemoField
      FieldName = 'mensagem'
      Origin = 'mensagem'
      BlobType = ftWideMemo
    end
    object FDQCadAgendadata_cad: TDateTimeField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
    object FDQCadAgendadata_agend: TDateTimeField
      FieldName = 'data_agend'
      Origin = 'data_agend'
    end
    object FDQCadAgendadata_resolv: TDateTimeField
      FieldName = 'data_resolv'
      Origin = 'data_resolv'
    end
    object FDQCadAgendastatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
  end
  object FDQConsAgenda: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      
        'select * from agendamento where status = '#39'A'#39' and data_agend betw' +
        'een :PDataVencInicio and :PDataVencFinal order by data_agend;')
    Left = 1568
    Top = 24
    ParamData = <
      item
        Name = 'PDATAVENCINICIO'
        DataType = ftDateTime
        ParamType = ptInput
        Size = 10
      end
      item
        Name = 'PDATAVENCFINAL'
        DataType = ftDateTime
        ParamType = ptInput
        Size = 10
      end>
    object FDQConsAgendaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQConsAgendamensagem: TWideMemoField
      FieldName = 'mensagem'
      Origin = 'mensagem'
      BlobType = ftWideMemo
    end
    object FDQConsAgendadata_cad: TDateTimeField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
    object FDQConsAgendadata_agend: TDateTimeField
      FieldName = 'data_agend'
      Origin = 'data_agend'
    end
    object FDQConsAgendadata_resolv: TDateTimeField
      FieldName = 'data_resolv'
      Origin = 'data_resolv'
    end
    object FDQConsAgendastatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
  end
  object FDQFornecedor: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from fornecedor')
    Left = 1112
    Top = 288
    object FDQFornecedorid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQFornecedortipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      Origin = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object FDQFornecedornome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object FDQFornecedornome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 40
    end
    object FDQFornecedorcpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object FDQFornecedorrg_ie: TStringField
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
    end
    object FDQFornecedorfone: TStringField
      FieldName = 'fone'
      Origin = 'fone'
      Size = 10
    end
    object FDQFornecedorendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object FDQFornecedornumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object FDQFornecedorcomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 30
    end
    object FDQFornecedorbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDQFornecedorcep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 15
    end
    object FDQFornecedorcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object FDQFornecedoruf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object FDQFornecedoremail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object FDQFornecedorobs: TWideMemoField
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftWideMemo
    end
    object FDQFornecedorstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
    object FDQFornecedordata_cad: TDateField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
  end
  object FDQConsDespesas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tipo_despesa')
    Left = 1726
    Top = 24
    object FDQConsDespesasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQConsDespesasdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
  end
  object FDQCadDespesas: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tipo_despesa')
    Left = 1710
    Top = 176
    object FDQCadDespesasid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQCadDespesasdescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
  end
  object FDQFornEditContaPagar: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from fornecedor where nome_fantasia = :PNomeFantasia')
    Left = 1120
    Top = 224
    ParamData = <
      item
        Name = 'PNOMEFANTASIA'
        DataType = ftString
        ParamType = ptInput
        Size = 60
      end>
    object FDQFornEditContaPagarid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQFornEditContaPagartipo_pessoa: TStringField
      FieldName = 'tipo_pessoa'
      Origin = 'tipo_pessoa'
      FixedChar = True
      Size = 1
    end
    object FDQFornEditContaPagarnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      Size = 60
    end
    object FDQFornEditContaPagarnome_fantasia: TStringField
      FieldName = 'nome_fantasia'
      Origin = 'nome_fantasia'
      Size = 40
    end
    object FDQFornEditContaPagarcpf_cnpj: TStringField
      FieldName = 'cpf_cnpj'
      Origin = 'cpf_cnpj'
      Size = 15
    end
    object FDQFornEditContaPagarrg_ie: TStringField
      FieldName = 'rg_ie'
      Origin = 'rg_ie'
    end
    object FDQFornEditContaPagarfone: TStringField
      FieldName = 'fone'
      Origin = 'fone'
      Size = 10
    end
    object FDQFornEditContaPagarendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Size = 50
    end
    object FDQFornEditContaPagarnumero: TStringField
      FieldName = 'numero'
      Origin = 'numero'
      Size = 10
    end
    object FDQFornEditContaPagarcomplemento: TStringField
      FieldName = 'complemento'
      Origin = 'complemento'
      Size = 30
    end
    object FDQFornEditContaPagarbairro: TStringField
      FieldName = 'bairro'
      Origin = 'bairro'
      Size = 30
    end
    object FDQFornEditContaPagarcep: TStringField
      FieldName = 'cep'
      Origin = 'cep'
      Size = 15
    end
    object FDQFornEditContaPagarcidade: TStringField
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 30
    end
    object FDQFornEditContaPagaruf: TStringField
      FieldName = 'uf'
      Origin = 'uf'
      FixedChar = True
      Size = 2
    end
    object FDQFornEditContaPagaremail: TStringField
      FieldName = 'email'
      Origin = 'email'
      Size = 60
    end
    object FDQFornEditContaPagarobs: TWideMemoField
      FieldName = 'obs'
      Origin = 'obs'
      BlobType = ftWideMemo
    end
    object FDQFornEditContaPagarstatus: TStringField
      FieldName = 'status'
      Origin = 'status'
      FixedChar = True
      Size = 1
    end
    object FDQFornEditContaPagardata_cad: TDateField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
  end
  object FDQDespesaEditContaPagar: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from tipo_despesa where descricao = :PDescricao;')
    Left = 1710
    Top = 248
    ParamData = <
      item
        Name = 'PDESCRICAO'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
    object FDQDespesaEditContaPagarid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object FDQDespesaEditContaPagardescricao: TStringField
      FieldName = 'descricao'
      Origin = 'descricao'
      Required = True
      Size = 30
    end
  end
  object FDQConsContasPagarBaixa: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from conta_pagar where id = :PIdContaPagar')
    Left = 1264
    Top = 224
    ParamData = <
      item
        Name = 'PIDCONTAPAGAR'
        DataType = ftString
        ParamType = ptInput
        Size = 30
      end>
    object FDQConsContasPagarBaixaid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQConsContasPagarBaixaid_fornecedor: TIntegerField
      FieldName = 'id_fornecedor'
      Origin = 'id_fornecedor'
    end
    object FDQConsContasPagarBaixaid_tipo_despesa: TIntegerField
      FieldName = 'id_tipo_despesa'
      Origin = 'id_tipo_despesa'
    end
    object FDQConsContasPagarBaixan_doc: TStringField
      FieldName = 'n_doc'
      Origin = 'n_doc'
      Size = 30
    end
    object FDQConsContasPagarBaixavalor_doc: TBCDField
      FieldName = 'valor_doc'
      Origin = 'valor_doc'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQConsContasPagarBaixavalor_descmoeda: TBCDField
      FieldName = 'valor_descmoeda'
      Origin = 'valor_descmoeda'
      Precision = 9
      Size = 2
    end
    object FDQConsContasPagarBaixavalor_acresc: TBCDField
      FieldName = 'valor_acresc'
      Origin = 'valor_acresc'
      Precision = 9
      Size = 2
    end
    object FDQConsContasPagarBaixavalor_pago: TBCDField
      FieldName = 'valor_pago'
      Origin = 'valor_pago'
      Precision = 9
      Size = 2
    end
    object FDQConsContasPagarBaixavalor_saldo: TBCDField
      FieldName = 'valor_saldo'
      Origin = 'valor_saldo'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQConsContasPagarBaixadata_cad: TDateTimeField
      FieldName = 'data_cad'
      Origin = 'data_cad'
    end
    object FDQConsContasPagarBaixadata_venc: TDateField
      FieldName = 'data_venc'
      Origin = 'data_venc'
      Required = True
    end
    object FDQConsContasPagarBaixadata_quitacao: TDateTimeField
      FieldName = 'data_quitacao'
      Origin = 'data_quitacao'
    end
    object FDQConsContasPagarBaixaquitado: TStringField
      FieldName = 'quitado'
      Origin = 'quitado'
      FixedChar = True
      Size = 1
    end
  end
  object FDQCadBaixaContaPagar: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select * from baixa_conta_pagar')
    Left = 1408
    Top = 168
    object FDQCadBaixaContaPagarid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object FDQCadBaixaContaPagarid_conta_pagar: TIntegerField
      FieldName = 'id_conta_pagar'
      Origin = 'id_conta_pagar'
      Required = True
    end
    object FDQCadBaixaContaPagardata: TDateTimeField
      FieldName = 'data'
      Origin = 'data'
      Required = True
    end
    object FDQCadBaixaContaPagarvalor: TBCDField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      Precision = 9
      Size = 2
    end
    object FDQCadBaixaContaPagarid_forma_pag: TIntegerField
      FieldName = 'id_forma_pag'
      Origin = 'id_forma_pag'
      Required = True
    end
  end
  object FDQMaxIdBaixaContaPagar: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'select max(id) from baixa_conta_pagar')
    Left = 1408
    Top = 104
    object FDQMaxIdBaixaContaPagarmaxid: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'max(id)'
      Origin = '"max(id)"'
      ProviderFlags = []
      ReadOnly = True
      Size = 32767
    end
  end
end
