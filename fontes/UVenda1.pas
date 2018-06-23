unit UVenda1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.Actions, FMX.ActnList, FMX.TabControl,
  FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  MultiDetailAppearanceU, Data.Bind.EngExt, FMX.Bind.DBEngExt,
  Data.Bind.Components, Data.Bind.DBScope, System.Rtti, System.Bindings.Outputs,
  FMX.Bind.Editors, FMX.ListBox, System.ImageList, FMX.ImgList, FMX.Edit,
  ksTypes, ksLoadingIndicator;

type
  TFVenda1 = class(TForm)
    LytBase: TLayout;
    TbControlVenda: TTabControl;
    TbItemListagemVenda: TTabItem;
    ToolBarsuperior: TToolBar;
    LblTitulo: TLabel;
    SpBVoltar: TSpeedButton;
    SpdBNovoVenda: TSpeedButton;
    Layout1: TLayout;
    Label1: TLabel;
    ComboBoxFiltroPedido: TComboBox;
    SpBFiltrarPedido: TSpeedButton;
    ListViewPedido: TListView;
    TbItemedicaoVenda: TTabItem;
    ToolBarSupApoioVenda: TToolBar;
    LblVendaEdicao: TLabel;
    SpdBVoltarVendaEdicao: TSpeedButton;
    ListBox1: TListBox;
    ListBoxItemNumPedidoVenda: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    LblCliVenda: TLabel;
    SpdBPesqCliVenda: TSpeedButton;
    ListBoxItem3: TListBoxItem;
    LblFormaPagVenda: TLabel;
    ListBoxItem4: TListBoxItem;
    LblNumParcelasVenda: TLabel;
    EdtNumParcelaPedido: TEdit;
    TbItemPedidoItemVenda: TTabItem;
    ToolBar2: TToolBar;
    Label2: TLabel;
    SpdBVoltarItemVenda: TSpeedButton;
    TbItemApoioVenda: TTabItem;
    LytApoio: TLayout;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    ActionList1: TActionList;
    ActMudarAbaVenda: TChangeTabAction;
    ComboBoxFormaPagVenda: TComboBox;
    SpdBNovoFormaPag: TSpeedButton;
    ListBoxItemValorTotalVenda: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    LblDescMoedaPedido: TLabel;
    EdtDescontoMoedaPedido: TEdit;
    ListBoxItemprodutoVenda: TListBoxItem;
    SpdBPesqItemPedido: TSpeedButton;
    SpdBAdicionaItemPedido: TSpeedButton;
    SpdBSalvarVenda: TSpeedButton;
    SpdBEditarVenda: TSpeedButton;
    LinkPropertyToFieldItemDataDetail: TLinkPropertyToField;
    LinkPropertyToFieldItemDataDetail2: TLinkPropertyToField;
    LinkControlToField1: TLinkControlToField;
    LinkListControlToField3: TLinkListControlToField;
    BindSourceDB2: TBindSourceDB;
    EdtCliVenda: TEdit;
    LinkControlToField2: TLinkControlToField;
    ListViewItemPedido: TListView;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    ToolBar3: TToolBar;
    ListBoxItemParcelasVenda: TListBoxItem;
    BtnConfirmaApoioVenda: TButton;
    LblSupApoioVenda: TLabel;
    procedure SpBVoltarClick(Sender: TObject);
    procedure SpdBNovoVendaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListViewPedidoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure SpBFiltrarPedidoClick(Sender: TObject);
    procedure SpdBPesqCliVendaClick(Sender: TObject);
    procedure SpdBPesqItemPedidoClick(Sender: TObject);
    procedure SpdBAdicionaItemPedidoClick(Sender: TObject);
    procedure SpdBVoltarVendaEdicaoClick(Sender: TObject);
    procedure SpdBVoltarItemVendaClick(Sender: TObject);
    procedure ComboBoxFormaPagVendaEnter(Sender: TObject);
    procedure EdtNumParcelaPedidoChange(Sender: TObject);
    procedure BtnConfirmaApoioVendaClick(Sender: TObject);
  private
    { Private declarations }
  public
    FActiveForm: TForm;

    procedure AbrirFormVenda(AFormClass: TComponentClass);
    procedure MudarAbaVenda(ATabItemVenda: TTabItem; Sender: TObject);
    { Public declarations }
  end;

var
  FVenda1: TFVenda1;
  CliPedido: string;
  itemPedido: string;
  venda: string;
  contItem: integer;

implementation

{$R *.fmx}

uses UCadCli, UConsultaProduto, UDM, UPrincipal;

procedure TFVenda1.AbrirFormVenda(AFormClass: TComponentClass);
var
  LayoutBase, BotaoMenu: TComponent;
begin
  if Assigned(FActiveForm) then
  begin
    if FActiveForm.ClassType = AFormClass then
      Exit
    else
    begin
      FActiveForm.DisposeOf;
      FActiveForm := nil;
    end;
  end;
  Application.CreateForm(AFormClass, FActiveForm);
  LayoutBase := FActiveForm.FindComponent('LytBase');
  if Assigned(LayoutBase) then
    LytApoio.AddObject(TLayout(LayoutBase));

end;

procedure TFVenda1.BtnConfirmaApoioVendaClick(Sender: TObject);
var
  paramSql: string;
  I: integer;
begin
  FPrincipal.ksLoadingIndicator1.LoadingText.Text := 'Aguarde...';
  FPrincipal.ksLoadingIndicator1.ShowLoading;
  if itemPedido = 'S' then
  begin
    for I := 0 to contItem - 1 do
    begin
      if I = 0 then
        paramSql := x[I];
      if I > 0 then
        paramSql := paramSql + ', ' + x[I];
    end;
    DM.GetItemPedido('(' + paramSql + ')');
    DM.FDQConsultaProd.Active := False;
    for I := 0 to contItem -1 do
    begin
      ListViewItemPedido.BeginUpdate;
      ListViewItemPedido.Items[I].Data[TMultiDetailAppearanceNames.Detail1] := 'Qtd: ' + qtd[I];
      ListViewItemPedido.EndUpdate;
      //ListViewItemPedido.Items[I].Detail := 'Qtd: ' + qtdItem;
    end;
  end
  else if CliPedido = 'S' then
  begin
    EdtCliVenda.Text := nomeCliente;
    DM.FDQFiltroCadCLi.Active := False;
  end;
  MudarAbaVenda(TbItemedicaoVenda, Sender);
  FPrincipal.ksLoadingIndicator1.HideLoading;
end;

procedure TFVenda1.ComboBoxFormaPagVendaEnter(Sender: TObject);
var
  I: integer;
begin
  ComboBoxFormaPagVenda.Items.Clear;
  DM.FDQConsFormaPag.Close;
  DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := '%';
  DM.FDQConsFormaPag.Open();
  for I := 1 to DM.FDQConsFormaPag.RowsAffected do
  begin
    DM.FDQConsFormaPag.Close;
    DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := IntToStr(I);
    DM.FDQConsFormaPag.Open();
    ComboBoxFormaPagVenda.Items.Add
      (DM.FDQConsFormaPagdescricao_forma_pag.AsString);
  end;
  DM.FDQConsFormaPag.Active := True;
end;

procedure TFVenda1.EdtNumParcelaPedidoChange(Sender: TObject);
begin
  ListBoxItemParcelasVenda.Text := EdtNumParcelaPedido.Text + 'X';
end;

procedure TFVenda1.FormCreate(Sender: TObject);
begin
  TbControlVenda.ActiveTab := TbItemListagemVenda;
  TbControlVenda.TabPosition := TTabPosition.None;
end;

procedure TFVenda1.ListViewPedidoItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  venda := 'S';
  MudarAbaVenda(TbItemedicaoVenda, Sender);
end;

procedure TFVenda1.MudarAbaVenda(ATabItemVenda: TTabItem; Sender: TObject);
begin
  ActMudarAbaVenda.Tab := ATabItemVenda;
  ActMudarAbaVenda.ExecuteTarget(Sender);
end;

procedure TFVenda1.SpBFiltrarPedidoClick(Sender: TObject);
var
  FiltroPedido: string;
begin
  inherited;
  if ComboBoxFiltroPedido.ItemIndex = 0 then
    FiltroPedido := 'N'
  else
    FiltroPedido := 'S';
  DM.FDQPedido.Active := False;
  DM.FDQPedido.Close;
  DM.FDQPedido.ParamByName('PFormaPag').Value := FiltroPedido;
  DM.FDQPedido.Open();
  DM.FDQPedido.Active := True;
end;

procedure TFVenda1.SpBVoltarClick(Sender: TObject);
begin
  CliPedido := EmptyStr;
  itemPedido := EmptyStr;
  venda := EmptyStr;
  FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
end;

procedure TFVenda1.SpdBAdicionaItemPedidoClick(Sender: TObject);
begin
  LblSupApoioVenda.Text := 'Produtos';
  CliPedido := EmptyStr;
  itemPedido := 'S';
  AbrirFormVenda(TFConsProduto);
  MudarAbaVenda(TbItemApoioVenda, Sender);
end;

procedure TFVenda1.SpdBNovoVendaClick(Sender: TObject);
begin
  contItem := 0;
  venda := 'S';
  MudarAbaVenda(TbItemedicaoVenda, Sender);
  // LimpaCampos;
  // HabilitaCampos;
  DM.FDQMaxIdPedido.Close;
  DM.FDQMaxIdPedido.Open();
  ListBoxItemNumPedidoVenda.ItemData.Detail :=
    IntToStr(DM.FDQMaxIdPedidomaxIdPedido.AsInteger + 1);
end;

procedure TFVenda1.SpdBPesqCliVendaClick(Sender: TObject);
begin
  LblSupApoioVenda.Text := 'Clientes';
  itemPedido := EmptyStr;
  CliPedido := 'S';
  AbrirFormVenda(TFCadCli);
  MudarAbaVenda(TbItemApoioVenda, Sender);
end;

procedure TFVenda1.SpdBPesqItemPedidoClick(Sender: TObject);
begin
  MudarAbaVenda(TbItemPedidoItemVenda, Sender);
end;

procedure TFVenda1.SpdBVoltarItemVendaClick(Sender: TObject);
begin
  MudarAbaVenda(TbItemedicaoVenda, Sender);
end;

procedure TFVenda1.SpdBVoltarVendaEdicaoClick(Sender: TObject);
begin
  DM.FDQPedido.Active := False;
  DM.FDQConsFormaPag.Active := False;
  MudarAbaVenda(TbItemListagemVenda, Sender);
end;

end.
