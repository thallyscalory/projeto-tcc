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
    ToolBar3: TToolBar;
    ListBoxItemParcelasVenda: TListBoxItem;
    BtnConfirmaApoioVenda: TButton;
    LblSupApoioVenda: TLabel;
    LblCodCliPedido: TLabel;
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
    procedure BtnConfirmaApoioVendaClick(Sender: TObject);
    procedure ListViewItemPedidoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure EdtNumParcelaPedidoExit(Sender: TObject);
    procedure SpdBEditarVendaClick(Sender: TObject);
    procedure SpdBSalvarVendaClick(Sender: TObject);
    procedure EdtNumParcelaPedidoTyping(Sender: TObject);
  private
    { Private declarations }
  public
    valorParc: Double;
    crud: string;
    FActiveForm: TForm;

    procedure AbrirFormVenda(AFormClass: TComponentClass);
    procedure MudarAbaVenda(ATabItemVenda: TTabItem; Sender: TObject);
    procedure LimpaCampos;
    procedure HabilitaCampos;
    procedure DesabilitaCampos;
    { Public declarations }
  end;

var
  FVenda1: TFVenda1;
  CliPedido: string;
  itemPedido: string;
  venda: string;
  contItem, listCountItem: integer;
  vlTotalAtual, vlTotalItemAtual, qtdTotalAtual: Double;

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
  paramSql, numParcela: string;
  I: integer;
  listaItemPedido: TListViewItem;
  qtdItemTotal, vlItemTotal, vlTotalPedido: Double;
begin
  FPrincipal.ksLoadingIndicator1.LoadingText.Text := 'Aguarde...';
  FPrincipal.ksLoadingIndicator1.ShowLoading;
  if itemPedido = 'S' then
  begin
    { for I := 0 to contItem - 1 do
      begin
      if I = 0 then
      paramSql := x[I];
      if I > 0 then
      paramSql := paramSql + ', ' + x[I];
      end; }

    if listCountItem = 0 then
    begin
      qtdItemTotal := 0;
      vlTotalPedido := 0;
    end
    else
    begin
      qtdItemTotal := qtdTotalAtual;
      vlTotalPedido := vlTotalAtual;
    end;
    vlItemTotal := 0;
    DM.FDQConsultaProd.Active := False;
    ListViewItemPedido.BeginUpdate;
    try
      for I := 0 to contItem - 1 do
      begin
        paramSql := x[I];
        DM.GetItemPedido(paramSql);
        listaItemPedido := ListViewItemPedido.Items.Add;
        listaItemPedido.Detail := DM.FDQProdItemPedidocodigo.AsString;
        listaItemPedido.Text := DM.FDQProdItemPedidoproduto.AsString;
        listaItemPedido.Data[TMultiDetailAppearanceNames.Detail1] := qtd[I];
        listaItemPedido.Data[TMultiDetailAppearanceNames.Detail2] :=
          DM.FDQProdItemPedidovrvenda.AsString;
        listaItemPedido.Data[TMultiDetailAppearanceNames.Detail3] :=
          DM.FDQProdItemPedidoVRAVISTA.AsString;
        listaItemPedido.EndUpdate;

        qtdItemTotal := qtdItemTotal + StrToFloat(qtd[I]);
        vlItemTotal := StrToFloat(qtd[I]) * DM.FDQProdItemPedidovrvenda.AsFloat;
        vlTotalPedido := vlTotalPedido + vlItemTotal;

        { ListViewItemPedido.BeginUpdate;
          ListViewItemPedido.Items[I].Data[TMultiDetailAppearanceNames.Detail1] := 'Qtd: ' + qtd[I];
          ListViewItemPedido.EndUpdate; }
        // ListViewItemPedido.Items[I].Detail := 'Qtd: ' + qtdItem;
      end;
      ListBoxItemValorTotalVenda.ItemData.Detail := FloatToStr(vlTotalPedido);
    finally
      ListViewItemPedido.EndUpdate;
    end;
    if not EdtNumParcelaPedido.Text.IsEmpty then
    begin
      numParcela := EdtNumParcelaPedido.Text;
      EdtNumParcelaPedido.Text := '';
      EdtNumParcelaPedido.Text := numParcela;
    end;
  end
  else if CliPedido = 'S' then
  begin
    EdtCliVenda.Text := nomeCliente;
    LblCodCliPedido.Text := codCliente;
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

procedure TFVenda1.DesabilitaCampos;
begin
  EdtCliVenda.Enabled := False;
  ComboBoxFormaPagVenda.Enabled := False;
  EdtNumParcelaPedido.Enabled := False;
  EdtDescontoMoedaPedido.Enabled := False;
  ListViewItemPedido.Enabled := False;
  SpdBPesqCliVenda.Enabled := False;
  SpdBAdicionaItemPedido.Enabled := False;
  SpdBPesqItemPedido.Enabled := True;

end;

procedure TFVenda1.EdtNumParcelaPedidoExit(Sender: TObject);
begin
  valorParc := StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail) /
    StrToFloat(EdtNumParcelaPedido.Text);
  ListBoxItemParcelasVenda.Text := EdtNumParcelaPedido.Text + 'X';
  ListBoxItemParcelasVenda.ItemData.Detail := FloatToStr(valorParc);

end;

procedure TFVenda1.EdtNumParcelaPedidoTyping(Sender: TObject);
begin
valorParc := StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail) /
    StrToFloat(EdtNumParcelaPedido.Text);
  ListBoxItemParcelasVenda.Text := EdtNumParcelaPedido.Text + 'X';
  ListBoxItemParcelasVenda.ItemData.Detail := FloatToStr(valorParc);
end;

procedure TFVenda1.FormCreate(Sender: TObject);
begin
  TbControlVenda.ActiveTab := TbItemListagemVenda;
  TbControlVenda.TabPosition := TTabPosition.None;
end;

procedure TFVenda1.HabilitaCampos;
begin
  EdtCliVenda.Enabled := True;
  ComboBoxFormaPagVenda.Enabled := True;
  EdtNumParcelaPedido.Enabled := True;
  EdtDescontoMoedaPedido.Enabled := True;
  ListViewItemPedido.Enabled := True;
  SpdBPesqCliVenda.Enabled := True;
  SpdBAdicionaItemPedido.Enabled := True;
  SpdBPesqItemPedido.Enabled := True;
end;

procedure TFVenda1.LimpaCampos;
begin
  LblCodCliPedido.Text := EmptyStr;
  EdtCliVenda.Text := EmptyStr;
  ComboBoxFormaPagVenda.ItemIndex := -1;
  EdtNumParcelaPedido.Text := EmptyStr;
  EdtDescontoMoedaPedido.Text := EmptyStr;
  ListBoxItemValorTotalVenda.ItemData.Detail := EmptyStr;
  ListBoxItemParcelasVenda.Text := EmptyStr;
  ListBoxItemParcelasVenda.ItemData.Detail := EmptyStr;
  ListViewItemPedido.Items.Clear;
end;

procedure TFVenda1.ListViewItemPedidoItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  ShowMessage(ListViewItemPedido.Items[ListViewItemPedido.ItemIndex].Detail);
end;

procedure TFVenda1.ListViewPedidoItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  venda := 'S';
  SpdBEditarVenda.Visible := True;
  SpdBSalvarVenda.Visible := False;
  DesabilitaCampos;
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
var
  I: integer;
  vlItem, qtdItem: string;
begin
  contItem := 0;
  itemPedido := 'S';
  CliPedido := EmptyStr;
  LblSupApoioVenda.Text := 'Produtos';
  listCountItem := ListViewItemPedido.ItemCount;
  if listCountItem > 0 then
  begin
    vlTotalAtual := 0;
    qtdTotalAtual := 0;
    for I := 0 to listCountItem - 1 do
    begin
      vlItem := ListViewItemPedido.Items[I].Data
        [TMultiDetailAppearanceNames.Detail2].AsString;
      qtdItem := ListViewItemPedido.Items[I].Data
        [TMultiDetailAppearanceNames.Detail1].AsString;
      vlTotalItemAtual := StrToFloat(qtdItem) * StrToFloat(vlItem);

      qtdTotalAtual := qtdTotalAtual + StrToFloat(qtdItem);
      vlTotalAtual := vlTotalAtual + vlTotalItemAtual;
    end;
  end;

  AbrirFormVenda(TFConsProduto);
  MudarAbaVenda(TbItemApoioVenda, Sender);
end;

procedure TFVenda1.SpdBEditarVendaClick(Sender: TObject);
begin
  crud := 'editar';
  SpdBEditarVenda.Visible := False;
  SpdBSalvarVenda.Visible := True;
  HabilitaCampos;
end;

procedure TFVenda1.SpdBNovoVendaClick(Sender: TObject);
begin
  crud := 'inserir';
  SpdBEditarVenda.Visible := False;
  SpdBSalvarVenda.Visible := True;
  venda := 'S';
  LimpaCampos;
  HabilitaCampos;
  MudarAbaVenda(TbItemedicaoVenda, Sender);
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

procedure TFVenda1.SpdBSalvarVendaClick(Sender: TObject);
begin
  SpdBEditarVenda.Visible := True;
  SpdBSalvarVenda.Visible := False;
  DesabilitaCampos;
end;

procedure TFVenda1.SpdBVoltarItemVendaClick(Sender: TObject);
begin
  MudarAbaVenda(TbItemedicaoVenda, Sender);
end;

procedure TFVenda1.SpdBVoltarVendaEdicaoClick(Sender: TObject);
begin
  DM.FDQPedido.Active := False;
  DM.FDQConsFormaPag.Active := False;
  LimpaCampos;
  DesabilitaCampos;
  MudarAbaVenda(TbItemListagemVenda, Sender);
end;

end.
