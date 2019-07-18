unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.ListBox, FMX.StdCtrls, FMX.Layouts, FMX.Controls.Presentation,
  FMX.Effects,
  FMX.TabControl, System.Actions, FMX.ActnList, //ksTypes, ksLoadingIndicator,
  FMX.VirtualKeyboard, System.Math, FMX.Platform;

type
  TFPrincipal = class(TForm)
    LytFundoTelaPrinc: TLayout;
    Btnsincroniza: TButton;
    LytFundoMenuPrinc: TLayout;
    TbControlPrincipal: TTabControl;
    TbItemMenu: TTabItem;
    ActionList1: TActionList;
    ActMudarAba: TChangeTabAction;
    ToolBar1: TToolBar;
    SpdBInfo: TSpeedButton;
    Label1: TLabel;
    Image1: TImage;
    ListBoxMenuPrinc: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    RoundRectVendas: TRoundRect;
    RoundRectCadCli: TRoundRect;
    RoundRectConsProd: TRoundRect;
    RoundRectCadContasReceber: TRoundRect;
    RoundRectContagemProd: TRoundRect;
    ImgVenda: TImage;
    ImgCadCli: TImage;
    ImgConsProd: TImage;
    ImgCadContasReceber: TImage;
    ImgContagemProd: TImage;
    LytVendas: TLayout;
    LytCadCli: TLayout;
    LytConsProd: TLayout;
    LytConsAdm: TLayout;
    LytContProd: TLayout;
    LblTituloVendas: TLabel;
    LblTituloCadCli: TLabel;
    LblTituloConsProd: TLabel;
    LblTituloConsAdm: TLabel;
    LblTituloContProd: TLabel;
    //ksLoadingIndicator1: TksLoadingIndicator;
    ListBoxItem6: TListBoxItem;
    RoundRectCadFornecedor: TRoundRect;
    ImgCadFornecedor: TImage;
    Layout1: TLayout;
    LblTituloCadFornecedor: TLabel;
    ListBoxItem7: TListBoxItem;
    Rectangle1: TRectangle;
    ListBoxItem8: TListBoxItem;
    Rectangle2: TRectangle;
    ListBoxItem9: TListBoxItem;
    RoundRectCadContasPagar: TRoundRect;
    ImgCadContasPagar: TImage;
    Layout2: TLayout;
    LblCadContasPagar: TLabel;
    ListBoxItem10: TListBoxItem;
    RoundRectAgenda: TRoundRect;
    ImgAgenda: TImage;
    LytAgenda: TLayout;
    LblTituloAgenda: TLabel;
    ListBoxItem11: TListBoxItem;
    RoundRectCadDespesa: TRoundRect;
    ImgCadDespesa: TImage;
    LytCadDespesa: TLayout;
    LblCadDespesa: TLabel;
    ListBoxItem12: TListBoxItem;
    RoundRectCadTipoReceita: TRoundRect;
    ImgCadTipoReceita: TImage;
    LytCadTipoReceita: TLayout;
    LblCadTipoReceita: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure RoundRectVendasClick(Sender: TObject);
    procedure ImgVendaClick(Sender: TObject);
    procedure SpdBInfoClick(Sender: TObject);
    procedure RoundRectCadContasReceberClick(Sender: TObject);
    procedure ImgCadContasReceberClick(Sender: TObject);
    procedure RoundRectCadCliClick(Sender: TObject);
    procedure RoundRectCadFornecedorClick(Sender: TObject);
    procedure ImgCadFornecedorClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure ImgCadCliClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RoundRectCadContasPagarClick(Sender: TObject);
    procedure ImgCadContasPagarClick(Sender: TObject);
    procedure RoundRectAgendaClick(Sender: TObject);
    procedure ImgAgendaClick(Sender: TObject);
    procedure RoundRectCadDespesaClick(Sender: TObject);
    procedure ImgCadDespesaClick(Sender: TObject);
    procedure RoundRectCadTipoReceitaClick(Sender: TObject);
    procedure ImgCadTipoReceitaClick(Sender: TObject);
    procedure RoundRectConsProdClick(Sender: TObject);
    procedure ImgConsProdClick(Sender: TObject);
  private
    { Private declarations }
    FActiveForm: TForm;
  public
    { Public declarations }
    procedure MudarAba(ATabItem: TTabItem; Sender: TObject);
    procedure AbrirForm(AFormClass: TComponentClass);
    // procedure AjustarLayout;
  end;

var
  FPrincipal: TFPrincipal;
  TecladoVirtualVisible: Boolean;

implementation

{$R *.fmx}

uses UDM, UVenda, UCadCli, UConsultaProduto, UInfo, UVenda1, UCadContasReceber,
  UAuxiliar, UCadFornecedor, UCadContasPagar, UAgenda, UCadDespesa,
  UCadTipoReceita;

procedure TFPrincipal.AbrirForm(AFormClass: TComponentClass);
begin

end;

// procedure TFPrincipal.AjustarLayout;
// begin
// ListBoxMenuPrinc.ItemWidth := (Self.ClientWidth - 20);
// end;

procedure TFPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Assigned(FVenda1) then
    FVenda1.DisposeOf;

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
  TbControlPrincipal.ActiveTab := TbItemMenu;
  TbControlPrincipal.TabPosition := TTabPosition.None;
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
      end;
    end;
  end;
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

procedure TFPrincipal.ImgAgendaClick(Sender: TObject);
begin
  Application.CreateForm(TFAgenda, FAgenda);
  if not Assigned(FAgenda) then
    FAgenda := TFAgenda.Create(nil);
  FAgenda.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgCadCliClick(Sender: TObject);
begin
  Application.CreateForm(TFCadCli, FCadCli);
  if not Assigned(FCadCli) then
    FCadCli := TFCadCli.Create(nil);
  FCadCli.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgCadFornecedorClick(Sender: TObject);
begin
  Application.CreateForm(TFCadFornecedor, FCadFornecedor);
  if not Assigned(FCadFornecedor) then
    FCadFornecedor := TFCadFornecedor.Create(nil);
  FCadFornecedor.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgCadTipoReceitaClick(Sender: TObject);
begin
  Application.CreateForm(TFCadTipoReceita, FCadTipoReceita);
  if not Assigned(FCadTipoReceita) then
    FCadTipoReceita := TFCadTipoReceita.Create(nil);
  FCadTipoReceita.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgConsProdClick(Sender: TObject);
begin
  Application.CreateForm(TFConsProduto, FConsProduto);
  if not Assigned(FConsProduto) then
    FConsProduto := TFConsProduto.Create(nil);
  FConsProduto.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgCadContasPagarClick(Sender: TObject);
begin
  Application.CreateForm(TFCadContasPagar, FCadContasPagar);
  if not Assigned(FCadContasPagar) then
    FCadContasPagar := TFCadContasPagar.Create(nil);
  FCadContasPagar.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgCadContasReceberClick(Sender: TObject);
begin
  Application.CreateForm(TFCadContasReceber, FCadContasReceber);
  if not Assigned(FCadContasReceber) then
    FCadContasReceber := TFCadContasReceber.Create(nil);
  FCadContasReceber.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgCadDespesaClick(Sender: TObject);
begin
  Application.CreateForm(TFCadDespesa, FCadDespesa);
  if not Assigned(FCadDespesa) then
    FCadDespesa := TFCadDespesa.Create(nil);
  FCadDespesa.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.ImgVendaClick(Sender: TObject);
begin
  Application.CreateForm(TFVenda1, FVenda1);
  if not Assigned(FVenda1) then
    FVenda1 := TFVenda1.Create(nil);
  FVenda1.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.MudarAba(ATabItem: TTabItem; Sender: TObject);
begin
  ActMudarAba.Tab := ATabItem;
  ActMudarAba.ExecuteTarget(Sender);
end;

procedure TFPrincipal.RoundRectAgendaClick(Sender: TObject);
begin
  Application.CreateForm(TFAgenda, FAgenda);
  if not Assigned(FAgenda) then
    FAgenda := TFAgenda.Create(nil);
  FAgenda.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectCadCliClick(Sender: TObject);
begin
  Application.CreateForm(TFCadCli, FCadCli);
  if not Assigned(FCadCli) then
    FCadCli := TFCadCli.Create(nil);
  FCadCli.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectCadFornecedorClick(Sender: TObject);
begin
  Application.CreateForm(TFCadFornecedor, FCadFornecedor);
  if not Assigned(FCadFornecedor) then
    FCadFornecedor := TFCadFornecedor.Create(nil);
  FCadFornecedor.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectCadTipoReceitaClick(Sender: TObject);
begin
  Application.CreateForm(TFCadTipoReceita, FCadTipoReceita);
  if not Assigned(FCadTipoReceita) then
    FCadTipoReceita := TFCadTipoReceita.Create(nil);
  FCadTipoReceita.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectConsProdClick(Sender: TObject);
begin
  Application.CreateForm(TFConsProduto, FConsProduto);
  if not Assigned(FConsProduto) then
    FConsProduto := TFConsProduto.Create(nil);
  FConsProduto.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectCadContasPagarClick(Sender: TObject);
begin
  Application.CreateForm(TFCadContasPagar, FCadContasPagar);
  if not Assigned(FCadContasPagar) then
    FCadContasPagar := TFCadContasPagar.Create(nil);
  FCadContasPagar.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectCadContasReceberClick(Sender: TObject);
begin
  Application.CreateForm(TFCadContasReceber, FCadContasReceber);
  if not Assigned(FCadContasReceber) then
    FCadContasReceber := TFCadContasReceber.Create(nil);
  FCadContasReceber.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectCadDespesaClick(Sender: TObject);
begin
  Application.CreateForm(TFCadDespesa, FCadDespesa);
  if not Assigned(FCadDespesa) then
    FCadDespesa := TFCadDespesa.Create(nil);
  FCadDespesa.ShowModal(
    procedure(modalResult: TModalResult)
    begin

    end);
end;

procedure TFPrincipal.RoundRectVendasClick(Sender: TObject);
begin
  Application.CreateForm(TFVenda1, FVenda1);
  if not Assigned(FVenda1) then
    FVenda1 := TFVenda1.Create(nil);
  FVenda1.ShowModal(
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

end.
