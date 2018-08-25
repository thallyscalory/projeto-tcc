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
    FDQMaxIdProd: TFDQuery;
    FDQMaxIdProdmaxIdProd: TWideStringField;
    FDQCadProd: TFDQuery;
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
    FDQConsAtendente: TFDQuery;
    FDQConsAtendenteid_funcionario: TIntegerField;
    FDQConsAtendentenome_funcionario: TStringField;
    FDQConsAtendentecpf: TStringField;
    FDQConsAtendenteusuario: TStringField;
    FDQConsAtendentesenha: TStringField;
    FDQCadPedido: TFDQuery;
    FDQConsItemPedido: TFDQuery;
    FDQCadItemPedido: TFDQuery;
    FDQMaxIdItemPedido: TFDQuery;
    FDQMaxIdItemPedidomaxId: TLargeintField;
    FDQAuxiliar: TFDQuery;
    FDQConsContasReceber: TFDQuery;
    FDQMaxIdContasReceber: TFDQuery;
    FDQMaxIdContasRecebermaxId: TLargeintField;
    FDQCadContasReceber: TFDQuery;
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
    FDQConsAvistaFormaPag: TFDQuery;
    FDQConsAvistaFormaPagid_forma_pag: TIntegerField;
    FDQConsAvistaFormaPagdescricao_forma_pag: TStringField;
    FDQConsAvistaFormaPaggeraconta_forma_pag: TStringField;
    FDQConsAvistaFormaPagavista_forma_pag: TStringField;
    FDQConsAvistaFormaPagcondicional_forma_pag: TStringField;
    FDQConsContasReceberBaixa: TFDQuery;
    FDQConsFornecedor: TFDQuery;
    FDQConsFornecedorid: TFDAutoIncField;
    FDQConsFornecedortipo_pessoa: TStringField;
    FDQConsFornecedornome: TStringField;
    FDQConsFornecedornome_fantasia: TStringField;
    FDQConsFornecedorcpf_cnpj: TStringField;
    FDQConsFornecedorrg_ie: TStringField;
    FDQConsFornecedorfone: TStringField;
    FDQConsFornecedorendereco: TStringField;
    FDQConsFornecedornumero: TStringField;
    FDQConsFornecedorcomplemento: TStringField;
    FDQConsFornecedorbairro: TStringField;
    FDQConsFornecedorcep: TStringField;
    FDQConsFornecedorcidade: TStringField;
    FDQConsFornecedoruf: TStringField;
    FDQConsFornecedoremail: TStringField;
    FDQConsFornecedorobs: TWideMemoField;
    FDQConsFornecedorstatus: TStringField;
    FDQConsFornecedordata_cad: TDateField;
    FDQCadFornecedor: TFDQuery;
    FDQCadFornecedorid: TFDAutoIncField;
    FDQCadFornecedortipo_pessoa: TStringField;
    FDQCadFornecedornome: TStringField;
    FDQCadFornecedornome_fantasia: TStringField;
    FDQCadFornecedorcpf_cnpj: TStringField;
    FDQCadFornecedorrg_ie: TStringField;
    FDQCadFornecedorfone: TStringField;
    FDQCadFornecedorendereco: TStringField;
    FDQCadFornecedornumero: TStringField;
    FDQCadFornecedorcomplemento: TStringField;
    FDQCadFornecedorbairro: TStringField;
    FDQCadFornecedorcep: TStringField;
    FDQCadFornecedorcidade: TStringField;
    FDQCadFornecedoruf: TStringField;
    FDQCadFornecedoremail: TStringField;
    FDQCadFornecedorobs: TWideMemoField;
    FDQCadFornecedorstatus: TStringField;
    FDQCadFornecedordata_cad: TDateField;
    FDQConsContaPagar: TFDQuery;
    FDQCadContaPagar: TFDQuery;
    FDQConsultaProdcodigo: TStringField;
    FDQConsultaProdproduto: TStringField;
    FDQConsultaProddescricao: TStringField;
    FDQConsultaProdun: TStringField;
    FDQConsultaProdvrvenda: TBCDField;
    FDQConsultaProdsigla: TStringField;
    FDQConsultaProdgrupo: TStringField;
    FDQConsultaProdCodigoBarra: TStringField;
    FDQConsultaProdvrpromocao: TBCDField;
    FDQConsultaProdVRAVISTA: TBCDField;
    FDQConsultaProdativo: TStringField;
    FDQuery1codigo: TStringField;
    FDQuery1produto: TStringField;
    FDQuery1descricao: TStringField;
    FDQuery1un: TStringField;
    FDQuery1vrvenda: TBCDField;
    FDQuery1sigla: TStringField;
    FDQuery1grupo: TStringField;
    FDQuery1CodigoBarra: TStringField;
    FDQuery1vrpromocao: TBCDField;
    FDQuery1VRAVISTA: TBCDField;
    FDQuery1ativo: TStringField;
    FDQDetalheProdCodBarcodigo: TStringField;
    FDQDetalheProdCodBarproduto: TStringField;
    FDQDetalheProdCodBardescricao: TStringField;
    FDQDetalheProdCodBarun: TStringField;
    FDQDetalheProdCodBarvrvenda: TBCDField;
    FDQDetalheProdCodBarsigla: TStringField;
    FDQDetalheProdCodBargrupo: TStringField;
    FDQDetalheProdCodBarCodigoBarra: TStringField;
    FDQDetalheProdCodBarvrpromocao: TBCDField;
    FDQDetalheProdCodBarVRAVISTA: TBCDField;
    FDQDetalheProdCodBarativo: TStringField;
    FDQCadProdcodigo: TStringField;
    FDQCadProdproduto: TStringField;
    FDQCadProddescricao: TStringField;
    FDQCadProdun: TStringField;
    FDQCadProdvrvenda: TBCDField;
    FDQCadProdsigla: TStringField;
    FDQCadProdgrupo: TStringField;
    FDQCadProdCodigoBarra: TStringField;
    FDQCadProdvrpromocao: TBCDField;
    FDQCadProdVRAVISTA: TBCDField;
    FDQCadProdativo: TStringField;
    FDQProdItemPedidocodigo: TStringField;
    FDQProdItemPedidoproduto: TStringField;
    FDQProdItemPedidodescricao: TStringField;
    FDQProdItemPedidoun: TStringField;
    FDQProdItemPedidovrvenda: TBCDField;
    FDQProdItemPedidosigla: TStringField;
    FDQProdItemPedidogrupo: TStringField;
    FDQProdItemPedidoCodigoBarra: TStringField;
    FDQProdItemPedidovrpromocao: TBCDField;
    FDQProdItemPedidoVRAVISTA: TBCDField;
    FDQProdItemPedidoativo: TStringField;
    FDQPedidoid_pedido: TFDAutoIncField;
    FDQPedidoid_cli_pedido: TIntegerField;
    FDQPedidodatahora_pedido: TDateTimeField;
    FDQPedidovalor_pedido: TBCDField;
    FDQPedidodescmoeda_pedido: TBCDField;
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
    FDQCadPedidoid_pedido: TFDAutoIncField;
    FDQCadPedidoid_cli_pedido: TIntegerField;
    FDQCadPedidodatahora_pedido: TDateTimeField;
    FDQCadPedidovalor_pedido: TBCDField;
    FDQCadPedidodescmoeda_pedido: TBCDField;
    FDQCadPedidodescpercent_pedido: TFloatField;
    FDQCadPedidoid_formapag_pedido: TIntegerField;
    FDQCadPedidonrparcela_pedido: TIntegerField;
    FDQCadPedidoobs_pedido: TWideMemoField;
    FDQCadPedidostatus_pedido: TStringField;
    FDQConsItemPedidoid_item_pedido: TFDAutoIncField;
    FDQConsItemPedidoid_pedido_item: TIntegerField;
    FDQConsItemPedidoid_produto_item: TIntegerField;
    FDQConsItemPedidoqte_item_pedido: TFloatField;
    FDQConsItemPedidovalor_item_pedido: TBCDField;
    FDQConsItemPedidodescmoeda_item_pedido: TBCDField;
    FDQConsItemPedidodescpercent_item_pedido: TBCDField;
    FDQConsItemPedidoid_atendente_item: TIntegerField;
    FDQConsItemPedidocodigo: TStringField;
    FDQConsItemPedidoproduto: TStringField;
    FDQConsItemPedidoid_funcionario: TIntegerField;
    FDQConsItemPedidousuario: TStringField;
    FDQConsItemPedidoid_pedido: TIntegerField;
    FDQCadItemPedidoid_item_pedido: TFDAutoIncField;
    FDQCadItemPedidoid_pedido_item: TIntegerField;
    FDQCadItemPedidoid_produto_item: TIntegerField;
    FDQCadItemPedidoqte_item_pedido: TFloatField;
    FDQCadItemPedidovalor_item_pedido: TBCDField;
    FDQCadItemPedidodescmoeda_item_pedido: TBCDField;
    FDQCadItemPedidodescpercent_item_pedido: TBCDField;
    FDQCadItemPedidoid_atendente_item: TIntegerField;
    FDQConsContasReceberid: TFDAutoIncField;
    FDQConsContasReceberid_pedido: TIntegerField;
    FDQConsContasReceberid_cliente: TIntegerField;
    FDQConsContasReceberid_forma_pag: TIntegerField;
    FDQConsContasRecebervalor_documento: TBCDField;
    FDQConsContasRecebervalor_juro: TBCDField;
    FDQConsContasRecebervalor_desconto: TBCDField;
    FDQConsContasRecebervalor_pago: TBCDField;
    FDQConsContasRecebervalor_saldo: TBCDField;
    FDQConsContasReceberdata_venc: TDateField;
    FDQConsContasReceberdata_cad: TDateField;
    FDQConsContasReceberdata_quitacao: TDateField;
    FDQConsContasReceberquitado: TStringField;
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
    FDQConsContasReceberstatus: TStringField;
    FDQCadContasReceberid: TFDAutoIncField;
    FDQCadContasReceberid_pedido: TIntegerField;
    FDQCadContasReceberid_cliente: TIntegerField;
    FDQCadContasReceberid_forma_pag: TIntegerField;
    FDQCadContasRecebervalor_documento: TBCDField;
    FDQCadContasRecebervalor_juro: TBCDField;
    FDQCadContasRecebervalor_desconto: TBCDField;
    FDQCadContasRecebervalor_pago: TBCDField;
    FDQCadContasRecebervalor_saldo: TBCDField;
    FDQCadContasReceberdata_venc: TDateField;
    FDQCadContasReceberdata_cad: TDateField;
    FDQCadContasReceberdata_quitacao: TDateField;
    FDQCadContasReceberquitado: TStringField;
    FDQConsContasReceberBaixaid: TFDAutoIncField;
    FDQConsContasReceberBaixaid_pedido: TIntegerField;
    FDQConsContasReceberBaixaid_cliente: TIntegerField;
    FDQConsContasReceberBaixaid_forma_pag: TIntegerField;
    FDQConsContasReceberBaixavalor_documento: TBCDField;
    FDQConsContasReceberBaixavalor_juro: TBCDField;
    FDQConsContasReceberBaixavalor_desconto: TBCDField;
    FDQConsContasReceberBaixavalor_pago: TBCDField;
    FDQConsContasReceberBaixavalor_saldo: TBCDField;
    FDQConsContasReceberBaixadata_venc: TDateField;
    FDQConsContasReceberBaixadata_cad: TDateField;
    FDQConsContasReceberBaixadata_quitacao: TDateField;
    FDQConsContasReceberBaixaquitado: TStringField;
    FDQCadBaixaContasReceberid: TFDAutoIncField;
    FDQCadBaixaContasReceberid_conta_receber: TIntegerField;
    FDQCadBaixaContasReceberdata: TDateTimeField;
    FDQCadBaixaContasRecebervalor: TBCDField;
    FDQCadBaixaContasReceberid_forma_pag: TIntegerField;
    FDQConsContaPagarid: TFDAutoIncField;
    FDQConsContaPagarid_fornecedor: TIntegerField;
    FDQConsContaPagarid_tipo_despesa: TIntegerField;
    FDQConsContaPagarn_doc: TStringField;
    FDQConsContaPagarvalor_doc: TBCDField;
    FDQConsContaPagarvalor_descmoeda: TBCDField;
    FDQConsContaPagarvalor_acresc: TBCDField;
    FDQConsContaPagarvalor_pago: TBCDField;
    FDQConsContaPagarvalor_saldo: TBCDField;
    FDQConsContaPagardata_venc: TDateField;
    FDQConsContaPagardata_quitacao: TDateTimeField;
    FDQConsContaPagarquitado: TStringField;
    FDQConsContaPagarid_1: TIntegerField;
    FDQConsContaPagartipo_pessoa: TStringField;
    FDQConsContaPagarnome: TStringField;
    FDQConsContaPagarnome_fantasia: TStringField;
    FDQConsContaPagarcpf_cnpj: TStringField;
    FDQConsContaPagarrg_ie: TStringField;
    FDQConsContaPagarfone: TStringField;
    FDQConsContaPagarendereco: TStringField;
    FDQConsContaPagarnumero: TStringField;
    FDQConsContaPagarcomplemento: TStringField;
    FDQConsContaPagarbairro: TStringField;
    FDQConsContaPagarcep: TStringField;
    FDQConsContaPagarcidade: TStringField;
    FDQConsContaPagaruf: TStringField;
    FDQConsContaPagaremail: TStringField;
    FDQConsContaPagarobs: TWideMemoField;
    FDQConsContaPagarstatus: TStringField;
    FDQConsContaPagardata_cad: TDateField;
    FDQCadContaPagarid: TFDAutoIncField;
    FDQCadContaPagarid_fornecedor: TIntegerField;
    FDQCadContaPagarid_tipo_despesa: TIntegerField;
    FDQCadContaPagarn_doc: TStringField;
    FDQCadContaPagarvalor_doc: TBCDField;
    FDQCadContaPagarvalor_descmoeda: TBCDField;
    FDQCadContaPagarvalor_acresc: TBCDField;
    FDQCadContaPagarvalor_pago: TBCDField;
    FDQCadContaPagarvalor_saldo: TBCDField;
    FDQCadContaPagardata_venc: TDateField;
    FDQCadContaPagardata_quitacao: TDateTimeField;
    FDQCadContaPagarquitado: TStringField;
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
