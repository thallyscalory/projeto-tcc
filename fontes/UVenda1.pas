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
  // ksTypes, ksLoadingIndicator,
  FMX.VirtualKeyboard, System.Math,
  FMX.Platform, FMX.Ani;

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
    ListViewPedido: TListView;
    TbItemedicaoVenda: TTabItem;
    ToolBarSupApoioVenda: TToolBar;
    LblVendaEdicao: TLabel;
    SpdBVoltarVendaEdicao: TSpeedButton;
    ListBoxPedido: TListBox;
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
    BindSourceDB2: TBindSourceDB;
    EdtCliVenda: TEdit;
    ListViewItemPedido: TListView;
    BindSourceDB3: TBindSourceDB;
    ToolBar3: TToolBar;
    ListBoxItemParcelasVenda: TListBoxItem;
    BtnConfirmaApoioVenda: TButton;
    LblSupApoioVenda: TLabel;
    LblCodCliPedido: TLabel;
    LblProdutoPedido: TLabel;
    LblQtdItemPedido: TLabel;
    ListBoxItem1: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    LblAtendentePedido: TLabel;
    ComboBoxAtendentePedido: TComboBox;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    BindSourceDB5: TBindSourceDB;
    LytAtendenteItem: TLayout;
    LytNomeItem: TLayout;
    LytQteItem: TLayout;
    LytValorItem: TLayout;
    LblQteItem: TLabel;
    LblValorItem: TLabel;
    LblAtendenteItem: TLabel;
    LblNomeItem: TLabel;
    EdtQteItem: TEdit;
    EdtValorItem: TEdit;
    ComboBoxAtendenteItem: TComboBox;
    SpdBVoltarCadCOntasReceber: TSpeedButton;
    LytBotaoConfirmaItem: TLayout;
    BtnConfirmaCadContasReceber: TButton;
    LytGeralEdicaoItens: TLayout;
    BindSourceDB6: TBindSourceDB;
    TbItemClienteVenda: TTabItem;
    Layout3: TLayout;
    Layout4: TLayout;
    EditFiltroNomeCadCliVenda: TEdit;
    EditFiltroCodCadCliVenda: TEdit;
    BtnFiltrarCliVenda: TButton;
    ListViewCadCliVenda: TListView;
    ToolBar4: TToolBar;
    Label4: TLabel;
    SpdBVoltarClienteVenda: TSpeedButton;
    LinkListControlToField3: TLinkListControlToField;
    VertScrollBox1: TVertScrollBox;
    procedure SpBVoltarClick(Sender: TObject);
    procedure SpdBNovoVendaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListViewPedidoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure SpdBPesqCliVendaClick(Sender: TObject);
    procedure SpdBPesqItemPedidoClick(Sender: TObject);
    procedure SpdBAdicionaItemPedidoClick(Sender: TObject);
    procedure SpdBVoltarVendaEdicaoClick(Sender: TObject);
    procedure SpdBVoltarItemVendaClick(Sender: TObject);
    procedure ComboBoxFormaPagVendaEnter(Sender: TObject);
    procedure BtnConfirmaApoioVendaClick(Sender: TObject);
    procedure SpdBEditarVendaClick(Sender: TObject);
    procedure SpdBSalvarVendaClick(Sender: TObject);
    procedure EdtNumParcelaPedidoTyping(Sender: TObject);
    procedure SpdBDescontoPedidoClick(Sender: TObject);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure ComboBoxAtendentePedidoEnter(Sender: TObject);
    procedure ComboBoxAtendentePedidoClosePopup(Sender: TObject);
    procedure ComboBoxAtendenteItemEnter(Sender: TObject);
    procedure ListViewItemPedidoGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ComboBoxFiltroPedidoClosePopup(Sender: TObject);
    procedure SpdBVoltarCadCOntasReceberClick(Sender: TObject);
    procedure BtnConfirmaCadContasReceberClick(Sender: TObject);
    procedure ComboBoxFormaPagVendaClosePopup(Sender: TObject);
    procedure SpdBVoltarConsCliVendaApoioClick(Sender: TObject);
    procedure EdtDescontoMoedaPedidoKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtDescontoMoedaPedidoClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure ListViewItemPedidoItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure BtnFiltrarCliVendaClick(Sender: TObject);
    procedure EditFiltroNomeCadCliVendaClick(Sender: TObject);
    procedure EditFiltroCodCadCliVendaClick(Sender: TObject);
    procedure EditFiltroNomeCadCliVendaTyping(Sender: TObject);
    procedure EditFiltroCodCadCliVendaTyping(Sender: TObject);
    procedure ListViewCadCliVendaItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure EdtNumParcelaPedidoClick(Sender: TObject);
    procedure EdtValorItemClick(Sender: TObject);
    procedure EdtDescontoMoedaPedidoExit(Sender: TObject);
    procedure SpdBNovoFormaPagClick(Sender: TObject);
  private
    { Private declarations }
  public
    valorParc: Double;
    crud: string;
    FActiveForm: TForm;
    itemIndexList: integer;

  const
    DoneBarHeight = 66;

    function FocusedControl: TControl;
    function GetFocusedControlOffset(KeyboardRect: TRect): Single;

    procedure EsconderTeclado;
    procedure MostrarTeclado(const AControl: TFmxObject);
    procedure AbrirFormVenda(AFormClass: TComponentClass);
    procedure MudarAbaVenda(ATabItemVenda: TTabItem; Sender: TObject);
    procedure LimpaCampos;
    procedure HabilitaCampos;
    procedure DesabilitaCampos;
    procedure default;
    { Public declarations }
  end;

var
  FVenda1: TFVenda1;
  CliPedido, itemPedido, venda, finalizaVenda, vlParcela, tipoReceita,
    vendaEntrada: string;
  contItem, listCountItem, numParcela: integer;
  vlTotalAtual, vlTotalItemAtual, qtdTotalAtual, vlTotalPedido: Double;

implementation

{$R *.fmx}

uses UCadCli, UConsultaProduto, UDM, UPrincipal, UContasReceberVenda, UAuxiliar,
  UCadTipoReceita;

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
  paramSql, DataHora: string;
  I, maxIdPedido, maxIdItemPedido, maxIdContasReceber, maxIdBaixa: integer;
  listaItemPedido: TListViewItem;
  qtdItemTotal, vlItemTotal, vlTotalPedido: Double;
  dataAgora: TDateTime;
begin
  // FPrincipal.ksLoadingIndicator1.LoadingText.Text := 'Aguarde...';
  // FPrincipal.ksLoadingIndicator1.ShowLoading;
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
        if not DM.FDQProdItemPedido.IsEmpty then
        begin
          listaItemPedido := ListViewItemPedido.Items.Add;
          listaItemPedido.Detail := DM.FDQProdItemPedidocodigo.AsString;
          listaItemPedido.Text := DM.FDQProdItemPedidoproduto.AsString;
          listaItemPedido.Data[TMultiDetailAppearanceNames.Detail1] := qtd[I];
          listaItemPedido.Data[TMultiDetailAppearanceNames.Detail2] :=
            DM.FDQProdItemPedidovrvenda.AsString;
          if not ComboBoxAtendentePedido.Items.Text.IsEmpty then
            listaItemPedido.Data[TMultiDetailAppearanceNames.Detail3] :=
              ComboBoxAtendentePedido.Selected.Text;
          listaItemPedido.EndUpdate;

          qtdItemTotal := qtdItemTotal + StrToFloat(qtd[I]);
          vlItemTotal := StrToFloat(qtd[I]) *
            DM.FDQProdItemPedidovrvenda.AsFloat;
          vlTotalPedido := vlTotalPedido + vlItemTotal;
        end;
      end;
      if not DM.FDQProdItemPedido.IsEmpty then
      begin
        ListBoxItemValorTotalVenda.ItemData.Detail := FloatToStr(vlTotalPedido);
        if (qtdItemTotal > 1) or (qtdItemTotal < 0) then
        begin
          LblQtdItemPedido.Text := FloatToStr(qtdItemTotal) +
            ' itens adicionados';
        end
        else if qtdItemTotal = 1 then
        begin
          LblQtdItemPedido.Text := FloatToStr(qtdItemTotal) +
            ' item adicionado';
        end;
        if not EdtNumParcelaPedido.Text.IsEmpty then
        begin
          EdtNumParcelaPedidoTyping(Sender);
        end;
        if not EdtDescontoMoedaPedido.Text.IsEmpty then
        begin
          SpdBDescontoPedidoClick(Sender);
        end;
      end;
    finally
      ListViewItemPedido.EndUpdate;
    end;
    MudarAbaVenda(TbItemedicaoVenda, Sender);
  end
  else if finalizaVenda = 'S' then
  begin
    try
      if crud = 'inserir' then
      begin
        // PEDIDO
        DM.FDQMaxIdPedido.Close;
        DM.FDQMaxIdPedido.Open();
        maxIdPedido := DM.FDQMaxIdPedidomaxIdPedido.AsInteger + 1;

        DataHora := DateTimeToStr(Now);

        DM.FDQConsFormaPag.Close;
        DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value :=
          ComboBoxFormaPagVenda.Selected.Text;
        DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
        DM.FDQConsFormaPag.Open();

        DM.FDQCadPedido.Close;
        DM.FDQCadPedido.Open();
        DM.FDQCadPedido.Append;
        // DM.FDQCadPedidoid_pedido.AsInteger := maxIdPedido;
        DM.FDQCadPedidoid_cli_pedido.AsInteger :=
          StrToInt(LblCodCliPedido.Text);
        DM.FDQCadPedidodatahora_pedido.AsDateTime := StrToDateTime(DataHora);
        DM.FDQCadPedidovalor_pedido.AsFloat :=
          StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail);
        if EdtDescontoMoedaPedido.Text.IsEmpty then
        begin
          DM.FDQCadPedidodescmoeda_pedido.AsFloat := 0;
        end
        else
        begin
          DM.FDQCadPedidodescmoeda_pedido.AsFloat :=
            StrToFloat(EdtDescontoMoedaPedido.Text);
        end;
        DM.FDQCadPedidodescpercent_pedido.AsFloat := 0;
        DM.FDQCadPedidoid_formapag_pedido.AsInteger :=
          DM.FDQConsFormaPagid_forma_pag.AsInteger;
        DM.FDQCadPedidonrparcela_pedido.AsInteger :=
          StrToInt(EdtNumParcelaPedido.Text);
        DM.FDQCadPedidoobs_pedido.AsString := EmptyStr;
        DM.FDQCadPedidostatus_pedido.AsString := 'F';
        DM.FDQCadPedido.Post;

        // ITEM PEDIDO
        for I := 0 to ListViewItemPedido.ItemCount - 1 do
        begin
          DM.FDQMaxIdItemPedido.Close;
          DM.FDQMaxIdItemPedido.Open();
          maxIdItemPedido := DM.FDQMaxIdItemPedidomaxId.AsInteger + 1;

          DM.FDQConsAtendente.Close;
          DM.FDQConsAtendente.ParamByName('PUsuario').Value :=
            ListViewItemPedido.Items[I].Data
            [TMultiDetailAppearanceNames.Detail3].AsString;
          DM.FDQConsAtendente.ParamByName('PIdAtendente').Value := Null;
          DM.FDQConsAtendente.Open();

          DM.FDQCadItemPedido.Close;
          DM.FDQCadItemPedido.Open();
          DM.FDQCadItemPedido.Append;
          // DM.FDQCadItemPedidoid_item_pedido.AsInteger := maxIdItemPedido;
          DM.FDQCadItemPedidoid_pedido_item.AsInteger := maxIdPedido;
          DM.FDQCadItemPedidoid_produto_item.AsInteger :=
            StrToInt(ListViewItemPedido.Items[I].Detail);
          DM.FDQCadItemPedidoqte_item_pedido.AsFloat :=
            StrToFloat(ListViewItemPedido.Items[I].Data
            [TMultiDetailAppearanceNames.Detail1].AsString);
          DM.FDQCadItemPedidovalor_item_pedido.AsFloat :=
            StrToFloat(ListViewItemPedido.Items[I].Data
            [TMultiDetailAppearanceNames.Detail2].AsString);
          DM.FDQCadItemPedidodescmoeda_item_pedido.AsFloat := 0;
          DM.FDQCadItemPedidodescpercent_item_pedido.AsFloat := 0;
          if not DM.FDQConsAtendente.IsEmpty then
          begin
            DM.FDQCadItemPedidoid_atendente_item.AsInteger :=
              DM.FDQConsAtendenteid_funcionario.AsInteger;
          end;
          DM.FDQCadItemPedido.Post;
        end;

      end
      else if crud = 'editar' then
      begin
        // PEDIDO
        DM.FDQConsFormaPag.Close;
        DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value :=
          ComboBoxFormaPagVenda.Selected.Text;
        DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
        DM.FDQConsFormaPag.Open();

        DM.FDQAuxiliar.sql.Clear;
        DM.FDQAuxiliar.sql.Add('update pedido');
        DM.FDQAuxiliar.sql.Add(' set id_cli_pedido = :IdCli,');
        DM.FDQAuxiliar.sql.Add(' valor_pedido = :ValorPedido,');
        DM.FDQAuxiliar.sql.Add(' descmoeda_pedido = :DescMoeda,');
        DM.FDQAuxiliar.sql.Add(' descpercent_pedido = :DescPercent,');
        DM.FDQAuxiliar.sql.Add(' id_formapag_pedido = :IdFormaPag,');
        DM.FDQAuxiliar.sql.Add(' nrparcela_pedido = :NrParcela,');
        DM.FDQAuxiliar.sql.Add(' obs_pedido = :Obs,');
        DM.FDQAuxiliar.sql.Add(' status_pedido = :Status');
        DM.FDQAuxiliar.sql.Add(' where id_pedido = :IdPedido');

        DM.FDQAuxiliar.Params.ParamByName('IdCli').AsInteger :=
          StrToInt(LblCodCliPedido.Text);
        DM.FDQAuxiliar.Params.ParamByName('ValorPedido').AsFloat :=
          StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail);
        DM.FDQAuxiliar.Params.ParamByName('DescMoeda').AsFloat :=
          StrToFloat(EdtDescontoMoedaPedido.Text);
        DM.FDQAuxiliar.Params.ParamByName('DescPercent').AsFloat := 0;
        DM.FDQAuxiliar.Params.ParamByName('IdFormaPag').AsInteger :=
          DM.FDQConsFormaPagid_forma_pag.AsInteger;
        DM.FDQAuxiliar.Params.ParamByName('NrParcela').AsInteger :=
          StrToInt(EdtNumParcelaPedido.Text);
        DM.FDQAuxiliar.Params.ParamByName('Obs').AsString := EmptyStr;
        DM.FDQAuxiliar.Params.ParamByName('Status').AsString := 'F';
        DM.FDQAuxiliar.Params.ParamByName('IdPedido').AsInteger :=
          StrToInt(ListBoxItemNumPedidoVenda.ItemData.Detail);

        DM.FDQAuxiliar.ExecSQL;

        // ITEM PEDIDO
        for I := 0 to ListViewItemPedido.ItemCount - 1 do
        begin
          if not ListViewItemPedido.Items[I].ButtonText.IsEmpty then
          begin
            DM.FDQConsAtendente.Close;
            DM.FDQConsAtendente.ParamByName('PUsuario').Value :=
              ListViewItemPedido.Items[I].Data
              [TMultiDetailAppearanceNames.Detail3].AsString;
            DM.FDQConsAtendente.ParamByName('PIdAtendente').Value := Null;
            DM.FDQConsAtendente.Open();

            DM.FDQAuxiliar.sql.Clear;
            DM.FDQAuxiliar.sql.Add('update item_pedido');
            DM.FDQAuxiliar.sql.Add(' set qte_item_pedido = :QteItem,');
            DM.FDQAuxiliar.sql.Add(' valor_item_pedido = :ValorItem,');
            DM.FDQAuxiliar.sql.Add(' descmoeda_item_pedido = :DescMoeda,');
            DM.FDQAuxiliar.sql.Add(' descpercent_item_pedido = :DescPercent,');
            DM.FDQAuxiliar.sql.Add(' id_atendente_item = :IdAtendente');
            DM.FDQAuxiliar.sql.Add(' where id_item_pedido = :IdItem');

            DM.FDQAuxiliar.Params.ParamByName('QteItem').AsFloat :=
              StrToFloat(ListViewItemPedido.Items[I].Data
              [TMultiDetailAppearanceNames.Detail1].ToString);
            DM.FDQAuxiliar.Params.ParamByName('ValorItem').AsFloat :=
              StrToFloat(ListViewItemPedido.Items[I].Data
              [TMultiDetailAppearanceNames.Detail2].ToString);
            DM.FDQAuxiliar.Params.ParamByName('DescMoeda').AsFloat := 0;
            DM.FDQAuxiliar.Params.ParamByName('DescPercent').AsFloat := 0;
            DM.FDQAuxiliar.Params.ParamByName('IdAtendente').AsInteger :=
              DM.FDQConsAtendenteid_funcionario.AsInteger;
            DM.FDQAuxiliar.Params.ParamByName('IdItem').AsInteger :=
              StrToInt(ListViewItemPedido.Items[I].ButtonText);

            DM.FDQAuxiliar.ExecSQL;
          end
          else
          begin
            DM.FDQMaxIdItemPedido.Close;
            DM.FDQMaxIdItemPedido.Open();
            maxIdItemPedido := DM.FDQMaxIdItemPedidomaxId.AsInteger + 1;

            DM.FDQConsAtendente.Close;
            DM.FDQConsAtendente.ParamByName('PUsuario').Value :=
              ListViewItemPedido.Items[I].Data
              [TMultiDetailAppearanceNames.Detail3].AsString;
            DM.FDQConsAtendente.ParamByName('PIdAtendente').Value := Null;
            DM.FDQConsAtendente.Open();

            DM.FDQCadItemPedido.Close;
            DM.FDQCadItemPedido.Open();
            DM.FDQCadItemPedido.Append;
            // DM.FDQCadItemPedidoid_item_pedido.AsInteger := maxIdItemPedido;
            DM.FDQCadItemPedidoid_pedido_item.AsInteger :=
              StrToInt(ListBoxItemNumPedidoVenda.ItemData.Detail);
            DM.FDQCadItemPedidoid_produto_item.AsInteger :=
              StrToInt(ListViewItemPedido.Items[I].Detail);
            DM.FDQCadItemPedidoqte_item_pedido.AsFloat :=
              StrToFloat(ListViewItemPedido.Items[I].Data
              [TMultiDetailAppearanceNames.Detail1].AsString);
            DM.FDQCadItemPedidovalor_item_pedido.AsFloat :=
              StrToFloat(ListViewItemPedido.Items[I].Data
              [TMultiDetailAppearanceNames.Detail2].AsString);
            DM.FDQCadItemPedidodescmoeda_item_pedido.AsFloat := 0;
            DM.FDQCadItemPedidodescpercent_item_pedido.AsFloat := 0;
            if not DM.FDQConsAtendente.IsEmpty then
            begin
              DM.FDQCadItemPedidoid_atendente_item.AsInteger :=
                DM.FDQConsAtendenteid_funcionario.AsInteger;
            end;
            DM.FDQCadItemPedido.Post;
          end;
        end;

      end;

      // Contas a receber
      dataAgora := Date;

      for I := 0 to itemCountContasReceber - 1 do
      begin
        DM.FDQMaxIdContasReceber.Close;
        DM.FDQMaxIdContasReceber.Open();
        maxIdContasReceber := DM.FDQMaxIdContasRecebermaxId.AsInteger + 1;

        DM.FDQConsFormaPag.Close;
        DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
        DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value := tipoR[I];
        DM.FDQConsFormaPag.Open();

        if DM.FDQConsFormaPagavista_forma_pag.AsString = 'S' then
        begin
          DM.FDQConsCaixa.Close;
          DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
          DM.FDQConsCaixa.Open();

          // conta receber
          DM.FDQCadContasReceber.Close;
          DM.FDQCadContasReceber.Open();
          DM.FDQCadContasReceber.Append;
          // DM.FDQCadContasReceberid.AsInteger := maxIdContasReceber;

          DM.FDQCadContasReceberid_pedido.AsInteger := maxIdPedido;
          DM.FDQCadContasReceberid_cliente.AsInteger :=
            StrToInt(LblCodCliPedido.Text);
          DM.FDQCadContasReceberid_forma_pag.AsInteger :=
            DM.FDQConsFormaPagid_forma_pag.AsInteger;
          DM.FDQCadContasRecebervalor_documento.AsFloat :=
            StrToFloat(vlparc[I]);
          DM.FDQCadContasRecebervalor_pago.AsFloat := StrToFloat(vlparc[I]);
          DM.FDQCadContasRecebervalor_saldo.AsFloat := 0;
          DM.FDQCadContasReceberdata_venc.AsDateTime :=
            StrToDateTime(datavenci[I]);
          DM.FDQCadContasReceberdata_cad.AsDateTime :=
            StrToDateTime(datavenci[I]);
          DM.FDQCadContasReceberdata_quitacao.AsDateTime :=
            StrToDateTime(datavenci[I]);
          DM.FDQCadContasReceberquitado.AsString := 'S';
          DM.FDQCadContasReceber.Post;

          // baixa conta receber
          DM.FDQMaxIdBaixaContaReceber.Close;
          DM.FDQMaxIdBaixaContaReceber.Open();
          maxIdBaixa := DM.FDQMaxIdBaixaContaRecebermaxId.AsInteger + 1;

          DM.FDQCadBaixaContasReceber.Close;
          DM.FDQCadBaixaContasReceber.Open();
          DM.FDQCadBaixaContasReceber.Append;
          // DM.FDQCadBaixaContasReceberid.AsInteger := maxIdBaixa;
          DM.FDQCadBaixaContasReceberid_conta_receber.AsInteger :=
            maxIdContasReceber;
          DM.FDQCadBaixaContasReceberdata.AsDateTime :=
            StrToDateTime(datavenci[I]);
          DM.FDQCadBaixaContasRecebervalor.AsFloat := StrToFloat(vlparc[I]);
          DM.FDQCadBaixaContasReceberid_forma_pag.AsInteger :=
            DM.FDQConsFormaPagid_forma_pag.AsInteger;
          DM.FDQCadBaixaContasReceber.Post;

          // lan�amento caixa e item caixa
          DM.FDQContaReceberItemCaixa.Close;
          DM.FDQContaReceberItemCaixa.ParamByName('PIdContaReceber').Value :=
            maxIdContasReceber;
          DM.FDQContaReceberItemCaixa.Open();

          if DM.FDQConsFormaPagentraCaixa.AsString = 'S' then
          begin
            // caixa
            DM.FDQEditCaixa.sql.Clear;
            DM.FDQEditCaixa.sql.Add('update caixa set');
            DM.FDQEditCaixa.sql.Add(' vlRecebimento = :vlRecebimento');
            DM.FDQEditCaixa.sql.Add(', vlSaldo = :vlSaldo');
            DM.FDQEditCaixa.sql.Add(' where id = :id');

            DM.FDQEditCaixa.Params.ParamByName('vlRecebimento').AsFloat :=
              DM.FDQConsCaixavlRecebimento.AsFloat + StrToFloat(vlparc[I]);
            DM.FDQEditCaixa.Params.ParamByName('vlSaldo').AsFloat :=
              DM.FDQConsCaixavlSaldo.AsFloat + StrToFloat(vlparc[I]);
            DM.FDQEditCaixa.Params.ParamByName('id').AsInteger :=
              DM.FDQConsCaixaid.AsInteger;
            DM.FDQEditCaixa.ExecSQL;

            // item caixa
            DM.FDQEditItemCaixa.Close;
            DM.FDQEditItemCaixa.Open();
            DM.FDQEditItemCaixa.Append;
            DM.FDQEditItemCaixaidCaixa.AsInteger := DM.FDQConsCaixaid.AsInteger;
            DM.FDQEditItemCaixadataLancamento.AsDateTime := Now;
            DM.FDQEditItemCaixavlLancamento.AsFloat := StrToFloat(vlparc[I]);
            DM.FDQEditItemCaixadescricaoLancamento.AsString :=
              'Recebimento Venda NPed: ' + IntToStr(maxIdPedido) + ' Cli: ' +
              LblCodCliPedido.Text;
            DM.FDQEditItemCaixatipoLancamento.AsString := 'RECEBIMENTO';
            DM.FDQEditItemCaixa.Post;
          end;
        end
        else
        begin
          DM.FDQCadContasReceber.Close;
          DM.FDQCadContasReceber.Open();
          DM.FDQCadContasReceber.Append;
          // DM.FDQCadContasReceberid.AsInteger := maxIdContasReceber;
          DM.FDQCadContasReceberid_pedido.AsInteger := maxIdPedido;
          DM.FDQCadContasReceberid_cliente.AsInteger :=
            StrToInt(LblCodCliPedido.Text);
          DM.FDQCadContasReceberid_forma_pag.AsInteger :=
            DM.FDQConsFormaPagid_forma_pag.AsInteger;
          DM.FDQCadContasRecebervalor_documento.AsFloat :=
            StrToFloat(vlparc[I]);
          DM.FDQCadContasRecebervalor_saldo.AsFloat := StrToFloat(vlparc[I]);
          DM.FDQCadContasReceberdata_venc.AsDateTime :=
            StrToDateTime(datavenci[I]);
          DM.FDQCadContasReceberdata_cad.AsDateTime := dataAgora;
          DM.FDQCadContasReceberquitado.AsString := 'N';
          DM.FDQCadContasReceber.Post;
        end;
      end;

      DM.FDConnection1.CommitRetaining;
      nomeCliente := EmptyStr;
      codCliente := EmptyStr;
      CliPedido := EmptyStr;
      itemPedido := EmptyStr;
      DM.FDQPedido.Active := False;
      DM.FDQConsFormaPag.Active := False;
      LimpaCampos;
      DesabilitaCampos;
      MudarAbaVenda(TbItemListagemVenda, Sender);
    except
      on E: Exception do
        ShowMessage('Erro!' + #13#10 + E.Message);
    end;
  end;
  // FPrincipal.ksLoadingIndicator1.HideLoading;
end;

procedure TFVenda1.BtnConfirmaCadContasReceberClick(Sender: TObject);
var
  I: integer;
  vlItemEditado, qtdItemEditado: string;
begin
  ListViewItemPedido.BeginUpdate;
  ListViewItemPedido.Items[itemIndexList].Data
    [TMultiDetailAppearanceNames.Detail1] := EdtQteItem.Text;
  ListViewItemPedido.Items[itemIndexList].Data
    [TMultiDetailAppearanceNames.Detail2] := EdtValorItem.Text;
  ListViewItemPedido.Items[itemIndexList].Data
    [TMultiDetailAppearanceNames.Detail3] :=
    ComboBoxAtendenteItem.Selected.Text;
  ListViewItemPedido.EndUpdate;
  LytGeralEdicaoItens.Visible := False;

  vlTotalAtual := 0;
  qtdTotalAtual := 0;
  for I := 0 to ListViewItemPedido.ItemCount - 1 do
  begin
    vlItemEditado := ListViewItemPedido.Items[I].Data
      [TMultiDetailAppearanceNames.Detail2].AsString;
    qtdItemEditado := ListViewItemPedido.Items[I].Data
      [TMultiDetailAppearanceNames.Detail1].AsString;
    vlTotalItemAtual := StrToFloat(qtdItemEditado) * StrToFloat(vlItemEditado);

    qtdTotalAtual := qtdTotalAtual + StrToFloat(qtdItemEditado);
    vlTotalAtual := vlTotalAtual + vlTotalItemAtual;
  end;

  ListBoxItemValorTotalVenda.ItemData.Detail := FloatToStr(vlTotalAtual);
  if (qtdTotalAtual > 1) or (qtdTotalAtual < 0) then
  begin
    LblQtdItemPedido.Text := FloatToStr(qtdTotalAtual) + ' itens adicionados';
  end
  else if qtdTotalAtual = 1 then
  begin
    LblQtdItemPedido.Text := FloatToStr(qtdTotalAtual) + ' item adicionado';
  end;
  if not EdtNumParcelaPedido.Text.IsEmpty then
  begin
    EdtNumParcelaPedidoTyping(Sender);
  end;
  if not EdtDescontoMoedaPedido.Text.IsEmpty then
  begin
    SpdBDescontoPedidoClick(Sender);
  end;
end;

procedure TFVenda1.BtnFiltrarCliVendaClick(Sender: TObject);
begin
  EditFiltroNomeCadCliVenda.Text := EmptyStr;
  EditFiltroCodCadCliVenda.Text := EmptyStr;
  DM.FDQFiltroCadCLi.Active := False;
  DM.FDQFiltroCadCLi.Close;
  DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := '%';
  DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
  DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := 'A';
  DM.FDQFiltroCadCLi.Open();
  DM.FDQFiltroCadCLi.Active := True;
end;

procedure TFVenda1.ComboBoxAtendenteItemEnter(Sender: TObject);
var
  I: integer;
begin
  ComboBoxAtendenteItem.Items.Clear;
  // DM.FDQConsAtendente.Active := False;
  DM.FDQConsAtendente.Close;
  DM.FDQConsAtendente.ParamByName('PIdAtendente').Value := '%';
  DM.FDQConsAtendente.ParamByName('PUsuario').Value := Null;
  DM.FDQConsAtendente.Open();
  for I := 1 to DM.FDQConsAtendente.RowsAffected do
  begin
    // DM.FDQConsAtendente.Active := False;
    DM.FDQConsAtendente.Close;
    DM.FDQConsAtendente.ParamByName('PIdAtendente').Value := IntToStr(I);
    DM.FDQConsAtendente.ParamByName('PUsuario').Value := Null;
    DM.FDQConsAtendente.Open();
    ComboBoxAtendenteItem.Items.Add(DM.FDQConsAtendenteusuario.AsString);
  end;

end;

procedure TFVenda1.ComboBoxAtendentePedidoClosePopup(Sender: TObject);
var
  I: integer;
begin
  for I := 0 to ListViewItemPedido.ItemCount - 1 do
  begin
    if ListViewItemPedido.Items[I].Data[TMultiDetailAppearanceNames.Detail3]
      .ToString.IsEmpty then
    begin
      ListViewItemPedido.BeginUpdate;
      ListViewItemPedido.Items[I].Data[TMultiDetailAppearanceNames.Detail3] :=
        ComboBoxAtendentePedido.Selected.Text;
      ListViewItemPedido.EndUpdate;
    end;
  end;

end;

procedure TFVenda1.ComboBoxAtendentePedidoEnter(Sender: TObject);
begin
  ComboBoxAtendentePedido.Items.Clear;
  DM.FDQConsAtendente.Active := False;
  DM.FDQConsAtendente.Close;
  DM.FDQConsAtendente.ParamByName('PIdAtendente').Value := '%';
  DM.FDQConsAtendente.ParamByName('PUsuario').Value := Null;
  DM.FDQConsAtendente.Open();
  DM.FDQConsAtendente.Active := True;
end;

procedure TFVenda1.ComboBoxFiltroPedidoClosePopup(Sender: TObject);
var
  filtroFormaPag, filtroStatus, filtroStatusCond: string;
begin
  if ComboBoxFiltroPedido.ItemIndex = 0 then
  begin
    filtroFormaPag := EmptyStr;
    filtroStatusCond := EmptyStr;
    filtroStatus := 'F';
  end
  else if ComboBoxFiltroPedido.ItemIndex = 1 then
  begin
    filtroFormaPag := EmptyStr;
    filtroStatusCond := EmptyStr;
    filtroStatus := 'A';
  end
  else if ComboBoxFiltroPedido.ItemIndex = 2 then
  begin
    filtroFormaPag := 'S';
    filtroStatusCond := 'F';
    filtroStatus := EmptyStr;
  end;

  DM.FDQPedido.Active := False;
  DM.FDQPedido.Close;
  DM.FDQPedido.ParamByName('PFormaPag').Value := filtroFormaPag;
  DM.FDQPedido.ParamByName('PStatusPedCond').Value := filtroStatusCond;
  DM.FDQPedido.ParamByName('PStatusPedido').Value := filtroStatus;
  DM.FDQPedido.Open();
  DM.FDQPedido.Active := True;
end;

procedure TFVenda1.ComboBoxFormaPagVendaClosePopup(Sender: TObject);
begin
  DM.FDQConsFormaPag.Close;
  DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
  DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value :=
    ComboBoxFormaPagVenda.Selected.Text;
  DM.FDQConsFormaPag.ParamByName('PStatusFormaPag').Value := 'A';
  DM.FDQConsFormaPag.Open();

  if (DM.FDQConsFormaPagavista_forma_pag.AsString = 'N') and
    (DM.FDQConsFormaPaggeraconta_forma_pag.AsString = 'S') then
  begin
    EdtNumParcelaPedido.Enabled := True;
  end
  else
  begin
    EdtNumParcelaPedido.Enabled := False;
    EdtNumParcelaPedido.Text := '1';
  end;

end;

procedure TFVenda1.ComboBoxFormaPagVendaEnter(Sender: TObject);
begin
  ComboBoxFormaPagVenda.Items.Clear;
  DM.FDQConsFormaPag.Close;
  DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := '%';
  DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value := Null;
  DM.FDQConsFormaPag.ParamByName('PStatusFormaPag').Value := 'A';
  DM.FDQConsFormaPag.Open();

  DM.FDQConsFormaPag.First;
  while not DM.FDQConsFormaPag.Eof do
  begin
    ComboBoxFormaPagVenda.Items.Add
      (DM.FDQConsFormaPagdescricao_forma_pag.AsString);

    DM.FDQConsFormaPag.Next;
  end;
  // DM.FDQConsFormaPag.Active := True;
end;

procedure TFVenda1.default;
var
  Sender: TObject;
begin
  ComboBoxFormaPagVendaEnter(Sender);
  ComboBoxAtendentePedidoEnter(Sender);

  ComboBoxFormaPagVenda.ItemIndex := 0;
  ComboBoxAtendentePedido.ItemIndex := 0;
  EdtNumParcelaPedido.Text := '1';
  EdtDescontoMoedaPedido.Text := '0,00';

end;

procedure TFVenda1.DesabilitaCampos;
begin
  EdtCliVenda.Enabled := False;
  ComboBoxFormaPagVenda.Enabled := False;
  EdtNumParcelaPedido.Enabled := False;
  EdtDescontoMoedaPedido.Enabled := False;
  ListViewItemPedido.Locked := True;
  SpdBPesqCliVenda.Enabled := False;
  SpdBAdicionaItemPedido.Enabled := False;
  SpdBPesqItemPedido.Enabled := True;
  ComboBoxAtendentePedido.Enabled := False;

end;

procedure TFVenda1.EditFiltroCodCadCliVendaClick(Sender: TObject);
begin
  MostrarTeclado(EditFiltroCodCadCliVenda);
end;

procedure TFVenda1.EditFiltroCodCadCliVendaTyping(Sender: TObject);
begin
  EditFiltroNomeCadCliVenda.Text := EmptyStr;
  DM.FDQFiltroCadCLi.Active := False;
  DM.FDQFiltroCadCLi.Close;
  if EditFiltroCodCadCliVenda.Text.IsEmpty then
  begin
    DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := Null;
  end
  else
  begin
    DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value :=
      EditFiltroCodCadCliVenda.Text;
    DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := 'A';
  end;
  DM.FDQFiltroCadCLi.Open();
  DM.FDQFiltroCadCLi.Active := True;
end;

procedure TFVenda1.EditFiltroNomeCadCliVendaClick(Sender: TObject);
begin
  MostrarTeclado(EditFiltroNomeCadCliVenda);
end;

procedure TFVenda1.EditFiltroNomeCadCliVendaTyping(Sender: TObject);
begin
  EditFiltroCodCadCliVenda.Text := EmptyStr;
  DM.FDQFiltroCadCLi.Active := False;
  DM.FDQFiltroCadCLi.Close;
  if EditFiltroNomeCadCliVenda.Text.IsEmpty then
  begin
    DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := Null;
  end
  else
  begin
    DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value :=
      '%' + EditFiltroNomeCadCliVenda.Text + '%';
    DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := 'A';
  end;
  DM.FDQFiltroCadCLi.Open();
  DM.FDQFiltroCadCLi.Active := True;
end;

procedure TFVenda1.EdtDescontoMoedaPedidoClick(Sender: TObject);
begin
  MostrarTeclado(EdtDescontoMoedaPedido);
end;

procedure TFVenda1.EdtDescontoMoedaPedidoExit(Sender: TObject);
begin
  // EdtDescontoMoedaPedido.Text := FormatFloat('###,###,##0.00',
  // StrToFloat(EdtDescontoMoedaPedido.Text));
end;

procedure TFVenda1.EdtDescontoMoedaPedidoKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
var
  valorDesc: Double;
  vlItem, qtdItem: string;
  I: integer;
begin
  if Key = vkReturn then
  begin
    listCountItem := ListViewItemPedido.ItemCount;
    if not EdtDescontoMoedaPedido.Text.IsEmpty then
    begin
      if StrToFloat(EdtDescontoMoedaPedido.Text) >=
        StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail) then
      begin
        EdtDescontoMoedaPedido.Text := EmptyStr;
        ShowMessage('Desconto n�o pode ser maior ou igual ao valor total');
      end
      else if listCountItem > 0 then
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

        valorDesc := vlTotalAtual - StrToFloat(EdtDescontoMoedaPedido.Text);
        ListBoxItemValorTotalVenda.ItemData.Detail := FloatToStr(valorDesc);

        if not EdtNumParcelaPedido.Text.IsEmpty then
        begin
          EdtNumParcelaPedidoTyping(Sender);
        end;
      end
      else if listCountItem = 0 then
      begin
        EdtDescontoMoedaPedido.Text := EmptyStr;
        ShowMessage('Falta informar algum produto');
      end;

    end;
    EsconderTeclado;
  end;
end;

procedure TFVenda1.EdtNumParcelaPedidoClick(Sender: TObject);
begin
{$IFDEF ANDROID}
  MostrarTeclado(EdtNumParcelaPedido);
{$ENDIF}
end;

procedure TFVenda1.EdtNumParcelaPedidoTyping(Sender: TObject);
begin
  if not EdtNumParcelaPedido.Text.IsEmpty then
  begin
    if not ListBoxItemValorTotalVenda.ItemData.Detail.IsEmpty then
    begin
      valorParc := StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail) /
        StrToFloat(EdtNumParcelaPedido.Text);
    end
    else
    begin
      valorParc := 0;
    end;
    ListBoxItemParcelasVenda.Text := EdtNumParcelaPedido.Text + 'X';
    ListBoxItemParcelasVenda.ItemData.Detail := FloatToStr(valorParc);
  end
  else
  begin
    ListBoxItemParcelasVenda.Text := EmptyStr;
    ListBoxItemParcelasVenda.ItemData.Detail := EmptyStr;
  end;
end;

procedure TFVenda1.EdtValorItemClick(Sender: TObject);
begin
  MostrarTeclado(EdtValorItem);
end;

procedure TFVenda1.EsconderTeclado;
var
  keyboard: IFMXVirtualKeyboardService;
begin
  TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService,
    IInterface(keyboard));
  if (keyboard <> nil) then
    keyboard.HideVirtualKeyboard;
end;

function TFVenda1.FocusedControl: TControl;
begin
  Result := nil;
  if Assigned(Focused) and (Focused.GetObject is TControl) then
    Result := TControl(Focused.GetObject);
end;

procedure TFVenda1.FormCreate(Sender: TObject);
begin
  TbControlVenda.ActiveTab := TbItemListagemVenda;
  TbControlVenda.TabPosition := TTabPosition.None;
end;

procedure TFVenda1.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var
  keyboard: IFMXVirtualKeyboardService;
begin
  if Key = vkHardwareBack then
  begin
    Key := 0;
    if TecladoVirtualVisible then
    begin
      if TPlatformServices.Current.SupportsPlatformService
        (IFMXVirtualKeyboardService, keyboard) then
      begin
        if TVirtualKeyBoardState.Visible in keyboard.GetVirtualKeyBoardState
        then
        begin
          keyboard.HideVirtualKeyboard;
        end;
      end;
    end
    else
    begin
      if TbControlVenda.ActiveTab = TbItemListagemVenda then
      begin
        SpBVoltarClick(Sender);
      end
      else if TbControlVenda.ActiveTab = TbItemedicaoVenda then
      begin
        SpdBVoltarVendaEdicaoClick(Sender);
      end
      else if TbControlVenda.ActiveTab = TbItemPedidoItemVenda then
      begin
        SpdBVoltarItemVendaClick(Sender);
      end
      else if TbControlVenda.ActiveTab = TbItemApoioVenda then
      begin
        if SpdBVoltarCadCOntasReceber.Visible then
        begin
          SpdBVoltarCadCOntasReceberClick(Sender);
        end
        else
        begin
          BtnConfirmaApoioVendaClick(Sender);
        end;
      end
      else if TbControlVenda.ActiveTab = TbItemClienteVenda then
      begin
        SpdBVoltarConsCliVendaApoioClick(Sender);
      end;

    end;
  end;
end;

procedure TFVenda1.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TecladoVirtualVisible := False;
  // tbPrincipal.AnimateFloat('Position.Y', FSavedY, 0.1);
  // tbPrincipal.Align := TAlignLayout.alClient;

  if not KeyboardVisible then
    AnimateFloat('Padding.Top', 0, 0.1);
end;

procedure TFVenda1.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
var
  O: TFmxObject;
begin
  inherited;
  { ListBoxEdicaoCadCli.Align := TAlignLayout.Top;
    ListBoxEdicaoCadCli.Height := ((Self.Height) - (Self.Height * 0.50)); }
  TecladoVirtualVisible := True;
  // tbPrincipal.Align := TAlignLayout.alNone;
  // FSavedY := tbPrincipal.Position.Y;
  // tbPrincipal.AnimateFloat('Position.Y', FSavedY + GetFocusedControlOffset(Bounds), 0.1);
  if Assigned(Focused) and (Focused.GetObject is TControl) then
    if TControl(Focused).AbsoluteRect.Bottom - Padding.Top >=
      (Bounds.Top - DoneBarHeight) then
    begin
      for O in Children do
        if (O is TFloatAnimation) and
          (TFloatAnimation(O).PropertyName = 'Padding.Top') then
          TFloatAnimation(O).StopAtCurrent;
      AnimateFloat('Padding.Top', Bounds.Top - DoneBarHeight - TControl(Focused)
        .AbsoluteRect.Bottom + Padding.Top, 0.2)
    end
    else
  else
    AnimateFloat('Padding.Top', 0, 0.1);
end;

function TFVenda1.GetFocusedControlOffset(KeyboardRect: TRect): Single;
var
  Control: TControl;
  ControlPos: TPointF;
  KeyboardTop: Single;
begin
  Result := 0;
  KeyboardTop := Height - (KeyboardRect.Bottom - KeyboardRect.Top) - 66;
  // At least, should be. 66 is the height of the keyboard "done" bar
  Control := FocusedControl;
  if Assigned(Control) then
  begin
    ControlPos := Control.LocalToAbsolute(PointF(0, 0));
    Result := KeyboardTop - ControlPos.Y + Control.Height + 2;
    if Result >= 0 then
      Result := 0;
  end;
end;

procedure TFVenda1.HabilitaCampos;
begin
  EdtCliVenda.Enabled := False;
  ComboBoxFormaPagVenda.Enabled := True;
  EdtNumParcelaPedido.Enabled := True;
  EdtDescontoMoedaPedido.Enabled := True;
  ListViewItemPedido.Locked := False;
  SpdBPesqCliVenda.Enabled := True;
  SpdBAdicionaItemPedido.Enabled := True;
  SpdBPesqItemPedido.Enabled := True;
  ComboBoxAtendentePedido.Enabled := True;
end;

procedure TFVenda1.LimpaCampos;
begin
  LblCodCliPedido.Text := EmptyStr;
  EdtCliVenda.Text := EmptyStr;
  ComboBoxFormaPagVenda.Items.Clear;
  EdtNumParcelaPedido.Text := EmptyStr;
  EdtDescontoMoedaPedido.Text := EmptyStr;
  ListBoxItemValorTotalVenda.ItemData.Detail := EmptyStr;
  ListBoxItemParcelasVenda.Text := EmptyStr;
  ListBoxItemParcelasVenda.ItemData.Detail := EmptyStr;
  ListViewItemPedido.Items.Clear;
  LblQtdItemPedido.Text := EmptyStr;
  ComboBoxAtendentePedido.Items.Clear;
end;

procedure TFVenda1.ListViewCadCliVendaItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  MessageDlg('Voc� deseja adicionar este cliente ao pedido?',
    System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes,
    System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    begin
      case AResult of
        mrYES:
          begin
            // caso sim
            EdtCliVenda.Text := DM.FDQFiltroCadCLinome_cli.AsString;
            LblCodCliPedido.Text := DM.FDQFiltroCadCLiid_cli.AsString;

            EditFiltroNomeCadCliVenda.Text := EmptyStr;
            EditFiltroCodCadCliVenda.Text := EmptyStr;
            MudarAbaVenda(TbItemedicaoVenda, Sender);
            DM.FDQFiltroCadCLi.Active := False;
          end;
        mrNo:
          begin
            // caso n�o
          end;
      end;
    end);
end;

procedure TFVenda1.ListViewItemPedidoGesture(Sender: TObject;
const EventInfo: TGestureEventInfo; var Handled: Boolean);

begin
  { if EventInfo.GestureID = igiLongTap then
    begin
    itemIndexList := ListViewItemPedido.ItemIndex;
    LblNomeItem.Text := ListViewItemPedido.Items
    [ListViewItemPedido.ItemIndex].Text;
    EdtQteItem.Text := ListViewItemPedido.Items[ListViewItemPedido.ItemIndex]
    .Data[TMultiDetailAppearanceNames.Detail1].ToString;
    EdtValorItem.Text := ListViewItemPedido.Items[ListViewItemPedido.ItemIndex]
    .Data[TMultiDetailAppearanceNames.Detail2].ToString;

    // DM.FDQConsAtendente.Active := False;

    ComboBoxAtendenteItem.Items.Clear;
    ComboBoxAtendenteItem.Items.Add(ListViewItemPedido.Items
    [ListViewItemPedido.ItemIndex].Data[TMultiDetailAppearanceNames.Detail3]
    .ToString);
    ComboBoxAtendenteItem.ItemIndex := 0;
    LytGeralEdicaoItens.Visible := True;
    end; }
end;

procedure TFVenda1.ListViewItemPedidoItemClick(const Sender: TObject;
const AItem: TListViewItem);
begin
  itemIndexList := ListViewItemPedido.ItemIndex;
  LblNomeItem.Text := ListViewItemPedido.Items
    [ListViewItemPedido.ItemIndex].Text;
  EdtQteItem.Text := ListViewItemPedido.Items[ListViewItemPedido.ItemIndex].Data
    [TMultiDetailAppearanceNames.Detail1].ToString;
  EdtValorItem.Text := ListViewItemPedido.Items[ListViewItemPedido.ItemIndex]
    .Data[TMultiDetailAppearanceNames.Detail2].ToString;

  // DM.FDQConsAtendente.Active := False;

  ComboBoxAtendenteItem.Items.Clear;
  ComboBoxAtendenteItem.Items.Add(ListViewItemPedido.Items
    [ListViewItemPedido.ItemIndex].Data[TMultiDetailAppearanceNames.Detail3]
    .ToString);
  ComboBoxAtendenteItem.ItemIndex := 0;
  LytGeralEdicaoItens.Visible := True;
end;

procedure TFVenda1.ListViewPedidoItemClick(const Sender: TObject;
const AItem: TListViewItem);
var
  listaItem: TListViewItem;
  qteCount: Double;
begin
{$IFDEF MSWINDOWS}
  ListBoxItem1.Height := 44;
  ListBoxItemNumPedidoVenda.Height := 44;
  ListBoxItem2.Height := 44;
  ListBoxItem3.Height := 44;
  ListBoxItem4.Height := 44;
  ListBoxItemValorTotalVenda.Height := 44;
  ListBoxItem5.Height := 44;
  ListBoxItemprodutoVenda.Height := 44;
  ListBoxItemParcelasVenda.Height := 44;
  ListBoxItem6.Height := 44;
{$ENDIF}
  if ComboBoxFiltroPedido.ItemIndex = 0 then
  begin
    MessageDlg('Pedido j� fechado! Deseja visualizar?',
      System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
        case AResult of
          mrYES:
            begin
              // caso sim

              ListViewItemPedido.Items.Clear;

              DM.FDQConsItemPedido.Close;
              DM.FDQConsItemPedido.ParamByName('PIdPedido').Value :=
                ListBoxItemNumPedidoVenda.ItemData.Detail;
              DM.FDQConsItemPedido.Open();

              if not DM.FDQConsItemPedido.IsEmpty then
              begin
                qteCount := 0;
                DM.FDQConsItemPedido.First;
                while not DM.FDQConsItemPedido.Eof do
                begin
                  listaItem := ListViewItemPedido.Items.Add;
                  listaItem.Text := DM.FDQConsItemPedidoproduto.AsString;
                  listaItem.Data[TMultiDetailAppearanceNames.Detail1] :=
                    DM.FDQConsItemPedidoqte_item_pedido.AsString;
                  listaItem.Data[TMultiDetailAppearanceNames.Detail2] :=
                    DM.FDQConsItemPedidovalor_item_pedido.AsString;
                  listaItem.Data[TMultiDetailAppearanceNames.Detail3] :=
                    DM.FDQConsItemPedidousuario.AsString;
                  listaItem.ButtonText :=
                    DM.FDQConsItemPedidoid_item_pedido.AsString;
                  listaItem.Detail :=
                    DM.FDQConsItemPedidoid_produto_item.AsString;

                  DM.FDQConsItemPedido.Next;

                  qteCount := qteCount +
                    DM.FDQConsItemPedidoqte_item_pedido.AsFloat;
                end;
                if qteCount = 1 then
                  LblQtdItemPedido.Text := FloatToStr(qteCount) +
                    ' item adicionado'
                else
                  LblQtdItemPedido.Text := FloatToStr(qteCount) +
                    ' itens adicionados';
              end;

              ListBoxItemValorTotalVenda.ItemData.Detail :=
                DM.FDQPedidovalor_pedido.AsString;
              LblCodCliPedido.Text := DM.FDQPedidoid_cli_pedido.AsString;
              EdtCliVenda.Text := DM.FDQPedidonome_cli.AsString;
              ComboBoxFormaPagVenda.Items.Add
                (DM.FDQPedidodescricao_forma_pag.AsString);
              ComboBoxFormaPagVenda.ItemIndex := 0;
              EdtNumParcelaPedido.Text := DM.FDQPedidonrparcela_pedido.AsString;
              EdtDescontoMoedaPedido.Text :=
                DM.FDQPedidodescmoeda_pedido.AsString;
              if EdtDescontoMoedaPedido.Text.IsEmpty then
                EdtDescontoMoedaPedido.Text := '0';
              SpdBDescontoPedidoClick(Sender);
              ComboBoxAtendentePedidoEnter(Sender);
              ComboBoxAtendentePedido.ItemIndex := 0;

              ComboBoxFormaPagVendaClosePopup(Sender);

              crud := EmptyStr;
              venda := 'S';
              SpdBEditarVenda.Visible := True;
              SpdBSalvarVenda.Visible := False;
              DesabilitaCampos;
              MudarAbaVenda(TbItemedicaoVenda, Sender);
            end;
          mrNo:
            begin
              // caso n�o
            end;
        end;
      end);
  end
  else
  begin
    ListViewItemPedido.Items.Clear;

    DM.FDQConsItemPedido.Close;
    DM.FDQConsItemPedido.ParamByName('PIdPedido').Value :=
      ListBoxItemNumPedidoVenda.ItemData.Detail;
    DM.FDQConsItemPedido.Open();

    if not DM.FDQConsItemPedido.IsEmpty then
    begin
      qteCount := 0;
      DM.FDQConsItemPedido.First;
      while not DM.FDQConsItemPedido.Eof do
      begin
        listaItem := ListViewItemPedido.Items.Add;
        listaItem.Text := DM.FDQConsItemPedidoproduto.AsString;
        listaItem.Data[TMultiDetailAppearanceNames.Detail1] :=
          DM.FDQConsItemPedidoqte_item_pedido.AsString;
        listaItem.Data[TMultiDetailAppearanceNames.Detail2] :=
          DM.FDQConsItemPedidovalor_item_pedido.AsString;
        listaItem.Data[TMultiDetailAppearanceNames.Detail3] :=
          DM.FDQConsItemPedidousuario.AsString;
        listaItem.ButtonText := DM.FDQConsItemPedidoid_item_pedido.AsString;
        listaItem.Detail := DM.FDQConsItemPedidoid_produto_item.AsString;
        DM.FDQConsItemPedido.Next;

        qteCount := qteCount + DM.FDQConsItemPedidoqte_item_pedido.AsFloat;
      end;
      if qteCount = 1 then
        LblQtdItemPedido.Text := FloatToStr(qteCount) + ' item adicionado'
      else
        LblQtdItemPedido.Text := FloatToStr(qteCount) + ' itens adicionados';
    end;

    ListBoxItemValorTotalVenda.ItemData.Detail :=
      DM.FDQPedidovalor_pedido.AsString;
    LblCodCliPedido.Text := DM.FDQPedidoid_cli_pedido.AsString;
    EdtCliVenda.Text := DM.FDQPedidonome_cli.AsString;
    ComboBoxFormaPagVenda.Items.Add(DM.FDQPedidodescricao_forma_pag.AsString);
    ComboBoxFormaPagVenda.ItemIndex := 0;
    EdtNumParcelaPedido.Text := DM.FDQPedidonrparcela_pedido.AsString;
    EdtDescontoMoedaPedido.Text := DM.FDQPedidodescmoeda_pedido.AsString;
    if EdtDescontoMoedaPedido.Text.IsEmpty then
      EdtDescontoMoedaPedido.Text := '0';
    SpdBDescontoPedidoClick(Sender);
    ComboBoxAtendentePedidoEnter(Sender);
    ComboBoxAtendentePedido.ItemIndex := 0;

    ComboBoxFormaPagVendaClosePopup(Sender);

    crud := EmptyStr;
    venda := 'S';
    SpdBEditarVenda.Visible := True;
    SpdBSalvarVenda.Visible := False;
    DesabilitaCampos;
    MudarAbaVenda(TbItemedicaoVenda, Sender);
  end;
end;

procedure TFVenda1.MostrarTeclado(const AControl: TFmxObject);
var
  keyboard: IFMXVirtualKeyboardService;
begin
  TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService,
    IInterface(keyboard));
  if (keyboard <> nil) then
    keyboard.ShowVirtualKeyboard(AControl);
end;

procedure TFVenda1.MudarAbaVenda(ATabItemVenda: TTabItem; Sender: TObject);
begin
  ActMudarAbaVenda.Tab := ATabItemVenda;
  ActMudarAbaVenda.ExecuteTarget(Sender);
end;

procedure TFVenda1.SpBVoltarClick(Sender: TObject);
begin
  DM.FDQPedido.Active := False;
  CliPedido := EmptyStr;
  itemPedido := EmptyStr;
  venda := EmptyStr;
  Close;
end;

procedure TFVenda1.SpdBAdicionaItemPedidoClick(Sender: TObject);
var
  I: integer;
  vlItem, qtdItem: string;
begin
  SpdBVoltarCadCOntasReceber.Visible := False;
  contItem := 0;
  itemPedido := 'S';
  CliPedido := EmptyStr;
  finalizaVenda := EmptyStr;
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

  { if not Assigned(FConsProduto) then
    FConsProduto := TFConsProduto.Create(nil);
    FConsProduto.ShowModal(
    procedure(modalResult: TModalResult)
    begin
    end); }
end;

procedure TFVenda1.SpdBDescontoPedidoClick(Sender: TObject);
var
  valorDesc: Double;
  vlItem, qtdItem: string;
  I: integer;
begin
  listCountItem := ListViewItemPedido.ItemCount;
  if not EdtDescontoMoedaPedido.Text.IsEmpty then
  begin
    if StrToFloat(EdtDescontoMoedaPedido.Text) >=
      StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail) then
    begin
      EdtDescontoMoedaPedido.Text := EmptyStr;
      ShowMessage('Desconto n�o pode ser maior ou igual ao valor total');
    end
    else if listCountItem > 0 then
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

      valorDesc := vlTotalAtual - StrToFloat(EdtDescontoMoedaPedido.Text);
      ListBoxItemValorTotalVenda.ItemData.Detail := FloatToStr(valorDesc);

      if not EdtNumParcelaPedido.Text.IsEmpty then
      begin
        EdtNumParcelaPedidoTyping(Sender);
      end;
    end
    else if listCountItem = 0 then
    begin
      EdtDescontoMoedaPedido.Text := EmptyStr;
      ShowMessage('Faltar informar algum produto');
    end;

  end;

end;

procedure TFVenda1.SpdBEditarVendaClick(Sender: TObject);
begin
  crud := 'editar';
  SpdBEditarVenda.Visible := False;
  SpdBSalvarVenda.Visible := True;
  HabilitaCampos;
end;

procedure TFVenda1.SpdBNovoFormaPagClick(Sender: TObject);
begin
  Application.CreateForm(TFCadTipoReceita, FCadTipoReceita);
  if not Assigned(FCadTipoReceita) then
    FCadTipoReceita := TFCadTipoReceita.Create(nil);
  FCadTipoReceita.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFVenda1.SpdBNovoVendaClick(Sender: TObject);
begin
{$IFDEF MSWINDOWS}
  ListBoxItem1.Height := 44;
  ListBoxItemNumPedidoVenda.Height := 44;
  ListBoxItem2.Height := 44;
  ListBoxItem3.Height := 44;
  ListBoxItem4.Height := 44;
  ListBoxItemValorTotalVenda.Height := 44;
  ListBoxItem5.Height := 44;
  ListBoxItemprodutoVenda.Height := 44;
  ListBoxItemParcelasVenda.Height := 44;
  ListBoxItem6.Height := 44;
{$ENDIF}
  DM.FDQPedido.Active := False;
  crud := 'inserir';
  SpdBEditarVenda.Visible := False;
  SpdBSalvarVenda.Visible := True;
  nomeCliente := EmptyStr;
  codCliente := EmptyStr;
  venda := 'S';
  LimpaCampos;
  HabilitaCampos;
  MudarAbaVenda(TbItemedicaoVenda, Sender);
  default;
  ComboBoxFormaPagVendaClosePopup(Sender);
end;

procedure TFVenda1.SpdBPesqCliVendaClick(Sender: TObject);
begin
  { SpdBVoltarCadCOntasReceber.Visible := False;
    LblSupApoioVenda.Text := 'Clientes';
    finalizaVenda := EmptyStr;
    itemPedido := EmptyStr;
    CliPedido := 'S';
    AbrirFormVenda(TFCadCli); }
  MudarAbaVenda(TbItemClienteVenda, Sender);

  { if not Assigned(FCadCli) then
    FCadCli := TFCadCli.Create(nil);
    FCadCli.ShowModal(
    procedure(modalResult: TModalResult)
    begin
    end); }
end;

procedure TFVenda1.SpdBPesqItemPedidoClick(Sender: TObject);
begin
  LytGeralEdicaoItens.Visible := False;
  MudarAbaVenda(TbItemPedidoItemVenda, Sender);
end;

procedure TFVenda1.SpdBSalvarVendaClick(Sender: TObject);
var
  maxIdPedido, maxIdItemPedido: integer;
  DataHora: string;
begin
  MessageDlg('Deseja finalizar o pedido?',
    System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes,
    System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    var
      I: integer;
    begin
      case AResult of
        mrYES:
          begin
            // caso sim
            try
              DM.FDQConsFormaPag.Close;
              DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
              DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value :=
                ComboBoxFormaPagVenda.Selected.Text;
              DM.FDQConsFormaPag.Open();

              if DM.FDQConsFormaPaggeraconta_forma_pag.AsString = 'S' then
              begin
                if (ListViewItemPedido.ItemCount > 0) and
                  (LblCodCliPedido.Text <> EmptyStr) and
                  (StrToInt(EdtNumParcelaPedido.Text) > 0) then
                begin
                  if StrToInt(EdtNumParcelaPedido.Text) > 1 then
                  begin
                    MessageDlg('Pedido com entrada?',
                      System.UITypes.TMsgDlgType.mtInformation,
                      [System.UITypes.TMsgDlgBtn.mbYes,
                      System.UITypes.TMsgDlgBtn.mbNo], 0,
                      procedure(const AResult: System.UITypes.TModalResult)
                      begin
                        case AResult of
                          mrYES:
                            begin
                              vendaEntrada := 'S';
                              LblSupApoioVenda.Text := 'Receber';
                              SpdBVoltarCadCOntasReceber.Visible := True;
                              CliPedido := EmptyStr;
                              itemPedido := EmptyStr;
                              finalizaVenda := 'S';
                              numParcela := StrToInt(EdtNumParcelaPedido.Text);
                              vlParcela :=
                                ListBoxItemParcelasVenda.ItemData.Detail;
                              tipoReceita :=
                                ComboBoxFormaPagVenda.Selected.Text;
                              vlTotalPedido :=
                                StrToFloat(ListBoxItemValorTotalVenda.
                                ItemData.Detail);

                              AbrirFormVenda(TFContasReceberVenda);
                              MudarAbaVenda(TbItemApoioVenda, Sender);
                            end;
                          mrNo:
                            begin
                              vendaEntrada := 'N';
                              LblSupApoioVenda.Text := 'Receber';
                              SpdBVoltarCadCOntasReceber.Visible := True;
                              CliPedido := EmptyStr;
                              itemPedido := EmptyStr;
                              finalizaVenda := 'S';
                              numParcela := StrToInt(EdtNumParcelaPedido.Text);
                              vlParcela :=
                                ListBoxItemParcelasVenda.ItemData.Detail;
                              tipoReceita :=
                                ComboBoxFormaPagVenda.Selected.Text;
                              vlTotalPedido :=
                                StrToFloat(ListBoxItemValorTotalVenda.
                                ItemData.Detail);

                              AbrirFormVenda(TFContasReceberVenda);
                              MudarAbaVenda(TbItemApoioVenda, Sender);
                            end;
                        end;
                      end);
                  end
                  else
                  begin
                    vendaEntrada := 'N';
                    LblSupApoioVenda.Text := 'Receber';
                    SpdBVoltarCadCOntasReceber.Visible := True;
                    CliPedido := EmptyStr;
                    itemPedido := EmptyStr;
                    finalizaVenda := 'S';
                    numParcela := StrToInt(EdtNumParcelaPedido.Text);
                    vlParcela := ListBoxItemParcelasVenda.ItemData.Detail;
                    tipoReceita := ComboBoxFormaPagVenda.Selected.Text;
                    vlTotalPedido :=
                      StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail);

                    AbrirFormVenda(TFContasReceberVenda);
                    MudarAbaVenda(TbItemApoioVenda, Sender);
                  end;
                end
                else
                begin
                  ShowMessage('Processo cancelado!' + #13#10 +
                    'Falta informar cliente ou produto ou qte de parcela');
                end;
              end
              else
              begin
                if (ListViewItemPedido.ItemCount > 0) and
                  (LblCodCliPedido.Text <> EmptyStr) and
                  (StrToInt(EdtNumParcelaPedido.Text) > 0) then
                begin
                  if crud = 'inserir' then
                  begin
                    // PEDIDO
                    DM.FDQMaxIdPedido.Close;
                    DM.FDQMaxIdPedido.Open();
                    maxIdPedido := DM.FDQMaxIdPedidomaxIdPedido.AsInteger + 1;
                    DataHora := DateTimeToStr(Now);
                    DM.FDQConsFormaPag.Close;
                    DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value
                      := ComboBoxFormaPagVenda.Selected.Text;
                    DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
                    DM.FDQConsFormaPag.Open();

                    DM.FDQCadPedido.Close;
                    DM.FDQCadPedido.Open();
                    DM.FDQCadPedido.Append;
                    DM.FDQCadPedidoid_pedido.AsInteger := maxIdPedido;
                    DM.FDQCadPedidoid_cli_pedido.AsInteger :=
                      StrToInt(LblCodCliPedido.Text);
                    DM.FDQCadPedidodatahora_pedido.AsDateTime :=
                      StrToDateTime(DataHora);
                    DM.FDQCadPedidovalor_pedido.AsFloat :=
                      StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail);
                    if EdtDescontoMoedaPedido.Text.IsEmpty then
                    begin
                      DM.FDQCadPedidodescmoeda_pedido.AsFloat := 0;
                    end
                    else
                    begin
                      DM.FDQCadPedidodescmoeda_pedido.AsFloat :=
                        StrToFloat(EdtDescontoMoedaPedido.Text);
                    end;
                    DM.FDQCadPedidodescpercent_pedido.AsFloat := 0;
                    DM.FDQCadPedidoid_formapag_pedido.AsInteger :=
                      DM.FDQConsFormaPagid_forma_pag.AsInteger;
                    DM.FDQCadPedidonrparcela_pedido.AsInteger :=
                      StrToInt(EdtNumParcelaPedido.Text);
                    DM.FDQCadPedidoobs_pedido.AsString := EmptyStr;
                    DM.FDQCadPedidostatus_pedido.AsString := 'F';
                    DM.FDQCadPedido.Post;

                    // ITEM PEDIDO
                    for I := 0 to ListViewItemPedido.ItemCount - 1 do
                    begin
                      DM.FDQMaxIdItemPedido.Close;
                      DM.FDQMaxIdItemPedido.Open();
                      maxIdItemPedido :=
                        DM.FDQMaxIdItemPedidomaxId.AsInteger + 1;

                      DM.FDQConsAtendente.Close;
                      DM.FDQConsAtendente.ParamByName('PUsuario').Value :=
                        ListViewItemPedido.Items[I].Data
                        [TMultiDetailAppearanceNames.Detail3].AsString;
                      DM.FDQConsAtendente.ParamByName('PIdAtendente')
                        .Value := Null;
                      DM.FDQConsAtendente.Open();

                      DM.FDQCadItemPedido.Close;
                      DM.FDQCadItemPedido.Open();
                      DM.FDQCadItemPedido.Append;
                      DM.FDQCadItemPedidoid_item_pedido.AsInteger :=
                        maxIdItemPedido;
                      DM.FDQCadItemPedidoid_pedido_item.AsInteger :=
                        maxIdPedido;
                      DM.FDQCadItemPedidoid_produto_item.AsInteger :=
                        StrToInt(ListViewItemPedido.Items[I].Detail);
                      DM.FDQCadItemPedidoqte_item_pedido.AsFloat :=
                        StrToFloat(ListViewItemPedido.Items[I].Data
                        [TMultiDetailAppearanceNames.Detail1].AsString);
                      DM.FDQCadItemPedidovalor_item_pedido.AsFloat :=
                        StrToFloat(ListViewItemPedido.Items[I].Data
                        [TMultiDetailAppearanceNames.Detail2].AsString);
                      DM.FDQCadItemPedidodescmoeda_item_pedido.AsFloat := 0;
                      DM.FDQCadItemPedidodescpercent_item_pedido.AsFloat := 0;
                      if not DM.FDQConsAtendente.IsEmpty then
                      begin
                        DM.FDQCadItemPedidoid_atendente_item.AsInteger :=
                          DM.FDQConsAtendenteid_funcionario.AsInteger;
                      end;
                      DM.FDQCadItemPedido.Post;
                    end;

                  end
                  else if crud = 'editar' then
                  begin
                    // PEDIDO
                    DM.FDQConsFormaPag.Close;
                    DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value
                      := ComboBoxFormaPagVenda.Selected.Text;
                    DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
                    DM.FDQConsFormaPag.Open();

                    DM.FDQAuxiliar.sql.Clear;
                    DM.FDQAuxiliar.sql.Add('update pedido');
                    DM.FDQAuxiliar.sql.Add(' set id_cli_pedido = :IdCli,');
                    DM.FDQAuxiliar.sql.Add(' valor_pedido = :ValorPedido,');
                    DM.FDQAuxiliar.sql.Add(' descmoeda_pedido = :DescMoeda,');
                    DM.FDQAuxiliar.sql.Add
                      (' descpercent_pedido = :DescPercent,');
                    DM.FDQAuxiliar.sql.Add
                      (' id_formapag_pedido = :IdFormaPag,');
                    DM.FDQAuxiliar.sql.Add(' nrparcela_pedido = :NrParcela,');
                    DM.FDQAuxiliar.sql.Add(' obs_pedido = :Obs,');
                    DM.FDQAuxiliar.sql.Add(' status_pedido = :Status');
                    DM.FDQAuxiliar.sql.Add(' where id_pedido = :IdPedido');

                    DM.FDQAuxiliar.Params.ParamByName('IdCli').AsInteger :=
                      StrToInt(LblCodCliPedido.Text);
                    DM.FDQAuxiliar.Params.ParamByName('ValorPedido').AsFloat :=
                      StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail);
                    DM.FDQAuxiliar.Params.ParamByName('DescMoeda').AsFloat :=
                      StrToFloat(EdtDescontoMoedaPedido.Text);
                    DM.FDQAuxiliar.Params.ParamByName('DescPercent')
                      .AsFloat := 0;
                    DM.FDQAuxiliar.Params.ParamByName('IdFormaPag').AsInteger :=
                      DM.FDQConsFormaPagid_forma_pag.AsInteger;
                    DM.FDQAuxiliar.Params.ParamByName('NrParcela').AsInteger :=
                      StrToInt(EdtNumParcelaPedido.Text);
                    DM.FDQAuxiliar.Params.ParamByName('Obs').AsString
                      := EmptyStr;
                    DM.FDQAuxiliar.Params.ParamByName('Status').AsString := 'F';
                    DM.FDQAuxiliar.Params.ParamByName('IdPedido').AsInteger :=
                      StrToInt(ListBoxItemNumPedidoVenda.ItemData.Detail);

                    DM.FDQAuxiliar.ExecSQL;

                    // ITEM PEDIDO
                    for I := 0 to ListViewItemPedido.ItemCount - 1 do
                    begin
                      if not ListViewItemPedido.Items[I].ButtonText.IsEmpty then
                      begin
                        DM.FDQConsAtendente.Close;
                        DM.FDQConsAtendente.ParamByName('PUsuario').Value :=
                          ListViewItemPedido.Items[I].Data
                          [TMultiDetailAppearanceNames.Detail3].AsString;
                        DM.FDQConsAtendente.ParamByName('PIdAtendente')
                          .Value := Null;
                        DM.FDQConsAtendente.Open();

                        DM.FDQAuxiliar.sql.Clear;
                        DM.FDQAuxiliar.sql.Add('update item_pedido');
                        DM.FDQAuxiliar.sql.Add
                          (' set qte_item_pedido = :QteItem,');
                        DM.FDQAuxiliar.sql.Add
                          (' valor_item_pedido = :ValorItem,');
                        DM.FDQAuxiliar.sql.Add
                          (' descmoeda_item_pedido = :DescMoeda,');
                        DM.FDQAuxiliar.sql.Add
                          (' descpercent_item_pedido = :DescPercent,');
                        DM.FDQAuxiliar.sql.Add
                          (' id_atendente_item = :IdAtendente');
                        DM.FDQAuxiliar.sql.Add
                          (' where id_item_pedido = :IdItem');

                        DM.FDQAuxiliar.Params.ParamByName('QteItem').AsFloat :=
                          StrToFloat(ListViewItemPedido.Items[I].Data
                          [TMultiDetailAppearanceNames.Detail1].ToString);
                        DM.FDQAuxiliar.Params.ParamByName('ValorItem').AsFloat
                          := StrToFloat(ListViewItemPedido.Items[I].Data
                          [TMultiDetailAppearanceNames.Detail2].ToString);
                        DM.FDQAuxiliar.Params.ParamByName('DescMoeda')
                          .AsFloat := 0;
                        DM.FDQAuxiliar.Params.ParamByName('DescPercent')
                          .AsFloat := 0;
                        DM.FDQAuxiliar.Params.ParamByName('IdAtendente')
                          .AsInteger :=
                          DM.FDQConsAtendenteid_funcionario.AsInteger;
                        DM.FDQAuxiliar.Params.ParamByName('IdItem').AsInteger :=
                          StrToInt(ListViewItemPedido.Items[I].ButtonText);

                        DM.FDQAuxiliar.ExecSQL;
                      end
                      else
                      begin
                        DM.FDQMaxIdItemPedido.Close;
                        DM.FDQMaxIdItemPedido.Open();
                        maxIdItemPedido :=
                          DM.FDQMaxIdItemPedidomaxId.AsInteger + 1;

                        DM.FDQConsAtendente.Close;
                        DM.FDQConsAtendente.ParamByName('PUsuario').Value :=
                          ListViewItemPedido.Items[I].Data
                          [TMultiDetailAppearanceNames.Detail3].AsString;
                        DM.FDQConsAtendente.ParamByName('PIdAtendente')
                          .Value := Null;
                        DM.FDQConsAtendente.Open();

                        DM.FDQCadItemPedido.Close;
                        DM.FDQCadItemPedido.Open();
                        DM.FDQCadItemPedido.Append;
                        DM.FDQCadItemPedidoid_item_pedido.AsInteger :=
                          maxIdItemPedido;
                        DM.FDQCadItemPedidoid_pedido_item.AsInteger :=
                          StrToInt(ListBoxItemNumPedidoVenda.ItemData.Detail);
                        DM.FDQCadItemPedidoid_produto_item.AsInteger :=
                          StrToInt(ListViewItemPedido.Items[I].Detail);
                        DM.FDQCadItemPedidoqte_item_pedido.AsFloat :=
                          StrToFloat(ListViewItemPedido.Items[I].Data
                          [TMultiDetailAppearanceNames.Detail1].AsString);
                        DM.FDQCadItemPedidovalor_item_pedido.AsFloat :=
                          StrToFloat(ListViewItemPedido.Items[I].Data
                          [TMultiDetailAppearanceNames.Detail2].AsString);
                        DM.FDQCadItemPedidodescmoeda_item_pedido.AsFloat := 0;
                        DM.FDQCadItemPedidodescpercent_item_pedido.AsFloat := 0;
                        if not DM.FDQConsAtendente.IsEmpty then
                        begin
                          DM.FDQCadItemPedidoid_atendente_item.AsInteger :=
                            DM.FDQConsAtendenteid_funcionario.AsInteger;
                        end;
                        DM.FDQCadItemPedido.Post;
                      end;
                    end;

                  end;

                  DM.FDConnection1.CommitRetaining;
                  nomeCliente := EmptyStr;
                  codCliente := EmptyStr;
                  CliPedido := EmptyStr;
                  itemPedido := EmptyStr;
                  finalizaVenda := EmptyStr;
                  DM.FDQPedido.Active := False;
                  DM.FDQConsFormaPag.Active := False;
                  LimpaCampos;
                  DesabilitaCampos;
                  MudarAbaVenda(TbItemListagemVenda, Sender);
                end
                else
                begin
                  ShowMessage('Processo cancelado!' + #13#10 +
                    'Falta informar cliente ou produto ou qte de parcela');
                end;

              end;

            except
              on E: Exception do
                ShowMessage('Erro!  ' + #13#10 + E.Message);
            end;

          end;
        mrNo:
          begin
            // caso n�o
          end;
      end;
    end);
end;

procedure TFVenda1.SpdBVoltarCadCOntasReceberClick(Sender: TObject);
begin
  MudarAbaVenda(TbItemedicaoVenda, Sender);
  AbrirFormVenda(TFAuxiliar);
end;

procedure TFVenda1.SpdBVoltarConsCliVendaApoioClick(Sender: TObject);
begin
  DM.FDQFiltroCadCLi.Active := False;
  MudarAbaVenda(TbItemedicaoVenda, Sender);
end;

procedure TFVenda1.SpdBVoltarItemVendaClick(Sender: TObject);
begin
  MudarAbaVenda(TbItemedicaoVenda, Sender);
end;

procedure TFVenda1.SpdBVoltarVendaEdicaoClick(Sender: TObject);
var
  DataHora, sql: string;
  maxIdPedido, maxIdItemPedido: integer;
  sqlpedido, sqlItemPedido: TStrings;
begin
  MessageDlg('Deseja sair deste pedido?',
    System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes,
    System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    var
      I: integer;
    begin
      case AResult of
        mrYES:
          begin
            // caso sim
            try
              if ListViewItemPedido.ItemCount > 0 then
              begin
                if crud = 'inserir' then
                begin
                  // PEDIDO
                  DM.FDQMaxIdPedido.Close;
                  DM.FDQMaxIdPedido.Open();
                  maxIdPedido := DM.FDQMaxIdPedidomaxIdPedido.AsInteger + 1;
                  DataHora := DateTimeToStr(Now);
                  DM.FDQConsFormaPag.Close;
                  DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value :=
                    ComboBoxFormaPagVenda.Selected.Text;
                  DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
                  DM.FDQConsFormaPag.Open();

                  DM.FDQCadPedido.Close;
                  DM.FDQCadPedido.Open();
                  DM.FDQCadPedido.Append;
                  // DM.FDQCadPedidoid_pedido.AsInteger := maxIdPedido;
                  DM.FDQCadPedidoid_cli_pedido.AsInteger :=
                    StrToInt(LblCodCliPedido.Text);
                  DM.FDQCadPedidodatahora_pedido.AsDateTime :=
                    StrToDateTime(DataHora);
                  DM.FDQCadPedidovalor_pedido.AsFloat :=
                    StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail);
                  if EdtDescontoMoedaPedido.Text.IsEmpty then
                  begin
                    DM.FDQCadPedidodescmoeda_pedido.AsFloat := 0;
                  end
                  else
                  begin
                    DM.FDQCadPedidodescmoeda_pedido.AsFloat :=
                      StrToFloat(EdtDescontoMoedaPedido.Text);
                  end;
                  DM.FDQCadPedidodescpercent_pedido.AsFloat := 0;
                  DM.FDQCadPedidoid_formapag_pedido.AsInteger :=
                    DM.FDQConsFormaPagid_forma_pag.AsInteger;
                  DM.FDQCadPedidonrparcela_pedido.AsInteger :=
                    StrToInt(EdtNumParcelaPedido.Text);
                  DM.FDQCadPedidoobs_pedido.AsString := EmptyStr;
                  DM.FDQCadPedidostatus_pedido.AsString := 'A';
                  DM.FDQCadPedido.Post;

                  // ITEM PEDIDO
                  for I := 0 to ListViewItemPedido.ItemCount - 1 do
                  begin
                    DM.FDQMaxIdItemPedido.Close;
                    DM.FDQMaxIdItemPedido.Open();
                    maxIdItemPedido := DM.FDQMaxIdItemPedidomaxId.AsInteger + 1;

                    DM.FDQConsAtendente.Close;
                    DM.FDQConsAtendente.ParamByName('PUsuario').Value :=
                      ListViewItemPedido.Items[I].Data
                      [TMultiDetailAppearanceNames.Detail3].AsString;
                    DM.FDQConsAtendente.ParamByName('PIdAtendente')
                      .Value := Null;
                    DM.FDQConsAtendente.Open();

                    DM.FDQCadItemPedido.Close;
                    DM.FDQCadItemPedido.Open();
                    DM.FDQCadItemPedido.Append;
                    // DM.FDQCadItemPedidoid_item_pedido.AsInteger := maxIdItemPedido;
                    DM.FDQCadItemPedidoid_pedido_item.AsInteger := maxIdPedido;
                    DM.FDQCadItemPedidoid_produto_item.AsInteger :=
                      StrToInt(ListViewItemPedido.Items[I].Detail);
                    DM.FDQCadItemPedidoqte_item_pedido.AsFloat :=
                      StrToFloat(ListViewItemPedido.Items[I].Data
                      [TMultiDetailAppearanceNames.Detail1].AsString);
                    DM.FDQCadItemPedidovalor_item_pedido.AsFloat :=
                      StrToFloat(ListViewItemPedido.Items[I].Data
                      [TMultiDetailAppearanceNames.Detail2].AsString);
                    DM.FDQCadItemPedidodescmoeda_item_pedido.AsFloat := 0;
                    DM.FDQCadItemPedidodescpercent_item_pedido.AsFloat := 0;
                    if not DM.FDQConsAtendente.IsEmpty then
                    begin
                      DM.FDQCadItemPedidoid_atendente_item.AsInteger :=
                        DM.FDQConsAtendenteid_funcionario.AsInteger;
                    end;
                    DM.FDQCadItemPedido.Post;
                  end;

                end
                else if crud = 'editar' then
                begin
                  // PEDIDO
                  DM.FDQConsFormaPag.Close;
                  DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value :=
                    ComboBoxFormaPagVenda.Selected.Text;
                  DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
                  DM.FDQConsFormaPag.Open();

                  DM.FDQAuxiliar.sql.Clear;
                  DM.FDQAuxiliar.sql.Add('update pedido');
                  DM.FDQAuxiliar.sql.Add(' set id_cli_pedido = :IdCli,');
                  DM.FDQAuxiliar.sql.Add(' valor_pedido = :ValorPedido,');
                  DM.FDQAuxiliar.sql.Add(' descmoeda_pedido = :DescMoeda,');
                  DM.FDQAuxiliar.sql.Add(' descpercent_pedido = :DescPercent,');
                  DM.FDQAuxiliar.sql.Add(' id_formapag_pedido = :IdFormaPag,');
                  DM.FDQAuxiliar.sql.Add(' nrparcela_pedido = :NrParcela,');
                  DM.FDQAuxiliar.sql.Add(' obs_pedido = :Obs,');
                  DM.FDQAuxiliar.sql.Add(' status_pedido = :Status');
                  DM.FDQAuxiliar.sql.Add(' where id_pedido = :IdPedido');

                  DM.FDQAuxiliar.Params.ParamByName('IdCli').AsInteger :=
                    StrToInt(LblCodCliPedido.Text);
                  DM.FDQAuxiliar.Params.ParamByName('ValorPedido').AsFloat :=
                    StrToFloat(ListBoxItemValorTotalVenda.ItemData.Detail);
                  DM.FDQAuxiliar.Params.ParamByName('DescMoeda').AsFloat :=
                    StrToFloat(EdtDescontoMoedaPedido.Text);
                  DM.FDQAuxiliar.Params.ParamByName('DescPercent').AsFloat := 0;
                  DM.FDQAuxiliar.Params.ParamByName('IdFormaPag').AsInteger :=
                    DM.FDQConsFormaPagid_forma_pag.AsInteger;
                  DM.FDQAuxiliar.Params.ParamByName('NrParcela').AsInteger :=
                    StrToInt(EdtNumParcelaPedido.Text);
                  DM.FDQAuxiliar.Params.ParamByName('Obs').AsString := EmptyStr;
                  DM.FDQAuxiliar.Params.ParamByName('Status').AsString := 'A';
                  DM.FDQAuxiliar.Params.ParamByName('IdPedido').AsInteger :=
                    StrToInt(ListBoxItemNumPedidoVenda.ItemData.Detail);

                  DM.FDQAuxiliar.ExecSQL;

                  // ITEM PEDIDO
                  for I := 0 to ListViewItemPedido.ItemCount - 1 do
                  begin
                    if not ListViewItemPedido.Items[I].ButtonText.IsEmpty then
                    begin
                      DM.FDQConsAtendente.Close;
                      DM.FDQConsAtendente.ParamByName('PUsuario').Value :=
                        ListViewItemPedido.Items[I].Data
                        [TMultiDetailAppearanceNames.Detail3].AsString;
                      DM.FDQConsAtendente.ParamByName('PIdAtendente')
                        .Value := Null;
                      DM.FDQConsAtendente.Open();

                      DM.FDQAuxiliar.sql.Clear;
                      DM.FDQAuxiliar.sql.Add('update item_pedido');
                      DM.FDQAuxiliar.sql.Add
                        (' set qte_item_pedido = :QteItem,');
                      DM.FDQAuxiliar.sql.Add
                        (' valor_item_pedido = :ValorItem,');
                      DM.FDQAuxiliar.sql.Add
                        (' descmoeda_item_pedido = :DescMoeda,');
                      DM.FDQAuxiliar.sql.Add
                        (' descpercent_item_pedido = :DescPercent,');
                      DM.FDQAuxiliar.sql.Add
                        (' id_atendente_item = :IdAtendente');
                      DM.FDQAuxiliar.sql.Add(' where id_item_pedido = :IdItem');

                      DM.FDQAuxiliar.Params.ParamByName('QteItem').AsFloat :=
                        StrToFloat(ListViewItemPedido.Items[I].Data
                        [TMultiDetailAppearanceNames.Detail1].ToString);
                      DM.FDQAuxiliar.Params.ParamByName('ValorItem').AsFloat :=
                        StrToFloat(ListViewItemPedido.Items[I].Data
                        [TMultiDetailAppearanceNames.Detail2].ToString);
                      DM.FDQAuxiliar.Params.ParamByName('DescMoeda')
                        .AsFloat := 0;
                      DM.FDQAuxiliar.Params.ParamByName('DescPercent')
                        .AsFloat := 0;
                      DM.FDQAuxiliar.Params.ParamByName('IdAtendente').AsInteger
                        := DM.FDQConsAtendenteid_funcionario.AsInteger;
                      DM.FDQAuxiliar.Params.ParamByName('IdItem').AsInteger :=
                        StrToInt(ListViewItemPedido.Items[I].ButtonText);

                      DM.FDQAuxiliar.ExecSQL;
                    end
                    else
                    begin
                      DM.FDQMaxIdItemPedido.Close;
                      DM.FDQMaxIdItemPedido.Open();
                      maxIdItemPedido :=
                        DM.FDQMaxIdItemPedidomaxId.AsInteger + 1;

                      DM.FDQConsAtendente.Close;
                      DM.FDQConsAtendente.ParamByName('PUsuario').Value :=
                        ListViewItemPedido.Items[I].Data
                        [TMultiDetailAppearanceNames.Detail3].AsString;
                      DM.FDQConsAtendente.ParamByName('PIdAtendente')
                        .Value := Null;
                      DM.FDQConsAtendente.Open();

                      DM.FDQCadItemPedido.Close;
                      DM.FDQCadItemPedido.Open();
                      DM.FDQCadItemPedido.Append;
                      // DM.FDQCadItemPedidoid_item_pedido.AsInteger := maxIdItemPedido;
                      DM.FDQCadItemPedidoid_pedido_item.AsInteger :=
                        StrToInt(ListBoxItemNumPedidoVenda.ItemData.Detail);
                      DM.FDQCadItemPedidoid_produto_item.AsInteger :=
                        StrToInt(ListViewItemPedido.Items[I].Detail);
                      DM.FDQCadItemPedidoqte_item_pedido.AsFloat :=
                        StrToFloat(ListViewItemPedido.Items[I].Data
                        [TMultiDetailAppearanceNames.Detail1].AsString);
                      DM.FDQCadItemPedidovalor_item_pedido.AsFloat :=
                        StrToFloat(ListViewItemPedido.Items[I].Data
                        [TMultiDetailAppearanceNames.Detail2].AsString);
                      DM.FDQCadItemPedidodescmoeda_item_pedido.AsFloat := 0;
                      DM.FDQCadItemPedidodescpercent_item_pedido.AsFloat := 0;
                      if not DM.FDQConsAtendente.IsEmpty then
                      begin
                        DM.FDQCadItemPedidoid_atendente_item.AsInteger :=
                          DM.FDQConsAtendenteid_funcionario.AsInteger;
                      end;
                      DM.FDQCadItemPedido.Post;
                    end;
                  end;

                end;
                DM.FDConnection1.CommitRetaining;
              end;

              nomeCliente := EmptyStr;
              codCliente := EmptyStr;
              CliPedido := EmptyStr;
              itemPedido := EmptyStr;
              DM.FDQPedido.Active := False;
              DM.FDQConsFormaPag.Active := False;
              LimpaCampos;
              DesabilitaCampos;
              MudarAbaVenda(TbItemListagemVenda, Sender);
            except
              on E: Exception do
                ShowMessage('Erro!  ' + #13#10 + E.Message);
            end;

          end;
        mrNo:
          begin
            // caso n�o
          end;
      end;
    end);

end;

end.
