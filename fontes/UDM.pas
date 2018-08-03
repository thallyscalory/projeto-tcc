unit UDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.FMXUI.Wait,
  FireDAC.Stan.ExprFuncs, FireDAC.Phys.SQLiteDef, FireDAC.Phys.SQLite, Data.DB,
  FireDAC.Comp.Client, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, System.IOUtils;

type
  TDM = class(TDataModule)
    FDConnection1: TFDConnection;
    FDPhysSQLiteDriverLink1: TFDPhysSQLiteDriverLink;
    FDQuery1: TFDQuery;
    FDQDetalheProdCodBar: TFDQuery;
    FDQFiltroCadCLi: TFDQuery;
    FDQMaxIdCli: TFDQuery;
    FDQMaxIdClimax: TLargeintField;
    FDQCadCli: TFDQuery;
    FDQConsultaProd: TFDQuery;
    FDQCadCliid_cli: TIntegerField;
    FDQCadClitipo_cli: TStringField;
    FDQCadClinome_cli: TStringField;
    FDQCadClicpf_cnpj_cli: TStringField;
    FDQCadClirg_ie_cli: TStringField;
    FDQCadCliapelido_cli: TStringField;
    FDQCadClifone_cli: TStringField;
    FDQCadCliendereco_cli: TStringField;
    FDQCadClinum_cli: TStringField;
    FDQCadClicomplemento_cli: TStringField;
    FDQCadClibairro_cli: TStringField;
    FDQCadClicep_cli: TStringField;
    FDQCadClicidade_cli: TStringField;
    FDQCadCliuf_cli: TStringField;
    FDQCadCliemail_cli: TStringField;
    FDQCadCliliberaaprazo_cli: TStringField;
    FDQCadCliobs_cli: TWideMemoField;
    FDQCadClidata_cad_cli: TDateTimeField;
    FDQCadClifoto_cli: TBlobField;
    FDQuery1codigo: TStringField;
    FDQuery1produto: TStringField;
    FDQuery1descricao: TStringField;
    FDQuery1un: TStringField;
    FDQuery1vrvenda: TFloatField;
    FDQuery1sigla: TStringField;
    FDQuery1grupo: TStringField;
    FDQuery1CodigoBarra: TStringField;
    FDQuery1vrpromocao: TFloatField;
    FDQuery1VRAVISTA: TFloatField;
    FDQuery1ativo: TStringField;
    FDQDetalheProdCodBarcodigo: TStringField;
    FDQDetalheProdCodBarproduto: TStringField;
    FDQDetalheProdCodBardescricao: TStringField;
    FDQDetalheProdCodBarun: TStringField;
    FDQDetalheProdCodBarvrvenda: TFloatField;
    FDQDetalheProdCodBarsigla: TStringField;
    FDQDetalheProdCodBargrupo: TStringField;
    FDQDetalheProdCodBarCodigoBarra: TStringField;
    FDQDetalheProdCodBarvrpromocao: TFloatField;
    FDQDetalheProdCodBarVRAVISTA: TFloatField;
    FDQDetalheProdCodBarativo: TStringField;
    FDQConsultaProdcodigo: TStringField;
    FDQConsultaProdproduto: TStringField;
    FDQConsultaProddescricao: TStringField;
    FDQConsultaProdun: TStringField;
    FDQConsultaProdvrvenda: TFloatField;
    FDQConsultaProdsigla: TStringField;
    FDQConsultaProdgrupo: TStringField;
    FDQConsultaProdCodigoBarra: TStringField;
    FDQConsultaProdvrpromocao: TFloatField;
    FDQConsultaProdVRAVISTA: TFloatField;
    FDQConsultaProdativo: TStringField;
    FDQMaxIdProd: TFDQuery;
    FDQMaxIdProdmaxIdProd: TWideStringField;
    FDQCadProd: TFDQuery;
    FDQCadProdcodigo: TStringField;
    FDQCadProdproduto: TStringField;
    FDQCadProddescricao: TStringField;
    FDQCadProdun: TStringField;
    FDQCadProdvrvenda: TFloatField;
    FDQCadProdsigla: TStringField;
    FDQCadProdgrupo: TStringField;
    FDQCadProdCodigoBarra: TStringField;
    FDQCadProdvrpromocao: TFloatField;
    FDQCadProdVRAVISTA: TFloatField;
    FDQCadProdativo: TStringField;
    FDQPedido: TFDQuery;
    FDQMaxIdPedido: TFDQuery;
    FDQMaxIdPedidomaxIdPedido: TLargeintField;
    FDQConsFormaPag: TFDQuery;
    FDQCadFormaPag: TFDQuery;
    FDQConsFormaPagid_forma_pag: TIntegerField;
    FDQConsFormaPagdescricao_forma_pag: TStringField;
    FDQConsFormaPaggeraconta_forma_pag: TStringField;
    FDQConsFormaPagavista_forma_pag: TStringField;
    FDQConsFormaPagcondicional_forma_pag: TStringField;
    FDQCadFormaPagid_forma_pag: TIntegerField;
    FDQCadFormaPagdescricao_forma_pag: TStringField;
    FDQCadFormaPaggeraconta_forma_pag: TStringField;
    FDQCadFormaPagavista_forma_pag: TStringField;
    FDQCadFormaPagcondicional_forma_pag: TStringField;
    FDQProdItemPedido: TFDQuery;
    FDQProdItemPedidocodigo: TStringField;
    FDQProdItemPedidoproduto: TStringField;
    FDQProdItemPedidodescricao: TStringField;
    FDQProdItemPedidoun: TStringField;
    FDQProdItemPedidovrvenda: TFloatField;
    FDQProdItemPedidosigla: TStringField;
    FDQProdItemPedidogrupo: TStringField;
    FDQProdItemPedidoCodigoBarra: TStringField;
    FDQProdItemPedidovrpromocao: TFloatField;
    FDQProdItemPedidoVRAVISTA: TFloatField;
    FDQProdItemPedidoativo: TStringField;
    FDQConsAtendente: TFDQuery;
    FDQConsAtendenteid_funcionario: TIntegerField;
    FDQConsAtendentenome_funcionario: TStringField;
    FDQConsAtendentecpf: TStringField;
    FDQConsAtendenteusuario: TStringField;
    FDQConsAtendentesenha: TStringField;
    FDQCadPedido: TFDQuery;
    FDQCadPedidoid_pedido: TIntegerField;
    FDQCadPedidoid_cli_pedido: TIntegerField;
    FDQCadPedidodatahora_pedido: TDateTimeField;
    FDQCadPedidovalor_pedido: TBCDField;
    FDQCadPedidodescmoeda_pedido: TFloatField;
    FDQCadPedidodescpercent_pedido: TFloatField;
    FDQCadPedidoid_formapag_pedido: TIntegerField;
    FDQCadPedidonrparcela_pedido: TIntegerField;
    FDQCadPedidoobs_pedido: TWideMemoField;
    FDQCadPedidostatus_pedido: TStringField;
    FDQPedidoid_pedido: TIntegerField;
    FDQPedidoid_cli_pedido: TIntegerField;
    FDQPedidodatahora_pedido: TDateTimeField;
    FDQPedidovalor_pedido: TBCDField;
    FDQPedidodescmoeda_pedido: TFloatField;
    FDQPedidodescpercent_pedido: TFloatField;
    FDQPedidoid_formapag_pedido: TIntegerField;
    FDQPedidonrparcela_pedido: TIntegerField;
    FDQPedidoobs_pedido: TWideMemoField;
    FDQPedidostatus_pedido: TStringField;
    FDQPedidoid_cli: TIntegerField;
    FDQPedidonome_cli: TStringField;
    FDQPedidocpf_cnpj_cli: TStringField;
    FDQPedidofoto_cli: TBlobField;
    FDQPedidoid_forma_pag: TIntegerField;
    FDQPedidodescricao_forma_pag: TStringField;
    FDQPedidocondicional_forma_pag: TStringField;
    FDQConsItemPedido: TFDQuery;
    FDQCadItemPedido: TFDQuery;
    FDQCadItemPedidoid_item_pedido: TIntegerField;
    FDQCadItemPedidoid_pedido_item: TIntegerField;
    FDQCadItemPedidoid_produto_item: TIntegerField;
    FDQCadItemPedidoqte_item_pedido: TFloatField;
    FDQCadItemPedidovalor_item_pedido: TBCDField;
    FDQCadItemPedidodescmoeda_item_pedido: TFloatField;
    FDQCadItemPedidodescpercent_item_pedido: TFloatField;
    FDQCadItemPedidoid_atendente_item: TIntegerField;
    FDQMaxIdItemPedido: TFDQuery;
    FDQMaxIdItemPedidomaxId: TLargeintField;
    FDQConsItemPedidoid_item_pedido: TIntegerField;
    FDQConsItemPedidoid_pedido_item: TIntegerField;
    FDQConsItemPedidoid_produto_item: TIntegerField;
    FDQConsItemPedidoqte_item_pedido: TFloatField;
    FDQConsItemPedidovalor_item_pedido: TBCDField;
    FDQConsItemPedidodescmoeda_item_pedido: TFloatField;
    FDQConsItemPedidodescpercent_item_pedido: TFloatField;
    FDQConsItemPedidoid_atendente_item: TIntegerField;
    FDQConsItemPedidocodigo: TStringField;
    FDQConsItemPedidoproduto: TStringField;
    FDQConsItemPedidoid_funcionario: TIntegerField;
    FDQConsItemPedidousuario: TStringField;
    FDQConsItemPedidoid_pedido: TIntegerField;
    FDQAuxiliar: TFDQuery;
    FDQConsContasReceber: TFDQuery;
    FDQMaxIdContasReceber: TFDQuery;
    FDQConsContasReceberid: TIntegerField;
    FDQConsContasReceberid_pedido: TIntegerField;
    FDQConsContasReceberid_cliente: TIntegerField;
    FDQConsContasReceberid_forma_pag: TIntegerField;
    FDQConsContasRecebervalor_documento: TFloatField;
    FDQConsContasRecebervalor_juro: TFloatField;
    FDQConsContasRecebervalor_desconto: TFloatField;
    FDQConsContasRecebervalor_pago: TFloatField;
    FDQConsContasRecebervalor_saldo: TFloatField;
    FDQConsContasReceberdata_venc: TDateField;
    FDQConsContasReceberdata_cad: TDateField;
    FDQConsContasReceberdata_quitacao: TDateField;
    FDQConsContasReceberquitado: TStringField;
    FDQMaxIdContasRecebermaxId: TLargeintField;
    FDQCadContasReceber: TFDQuery;
    FDQCadContasReceberid: TIntegerField;
    FDQCadContasReceberid_pedido: TIntegerField;
    FDQCadContasReceberid_cliente: TIntegerField;
    FDQCadContasReceberid_forma_pag: TIntegerField;
    FDQCadContasRecebervalor_documento: TFloatField;
    FDQCadContasRecebervalor_juro: TFloatField;
    FDQCadContasRecebervalor_desconto: TFloatField;
    FDQCadContasRecebervalor_pago: TFloatField;
    FDQCadContasRecebervalor_saldo: TFloatField;
    FDQCadContasReceberdata_venc: TDateField;
    FDQCadContasReceberdata_cad: TDateField;
    FDQCadContasReceberdata_quitacao: TDateField;
    FDQCadContasReceberquitado: TStringField;
    FDQConsContasReceberid_cli: TIntegerField;
    FDQConsContasRecebertipo_cli: TStringField;
    FDQConsContasRecebernome_cli: TStringField;
    FDQConsContasRecebercpf_cnpj_cli: TStringField;
    FDQConsContasReceberrg_ie_cli: TStringField;
    FDQConsContasReceberapelido_cli: TStringField;
    FDQConsContasReceberfone_cli: TStringField;
    FDQConsContasReceberendereco_cli: TStringField;
    FDQConsContasRecebernum_cli: TStringField;
    FDQConsContasRecebercomplemento_cli: TStringField;
    FDQConsContasReceberbairro_cli: TStringField;
    FDQConsContasRecebercep_cli: TStringField;
    FDQConsContasRecebercidade_cli: TStringField;
    FDQConsContasReceberuf_cli: TStringField;
    FDQConsContasReceberemail_cli: TStringField;
    FDQConsContasReceberliberaaprazo_cli: TStringField;
    FDQConsContasReceberobs_cli: TWideMemoField;
    FDQConsContasReceberdata_cad_cli: TDateTimeField;
    FDQConsContasReceberfoto_cli: TBlobField;
    FDQFiltroCadCLiid_cli: TIntegerField;
    FDQFiltroCadCLitipo_cli: TStringField;
    FDQFiltroCadCLinome_cli: TStringField;
    FDQFiltroCadCLicpf_cnpj_cli: TStringField;
    FDQFiltroCadCLirg_ie_cli: TStringField;
    FDQFiltroCadCLiapelido_cli: TStringField;
    FDQFiltroCadCLifone_cli: TStringField;
    FDQFiltroCadCLiendereco_cli: TStringField;
    FDQFiltroCadCLinum_cli: TStringField;
    FDQFiltroCadCLicomplemento_cli: TStringField;
    FDQFiltroCadCLibairro_cli: TStringField;
    FDQFiltroCadCLicep_cli: TStringField;
    FDQFiltroCadCLicidade_cli: TStringField;
    FDQFiltroCadCLiuf_cli: TStringField;
    FDQFiltroCadCLiemail_cli: TStringField;
    FDQFiltroCadCLiliberaaprazo_cli: TStringField;
    FDQFiltroCadCLiobs_cli: TWideMemoField;
    FDQFiltroCadCLidata_cad_cli: TDateTimeField;
    FDQFiltroCadCLifoto_cli: TBlobField;
    FDQCadBaixaContasReceber: TFDQuery;
    FDQMaxIdBaixaContaReceber: TFDQuery;
    FDQMaxIdBaixaContaRecebermaxId: TLargeintField;
    FDQCadBaixaContasReceberid: TIntegerField;
    FDQCadBaixaContasReceberid_conta_receber: TIntegerField;
    FDQCadBaixaContasReceberdata: TDateField;
    FDQCadBaixaContasRecebervalor: TFloatField;
    FDQCadBaixaContasReceberid_forma_pag: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    function GetItemPedido(Aparam : String): integer;
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

{ %CLASSGROUP 'FMX.Controls.TControl' }

{$R *.dfm}

procedure TDM.DataModuleCreate(Sender: TObject);
begin
  with FDConnection1 do
  begin
  {$IF DEFINED(IOS) or DEFINED(ANDROID)}
    Params.Values['Database'] := GetHomePath + PathDelim + 'calorytcc.s3db';
    Connected := True;
  {$ENDIF}
  {$IFDEF MSWINDOWS}
    Params.Values['Database'] := 'C:\projeto tcc\bd\calorytcc.s3db';
    Connected := True;
  {$ENDIF}
  end;
end;

function TDM.GetItemPedido(Aparam: String): integer;
const
_sql = 'select * from produto where codigo = %s';
    //_sql = 'select * from produto where codigo in %s';
begin
  FDQProdItemPedido.Active := False;
  FDQProdItemPedido.SQL.Text := Format(_sql, [Aparam]);
  FDQProdItemPedido.Active := True;
end;

end.
