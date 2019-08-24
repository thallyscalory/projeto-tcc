unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.ListBox, FMX.StdCtrls, FMX.Layouts, FMX.Controls.Presentation,
  FMX.Effects,
  FMX.TabControl, System.Actions, FMX.ActnList, // ksTypes, ksLoadingIndicator,
  FMX.VirtualKeyboard, System.Math, FMX.Platform, FMX.MultiView,
  FireDAC.Stan.StorageBin, FMX.Ani, FMX.Edit;

type
  TFPrincipal = class(TForm)
    LytFundoTelaPrinc: TLayout;
    BtnBkp: TButton;
    LytFundoMenuPrinc: TLayout;
    TbControlPrincipal: TTabControl;
    TbItemMenu: TTabItem;
    ActionList1: TActionList;
    ActMudarAba: TChangeTabAction;
    ToolBar1: TToolBar;
    SpdBInfo: TSpeedButton;
    Label1: TLabel;
    SpdBtnMenuPrincipal: TSpeedButton;
    RectangleMenuVenda: TRectangle;
    ImgMenuVenda: TImage;
    SpdBtnMenuVendas: TSpeedButton;
    RectangleContaReceber: TRectangle;
    ImgMenuContasReceber: TImage;
    SpdBtnMenuContaReceber: TSpeedButton;
    RectangleContaPagar: TRectangle;
    ImgMenuContasPagar: TImage;
    SpdBtnMenuContaPagar: TSpeedButton;
    Line1: TLine;
    RectangleMenuCaixa: TRectangle;
    ImgMenuCaixa: TImage;
    SpdBtnMenuCaixa: TSpeedButton;
    VertScrollBox1: TVertScrollBox;
    RectangleMenuClientes: TRectangle;
    ImgMenuCliente: TImage;
    SpdBtnMenuClientes: TSpeedButton;
    RectangleMenuFornecedor: TRectangle;
    ImgMenuFornecedor: TImage;
    SpdBtnMenuFornecedor: TSpeedButton;
    RectangleMenuFuncionario: TRectangle;
    ImgMenuFuncionario: TImage;
    SpdBtnMenuFuncionario: TSpeedButton;
    Line2: TLine;
    RectangleMenuProduto: TRectangle;
    ImgMenuProduto: TImage;
    SpdBtnMenuProduto: TSpeedButton;
    RectangleMenuDespesas: TRectangle;
    ImgMenuDespesas: TImage;
    SpdBtnMenuDespesas: TSpeedButton;
    RectangleMenuTipoReceita: TRectangle;
    ImgMenuTipoReceita: TImage;
    SpdBtnMenuTipoReceita: TSpeedButton;
    RectangleMenuAgenda: TRectangle;
    ImgMenuAgenda: TImage;
    SpdBtnMenuAgenda: TSpeedButton;
    RectangleMenuEstoque: TRectangle;
    ImgMenuEstoque: TImage;
    SpdBtnMenuestoque: TSpeedButton;
    Layout2: TLayout;
    Label2: TLabel;
    SpdBtnAlteraAtalhos: TSpeedButton;
    TabItemAlteraAtalho: TTabItem;
    TbItemConfig: TTabItem;
    LytAlteraAtalho: TLayout;
    VertScrollBoxTelaAlteraAtalho: TVertScrollBox;
    LytAlteraAtalhoVenda: TLayout;
    LytAlteraAtalhoCaixa: TLayout;
    LytAlteraAtalhoContaReceber: TLayout;
    LytAlteraAtalhoContaPagar: TLayout;
    LytAlteraAtalhoCliente: TLayout;
    LytAlteraAtalhoFornecedor: TLayout;
    LytAlteraAtalhoFuncionario: TLayout;
    LytAlteraAtalhoProduto: TLayout;
    LytAlteraAtalhoDespesa: TLayout;
    LytAlteraAtalhoTipoReceita: TLayout;
    LytAlteraAtalhoAgenda: TLayout;
    LytAlteraAtalhoEstoque: TLayout;
    LytAlteraAtalhoConfigurações: TLayout;
    Label3: TLabel;
    SwitchAlteraAtalhoVenda: TSwitch;
    Label4: TLabel;
    SwitchAlteraAtalhoCaixa: TSwitch;
    Label5: TLabel;
    SwitchAlteraAtalhoContaReceber: TSwitch;
    Label6: TLabel;
    SwitchAlteraAtalhoContaPagar: TSwitch;
    Label7: TLabel;
    SwitchAlteraAtalhoCliente: TSwitch;
    Label8: TLabel;
    SwitchAlteraAtalhoFornecedor: TSwitch;
    Label9: TLabel;
    SwitchAlteraAtalhoFuncionario: TSwitch;
    Label10: TLabel;
    SwitchAlteraAtalhoProduto: TSwitch;
    Label11: TLabel;
    SwitchAlteraAtalhoDespesa: TSwitch;
    Label12: TLabel;
    SwitchAlteraAtalhoTipoReceita: TSwitch;
    Label13: TLabel;
    SwitchAlteraAtalhoAgenda: TSwitch;
    Label14: TLabel;
    SwitchAlteraAtalhoEstoque: TSwitch;
    Label15: TLabel;
    SwitchAlteraAtalhoConfig: TSwitch;
    ToolBar2: TToolBar;
    Label16: TLabel;
    SpdBtnConfirmaAlteraAtalho: TSpeedButton;
    SpdBtnVoltarAlteraAtalho: TSpeedButton;
    LytAtalhoCliente: TLayout;
    LytAtalhoFornecedor: TLayout;
    LytAtalhoFuncionarios: TLayout;
    LytAtalhoProduto: TLayout;
    LytAtalhoDespesa: TLayout;
    LytAtalhoTipoReceita: TLayout;
    LytAtalhoAgenda: TLayout;
    LytAtalhoEstoque: TLayout;
    LytAtalhoConfig: TLayout;
    ImgAtalhoCliente: TImage;
    LytCadCli: TLayout;
    LblAtalhoCadCli: TLabel;
    RoundRectAtalhoCadCli: TRoundRect;
    ImgAtalhoFornecedor: TImage;
    Layout1: TLayout;
    LblAtalhoFornecedor: TLabel;
    RoundRectAtalhoFornecedor: TRoundRect;
    ImgAtalhoFuncionario: TImage;
    LytAtalhoFuncionario: TLayout;
    LblAtalhoFuncionario: TLabel;
    RoundRectAtalhoFuncionario: TRoundRect;
    ImgAtalhoConsProd: TImage;
    LytConsProd: TLayout;
    LblAtalhoConsProd: TLabel;
    RoundRectAtalhoConsProd: TRoundRect;
    ImgAtalhoDespesa: TImage;
    LytCadDespesa: TLayout;
    LblAtalhoDespesa: TLabel;
    RoundRectAtalhoDespesa: TRoundRect;
    ImgAtalhoTipoReceita: TImage;
    LytCadTipoReceita: TLayout;
    LblAtalhoTipoReceita: TLabel;
    RoundRectAtalhoTipoReceita: TRoundRect;
    ImgAtalhoAgenda: TImage;
    LytAgenda: TLayout;
    LblAtalhoAgenda: TLabel;
    RoundRectAtalhoAgenda: TRoundRect;
    ImgAtalhoEstoque: TImage;
    LytContProd: TLayout;
    LblAtalhoEstoque: TLabel;
    RoundRectAtalhoEstoque: TRoundRect;
    LytAtalhoVenda: TLayout;
    ImgAtalhoVenda: TImage;
    Layout3: TLayout;
    LblAtalhoVenda: TLabel;
    RoundRectAtalhoVenda: TRoundRect;
    LytAtalhoCaixa: TLayout;
    ImgAtalhoCaixa: TImage;
    Layout4: TLayout;
    LblAtalhoCaixa: TLabel;
    RoundRectAtalhoCAixa: TRoundRect;
    LytAtalhoContaReceber: TLayout;
    ImgAtalhoContaReceber: TImage;
    LytContaReceber: TLayout;
    LblAtalhoContaReceber: TLabel;
    RoundRectAtalhoContasReceber: TRoundRect;
    LytAtalhoContasPagar: TLayout;
    ImgAtalhoContaPagar: TImage;
    LytAtalhoContaPagar: TLayout;
    LblAtalhoContasPagar: TLabel;
    RoundRectAtalhoContasPagar: TRoundRect;
    VertScrollBox2: TVertScrollBox;
    Layout5: TLayout;
    FDStanStorageBinLink1: TFDStanStorageBinLink;
    TbItemLogin: TTabItem;
    Layout6: TLayout;
    Rectangle1: TRectangle;
    Image1: TImage;
    LytUsuarioLogin: TLayout;
    Label17: TLabel;
    StyleBook1: TStyleBook;
    EdtUsuarioLogin: TEdit;
    LytSenhaLogin: TLayout;
    Label18: TLabel;
    EdtSenhaLogin: TEdit;
    ClearEditButton1: TClearEditButton;
    ClearEditButton2: TClearEditButton;
    LytBotoesLogin: TLayout;
    RoundRect1: TRoundRect;
    RoundRect2: TRoundRect;
    SpdBtnEntrarLogin: TSpeedButton;
    SpdBtnCancelarLogin: TSpeedButton;
    LytUsuarioAtivo: TLayout;
    Label19: TLabel;
    LblCodUsuarioAtivo: TLabel;
    LblNomeUsuarioAtivo: TLabel;
    MultiView1: TMultiView;
    procedure FormCreate(Sender: TObject);
    procedure ImgMenuVendaClick(Sender: TObject);
    procedure SpdBInfoClick(Sender: TObject);
    procedure ImgMenuContasReceberClick(Sender: TObject);
    procedure ImgMenuFornecedorClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure ImgMenuClienteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ImgMenuContasPagarClick(Sender: TObject);
    procedure RoundRectAtalhoAgendaClick(Sender: TObject);
    procedure RoundRectAtalhoDespesaClick(Sender: TObject);
    procedure RoundRectAtalhoTipoReceitaClick(Sender: TObject);
    procedure RoundRectAtalhoConsProdClick(Sender: TObject);
    procedure RectangleMenuVendaClick(Sender: TObject);
    procedure SpdBtnMenuContaReceberClick(Sender: TObject);
    procedure SpdBtnMenuContaPagarClick(Sender: TObject);
    procedure SpdBtnMenuClientesClick(Sender: TObject);
    procedure SpdBtnMenuFornecedorClick(Sender: TObject);
    procedure ImgMenuProdutoClick(Sender: TObject);
    procedure SpdBtnMenuProdutoClick(Sender: TObject);
    procedure SpdBtnMenuVendasClick(Sender: TObject);
    procedure ImgMenuDespesasClick(Sender: TObject);
    procedure SpdBtnMenuDespesasClick(Sender: TObject);
    procedure ImgMenuTipoReceitaClick(Sender: TObject);
    procedure SpdBtnMenuTipoReceitaClick(Sender: TObject);
    procedure ImgMenuAgendaClick(Sender: TObject);
    procedure SpdBtnMenuAgendaClick(Sender: TObject);
    procedure RoundRectAtalhoVendaClick(Sender: TObject);
    procedure RoundRectAtalhoContasReceberClick(Sender: TObject);
    procedure RoundRectAtalhoContasPagarClick(Sender: TObject);
    procedure RoundRectAtalhoCadCliClick(Sender: TObject);
    procedure RoundRectAtalhoFornecedorClick(Sender: TObject);
    procedure SwitchAlteraAtalhoVendaSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoCaixaSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoContaReceberSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoContaPagarSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoClienteSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoFornecedorSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoFuncionarioSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoProdutoSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoDespesaSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoTipoReceitaSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoAgendaSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoEstoqueSwitch(Sender: TObject);
    procedure SwitchAlteraAtalhoConfigSwitch(Sender: TObject);
    procedure SpdBtnAlteraAtalhosClick(Sender: TObject);
    procedure SpdBtnConfirmaAlteraAtalhoClick(Sender: TObject);
    procedure SpdBtnVoltarAlteraAtalhoClick(Sender: TObject);
    procedure RoundRectAtalhoCAixaClick(Sender: TObject);
    procedure SpdBtnMenuCaixaClick(Sender: TObject);
    procedure ImgMenuCaixaClick(Sender: TObject);
    procedure RoundRectAtalhoFuncionarioClick(Sender: TObject);
    procedure FormResize(Sender: TObject);
    procedure SpdBtnEntrarLoginClick(Sender: TObject);
    procedure SpdBtnCancelarLoginClick(Sender: TObject);
    procedure EdtUsuarioLoginTyping(Sender: TObject);
  private
    { Private declarations }
    FActiveForm: TForm;

    procedure ConfigAtalho;
  public
    { Public declarations }
    procedure MudarAba(ATabItem: TTabItem; Sender: TObject);
    procedure AbrirForm(AFormClass: TComponentClass);
    // procedure AjustarLayout;
  end;

var
  FPrincipal: TFPrincipal;
  TecladoVirtualVisible: Boolean;
  idUsuarioAtivo: string;

implementation

{$R *.fmx}
{$R *.SmXhdpiPh.fmx ANDROID}

uses UDM, UVenda, UCadCli, UConsultaProduto, UInfo, UVenda1, UCadContasReceber,
  UAuxiliar, UCadFornecedor, UCadContasPagar, UAgenda, UCadDespesa,
  UCadTipoReceita, FGX.Graphics, FGX.Toasts, UCaixa, UFuncionario;

procedure TFPrincipal.AbrirForm(AFormClass: TComponentClass);
begin

end;

// procedure TFPrincipal.AjustarLayout;
// begin
// ListBoxMenuPrinc.ItemWidth := (Self.ClientWidth - 20);
// end;

procedure TFPrincipal.ConfigAtalho;
begin
  try
    try
      DM.FDQConsAtalhos.Close;
      DM.FDQConsAtalhos.Open();

      DM.FDQConsAtalhos.First;
      while not DM.FDQConsAtalhos.Eof do
      begin
        if DM.FDQConsAtalhosativo.AsString = 'S' then
        begin
          case DM.FDQConsAtalhostag.AsInteger of
            1:
              LytAtalhoVenda.Visible := True;
            2:
              LytAtalhoCaixa.Visible := True;
            3:
              LytAtalhoContaReceber.Visible := True;
            4:
              LytAtalhoContasPagar.Visible := True;
            5:
              LytAtalhoCliente.Visible := True;
            6:
              LytAtalhoFornecedor.Visible := True;
            7:
              LytAtalhoFuncionarios.Visible := True;
            8:
              LytAtalhoProduto.Visible := True;
            9:
              LytAtalhoDespesa.Visible := True;
            10:
              LytAtalhoTipoReceita.Visible := True;
            11:
              LytAtalhoAgenda.Visible := True;
            12:
              LytAtalhoEstoque.Visible := True;
            13:
              LytAtalhoConfig.Visible := True;
          end;
        end
        else if DM.FDQConsAtalhosativo.AsString = 'N' then
        begin
          case DM.FDQConsAtalhostag.AsInteger of
            1:
              LytAtalhoVenda.Visible := False;
            2:
              LytAtalhoCaixa.Visible := False;
            3:
              LytAtalhoContaReceber.Visible := False;
            4:
              LytAtalhoContasPagar.Visible := False;
            5:
              LytAtalhoCliente.Visible := False;
            6:
              LytAtalhoFornecedor.Visible := False;
            7:
              LytAtalhoFuncionarios.Visible := False;
            8:
              LytAtalhoProduto.Visible := False;
            9:
              LytAtalhoDespesa.Visible := False;
            10:
              LytAtalhoTipoReceita.Visible := False;
            11:
              LytAtalhoAgenda.Visible := False;
            12:
              LytAtalhoEstoque.Visible := False;
            13:
              LytAtalhoConfig.Visible := False;
          end;
        end;

        DM.FDQConsAtalhos.Next;
      end;
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  finally
    DM.FDQConsAtalhos.Active := False;
  end;
end;

procedure TFPrincipal.EdtUsuarioLoginTyping(Sender: TObject);
begin
  EdtUsuarioLogin.Text := UpperCase(EdtUsuarioLogin.Text);
end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FVenda1) then
    FVenda1.DisposeOf;

  if Assigned(FCaixa) then
    FCaixa.DisposeOf;

  if Assigned(FCadContasReceber) then
    FCadContasReceber.DisposeOf;

  if Assigned(FCadContasPagar) then
    FCadContasPagar.DisposeOf;

  if Assigned(FCadCli) then
    FCadCli.DisposeOf;

  if Assigned(FCadFornecedor) then
    FCadFornecedor.DisposeOf;

  if Assigned(FConsProduto) then
    FConsProduto.DisposeOf;

  if Assigned(FCadDespesa) then
    FCadDespesa.DisposeOf;

  if Assigned(FCadTipoReceita) then
    FCadTipoReceita.DisposeOf;

  if Assigned(FAgenda) then
    FAgenda.DisposeOf;

end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  TbControlPrincipal.ActiveTab := TbItemLogin;
  TbControlPrincipal.TabPosition := TTabPosition.None;

  ConfigAtalho;
end;

procedure TFPrincipal.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
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
      if TbControlPrincipal.ActiveTab = TbItemMenu then
      begin
        MessageDlg('Deseja encerrar o aplicativo?',
          System.UITypes.TMsgDlgType.mtInformation,
          [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
          procedure(const AResult: System.UITypes.TModalResult)
          begin
            case AResult of
              mrYES:
                begin
                  // caso sim
                  Close;
                end;
              mrNo:
                begin
                  // caso não
                end;
            end;
          end);
      end
      else if TbControlPrincipal.ActiveTab = TbItemLogin then
      begin
        MessageDlg('Deseja encerrar o aplicativo?',
          System.UITypes.TMsgDlgType.mtInformation,
          [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
          procedure(const AResult: System.UITypes.TModalResult)
          begin
            case AResult of
              mrYES:
                begin
                  // caso sim
                  Close;
                end;
              mrNo:
                begin
                  // caso não
                end;
            end;
          end);
      end
      else if TbControlPrincipal.ActiveTab = TabItemAlteraAtalho then
      begin
        SpdBtnVoltarAlteraAtalhoClick(Sender);
      end;
    end;
  end;
end;

procedure TFPrincipal.FormResize(Sender: TObject);
var
  tamTela: TSize;
begin
  tamTela := Screen.Size;
  Image1.Height := tamTela.cy * 0.33;
end;

procedure TFPrincipal.FormVirtualKeyboardHidden(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TecladoVirtualVisible := False;
end;

procedure TFPrincipal.FormVirtualKeyboardShown(Sender: TObject;
KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TecladoVirtualVisible := True;
end;

procedure TFPrincipal.ImgMenuCaixaClick(Sender: TObject);
begin
  Application.CreateForm(TFCaixa, FCaixa);
  if not Assigned(FCaixa) then
    FCaixa := TFCaixa.Create(nil);
  FCaixa.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgMenuClienteClick(Sender: TObject);
begin
  Application.CreateForm(TFCadCli, FCadCli);
  if not Assigned(FCadCli) then
    FCadCli := TFCadCli.Create(nil);
  FCadCli.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgMenuFornecedorClick(Sender: TObject);
begin
  Application.CreateForm(TFCadFornecedor, FCadFornecedor);
  if not Assigned(FCadFornecedor) then
    FCadFornecedor := TFCadFornecedor.Create(nil);
  FCadFornecedor.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgMenuAgendaClick(Sender: TObject);
begin
  Application.CreateForm(TFAgenda, FAgenda);
  if not Assigned(FAgenda) then
    FAgenda := TFAgenda.Create(nil);
  FAgenda.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgMenuDespesasClick(Sender: TObject);
begin
  Application.CreateForm(TFCadDespesa, FCadDespesa);
  if not Assigned(FCadDespesa) then
    FCadDespesa := TFCadDespesa.Create(nil);
  FCadDespesa.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgMenuProdutoClick(Sender: TObject);
begin
  Application.CreateForm(TFConsProduto, FConsProduto);
  if not Assigned(FConsProduto) then
    FConsProduto := TFConsProduto.Create(nil);
  FConsProduto.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgMenuTipoReceitaClick(Sender: TObject);
begin
  Application.CreateForm(TFCadTipoReceita, FCadTipoReceita);
  if not Assigned(FCadTipoReceita) then
    FCadTipoReceita := TFCadTipoReceita.Create(nil);
  FCadTipoReceita.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgMenuContasPagarClick(Sender: TObject);
begin
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Falta Abrir o Caixa!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Falta Abrir o Caixa!');
{$ENDIF}
  end
  else
  begin
    Application.CreateForm(TFCadContasPagar, FCadContasPagar);
    if not Assigned(FCadContasPagar) then
      FCadContasPagar := TFCadContasPagar.Create(nil);
    FCadContasPagar.ShowModal(
      procedure(modalResult: TModalResult)
      begin

      end);
  end;
end;

procedure TFPrincipal.ImgMenuContasReceberClick(Sender: TObject);
begin
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Falta Abrir o Caixa!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Falta Abrir o Caixa!');
{$ENDIF}
  end
  else
  begin
    Application.CreateForm(TFCadContasReceber, FCadContasReceber);
    if not Assigned(FCadContasReceber) then
      FCadContasReceber := TFCadContasReceber.Create(nil);
    FCadContasReceber.ShowModal(
      procedure(modalResult: TModalResult)
      begin

      end);
  end;
end;

procedure TFPrincipal.ImgMenuVendaClick(Sender: TObject);
begin
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Falta Abrir o Caixa!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Falta Abrir o Caixa!');
{$ENDIF}
  end
  else
  begin
    Application.CreateForm(TFVenda1, FVenda1);
    if not Assigned(FVenda1) then
      FVenda1 := TFVenda1.Create(nil);
    FVenda1.ShowModal(
      procedure(modalResult: TModalResult)
      begin

      end);
  end;
end;

procedure TFPrincipal.MudarAba(ATabItem: TTabItem; Sender: TObject);
begin
  ActMudarAba.Tab := ATabItem;
  ActMudarAba.ExecuteTarget(Sender);
end;

procedure TFPrincipal.RectangleMenuVendaClick(Sender: TObject);
begin
  Application.CreateForm(TFVenda1, FVenda1);
  if not Assigned(FVenda1) then
    FVenda1 := TFVenda1.Create(nil);
  FVenda1.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectAtalhoAgendaClick(Sender: TObject);
begin
  Application.CreateForm(TFAgenda, FAgenda);
  if not Assigned(FAgenda) then
    FAgenda := TFAgenda.Create(nil);
  FAgenda.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectAtalhoCadCliClick(Sender: TObject);
begin
  Application.CreateForm(TFCadCli, FCadCli);
  if not Assigned(FCadCli) then
    FCadCli := TFCadCli.Create(nil);
  FCadCli.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectAtalhoCAixaClick(Sender: TObject);
begin
  Application.CreateForm(TFCaixa, FCaixa);
  if not Assigned(FCaixa) then
    FCaixa := TFCaixa.Create(nil);
  FCaixa.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectAtalhoContasPagarClick(Sender: TObject);
begin
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Falta Abrir o Caixa!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Falta Abrir o Caixa!');
{$ENDIF}
  end
  else
  begin
    Application.CreateForm(TFCadContasPagar, FCadContasPagar);
    if not Assigned(FCadContasPagar) then
      FCadContasPagar := TFCadContasPagar.Create(nil);
    FCadContasPagar.ShowModal(
      procedure(modalResult: TModalResult)
      begin

      end);
  end;
end;

procedure TFPrincipal.RoundRectAtalhoContasReceberClick(Sender: TObject);
begin
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Falta Abrir o Caixa!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Falta Abrir o Caixa!');
{$ENDIF}
  end
  else
  begin
    Application.CreateForm(TFCadContasReceber, FCadContasReceber);
    if not Assigned(FCadContasReceber) then
      FCadContasReceber := TFCadContasReceber.Create(nil);
    FCadContasReceber.ShowModal(
      procedure(modalResult: TModalResult)
      begin

      end);
  end;
end;

procedure TFPrincipal.RoundRectAtalhoFornecedorClick(Sender: TObject);
begin
  Application.CreateForm(TFCadFornecedor, FCadFornecedor);
  if not Assigned(FCadFornecedor) then
    FCadFornecedor := TFCadFornecedor.Create(nil);
  FCadFornecedor.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectAtalhoFuncionarioClick(Sender: TObject);
begin
  Application.CreateForm(TFFuncionario, FFuncionario);
  if not Assigned(FFuncionario) then
    FFuncionario := TFFuncionario.Create(nil);
  FFuncionario.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectAtalhoVendaClick(Sender: TObject);
begin
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Falta Abrir o Caixa!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Falta Abrir o Caixa!');
{$ENDIF}
  end
  else
  begin
    Application.CreateForm(TFVenda1, FVenda1);
    if not Assigned(FVenda1) then
      FVenda1 := TFVenda1.Create(nil);
    FVenda1.ShowModal(
      procedure(modalResult: TModalResult)
      begin

      end);
  end;
end;

procedure TFPrincipal.RoundRectAtalhoTipoReceitaClick(Sender: TObject);
begin
  Application.CreateForm(TFCadTipoReceita, FCadTipoReceita);
  if not Assigned(FCadTipoReceita) then
    FCadTipoReceita := TFCadTipoReceita.Create(nil);
  FCadTipoReceita.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectAtalhoConsProdClick(Sender: TObject);
begin
  Application.CreateForm(TFConsProduto, FConsProduto);
  if not Assigned(FConsProduto) then
    FConsProduto := TFConsProduto.Create(nil);
  FConsProduto.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectAtalhoDespesaClick(Sender: TObject);
begin
  Application.CreateForm(TFCadDespesa, FCadDespesa);
  if not Assigned(FCadDespesa) then
    FCadDespesa := TFCadDespesa.Create(nil);
  FCadDespesa.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.SpdBInfoClick(Sender: TObject);
begin
  Application.CreateForm(TFInfo, FInfo);
  if not Assigned(FInfo) then
    FInfo := TFInfo.Create(nil);
  FInfo.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.SpdBtnAlteraAtalhosClick(Sender: TObject);
begin
  try
    SpdBtnConfirmaAlteraAtalho.Visible := False;

    DM.FDQConsAtalhos.Close;
    DM.FDQConsAtalhos.Open();

    DM.FDQConsAtalhos.First;
    while not DM.FDQConsAtalhos.Eof do
    begin
      case DM.FDQConsAtalhostag.AsInteger of
        1:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoVenda.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoVenda.IsChecked := False;
        2:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoCaixa.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoCaixa.IsChecked := False;
        3:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoContaReceber.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoContaReceber.IsChecked := False;
        4:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoContaPagar.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoContaPagar.IsChecked := False;
        5:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoCliente.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoCliente.IsChecked := False;
        6:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoFornecedor.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoFornecedor.IsChecked := False;
        7:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoFuncionario.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoFuncionario.IsChecked := False;
        8:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoProduto.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoProduto.IsChecked := False;
        9:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoDespesa.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoDespesa.IsChecked := False;
        10:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoTipoReceita.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoTipoReceita.IsChecked := False;
        11:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoAgenda.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoAgenda.IsChecked := False;
        12:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoEstoque.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoEstoque.IsChecked := False;
        13:
          if DM.FDQConsAtalhosativo.AsString = 'S' then
            SwitchAlteraAtalhoConfig.IsChecked := True
          else if DM.FDQConsAtalhosativo.AsString = 'N' then
            SwitchAlteraAtalhoConfig.IsChecked := False;

      end;

      DM.FDQConsAtalhos.Next
    end;

    MudarAba(TabItemAlteraAtalho, Sender);
  finally
    DM.FDQConsAtalhos.Active := False;
  end;
end;

procedure TFPrincipal.SpdBtnCancelarLoginClick(Sender: TObject);
begin
  MessageDlg('Deseja encerrar o aplicativo?',
    System.UITypes.TMsgDlgType.mtInformation, [System.UITypes.TMsgDlgBtn.mbYes,
    System.UITypes.TMsgDlgBtn.mbNo], 0,
    procedure(const AResult: System.UITypes.TModalResult)
    begin
      case AResult of
        mrYES:
          begin
            // caso sim
            Close;
          end;
        mrNo:
          begin
            // caso não
          end;
      end;
    end);
end;

procedure TFPrincipal.SpdBtnConfirmaAlteraAtalhoClick(Sender: TObject);
begin
  try
    try

      DM.FDQEditAtalhos.Close;
      DM.FDQEditAtalhos.Open();

      DM.FDQEditAtalhos.First;
      while not DM.FDQEditAtalhos.Eof do
      begin
        if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoVenda.Tag then
        begin
          if SwitchAlteraAtalhoVenda.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoCaixa.Tag
        then
        begin
          if SwitchAlteraAtalhoCaixa.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoContaReceber.Tag
        then
        begin
          if SwitchAlteraAtalhoContaReceber.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoContaPagar.Tag
        then
        begin
          if SwitchAlteraAtalhoContaPagar.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoCliente.Tag
        then
        begin
          if SwitchAlteraAtalhoCliente.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoFornecedor.Tag
        then
        begin
          if SwitchAlteraAtalhoFornecedor.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoFuncionario.Tag
        then
        begin
          if SwitchAlteraAtalhoFuncionario.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoProduto.Tag
        then
        begin
          if SwitchAlteraAtalhoProduto.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoDespesa.Tag
        then
        begin
          if SwitchAlteraAtalhoDespesa.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoTipoReceita.Tag
        then
        begin
          if SwitchAlteraAtalhoTipoReceita.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoAgenda.Tag
        then
        begin
          if SwitchAlteraAtalhoAgenda.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoEstoque.Tag
        then
        begin
          if SwitchAlteraAtalhoEstoque.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end
        else if DM.FDQEditAtalhostag.AsInteger = SwitchAlteraAtalhoConfig.Tag
        then
        begin
          if SwitchAlteraAtalhoConfig.IsChecked then
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'S';
            DM.FDQEditAtalhos.Post;
          end
          else
          begin
            DM.FDQEditAtalhos.Edit;
            DM.FDQEditAtalhosativo.AsString := 'N';
            DM.FDQEditAtalhos.Post;
          end;
        end;

        DM.FDQEditAtalhos.Next;
      end;
{$IFDEF ANDROID}
      TfgToast.Show('Atalhos Alterados com Sucesso!');
{$ENDIF}
{$IFDEF MSWINDOWS}
      ShowMessage('Atalhos Alterados com Sucesso!');
{$ENDIF}
    except
      on E: Exception do
        ShowMessage(E.Message);
    end;
  finally
    DM.FDQEditAtalhos.Active := False;
  end;

end;

procedure TFPrincipal.SpdBtnEntrarLoginClick(Sender: TObject);
begin
  try
    DM.FDQFuncionario.SQL.Clear;
    DM.FDQFuncionario.Close;
    DM.FDQFuncionario.Open('select * from funcionario where usuario = ' +
      QuotedStr(EdtUsuarioLogin.Text) + ' and senha = ' +
      QuotedStr(EdtSenhaLogin.Text) + ' and status = ' + QuotedStr('A'));

    if DM.FDQFuncionario.IsEmpty then
    begin
{$IFDEF ANDROID}
      TfgToast.Show('Usuário ou Senha Inválido!');
{$ENDIF}
{$IFDEF MSWINDOWS}
      ShowMessage('Usuário ou Senha Inválido!');
{$ENDIF}
    end
    else
    begin
      idUsuarioAtivo := DM.FDQFuncionarioid_funcionario.AsString;
      LblCodUsuarioAtivo.Text := DM.FDQFuncionarioid_funcionario.AsString;
      LblNomeUsuarioAtivo.Text := DM.FDQFuncionariousuario.AsString;
      MudarAba(TbItemMenu, Sender);
    end;
  finally
    DM.FDQFuncionario.Close;
  end;
end;

procedure TFPrincipal.SpdBtnMenuAgendaClick(Sender: TObject);
begin
  Application.CreateForm(TFAgenda, FAgenda);
  if not Assigned(FAgenda) then
    FAgenda := TFAgenda.Create(nil);
  FAgenda.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.SpdBtnMenuCaixaClick(Sender: TObject);
begin
  Application.CreateForm(TFCaixa, FCaixa);
  if not Assigned(FCaixa) then
    FCaixa := TFCaixa.Create(nil);
  FCaixa.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.SpdBtnMenuClientesClick(Sender: TObject);
begin
  Application.CreateForm(TFCadCli, FCadCli);
  if not Assigned(FCadCli) then
    FCadCli := TFCadCli.Create(nil);
  FCadCli.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.SpdBtnMenuContaPagarClick(Sender: TObject);
begin
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Falta Abrir o Caixa!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Falta Abrir o Caixa!');
{$ENDIF}
  end
  else
  begin
    Application.CreateForm(TFCadContasPagar, FCadContasPagar);
    if not Assigned(FCadContasPagar) then
      FCadContasPagar := TFCadContasPagar.Create(nil);
    FCadContasPagar.ShowModal(
      procedure(modalResult: TModalResult)
      begin

      end);
  end;
end;

procedure TFPrincipal.SpdBtnMenuContaReceberClick(Sender: TObject);
begin
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Falta Abrir o Caixa!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Falta Abrir o Caixa!');
{$ENDIF}
  end
  else
  begin
    Application.CreateForm(TFCadContasReceber, FCadContasReceber);
    if not Assigned(FCadContasReceber) then
      FCadContasReceber := TFCadContasReceber.Create(nil);
    FCadContasReceber.ShowModal(
      procedure(modalResult: TModalResult)
      begin

      end);
  end;
end;

procedure TFPrincipal.SpdBtnMenuDespesasClick(Sender: TObject);
begin
  Application.CreateForm(TFCadDespesa, FCadDespesa);
  if not Assigned(FCadDespesa) then
    FCadDespesa := TFCadDespesa.Create(nil);
  FCadDespesa.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.SpdBtnMenuFornecedorClick(Sender: TObject);
begin
  Application.CreateForm(TFCadFornecedor, FCadFornecedor);
  if not Assigned(FCadFornecedor) then
    FCadFornecedor := TFCadFornecedor.Create(nil);
  FCadFornecedor.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.SpdBtnMenuProdutoClick(Sender: TObject);
begin
  Application.CreateForm(TFConsProduto, FConsProduto);
  if not Assigned(FConsProduto) then
    FConsProduto := TFConsProduto.Create(nil);
  FConsProduto.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.SpdBtnMenuTipoReceitaClick(Sender: TObject);
begin
  Application.CreateForm(TFCadTipoReceita, FCadTipoReceita);
  if not Assigned(FCadTipoReceita) then
    FCadTipoReceita := TFCadTipoReceita.Create(nil);
  FCadTipoReceita.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.SpdBtnMenuVendasClick(Sender: TObject);
begin
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Falta Abrir o Caixa!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Falta Abrir o Caixa!');
{$ENDIF}
  end
  else
  begin
    Application.CreateForm(TFVenda1, FVenda1);
    if not Assigned(FVenda1) then
      FVenda1 := TFVenda1.Create(nil);
    FVenda1.ShowModal(
      procedure(modalResult: TModalResult)
      begin

      end);
  end;
end;

procedure TFPrincipal.SpdBtnVoltarAlteraAtalhoClick(Sender: TObject);
begin
  ConfigAtalho;

  MudarAba(TbItemMenu, Sender);
end;

procedure TFPrincipal.SwitchAlteraAtalhoAgendaSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoCaixaSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoClienteSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoConfigSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoContaPagarSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoContaReceberSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoDespesaSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoEstoqueSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoFornecedorSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoFuncionarioSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoProdutoSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoTipoReceitaSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

procedure TFPrincipal.SwitchAlteraAtalhoVendaSwitch(Sender: TObject);
begin
  SpdBtnConfirmaAlteraAtalho.Visible := True;
end;

end.
