unit UPrincipal;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.ListBox, FMX.StdCtrls, FMX.Layouts, FMX.Controls.Presentation,
  FMX.Effects,
  FMX.TabControl, System.Actions, FMX.ActnList, ksTypes, ksLoadingIndicator;

type
  TFPrincipal = class(TForm)
    LytFundoTelaPrinc: TLayout;
    Btnsincroniza: TButton;
    LytFundoMenuPrinc: TLayout;
    TbControlPrincipal: TTabControl;
    TbItemMenu: TTabItem;
    TbItemApoio: TTabItem;
    ActionList1: TActionList;
    ActMudarAba: TChangeTabAction;
    LytPrincipal: TLayout;
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
    RoundRectConsAdm: TRoundRect;
    RoundRectContagemProd: TRoundRect;
    ImgVenda: TImage;
    ImgCadCli: TImage;
    ImgConsProd: TImage;
    ImgConsAdm: TImage;
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
    ksLoadingIndicator1: TksLoadingIndicator;
    ListBoxItem6: TListBoxItem;
    RoundRectCadFornecedor: TRoundRect;
    ImgCadFornecedor: TImage;
    Layout1: TLayout;
    LblTituloCadFornecedor: TLabel;
    ListBoxItem7: TListBoxItem;
    Rectangle1: TRectangle;
    ListBoxItem8: TListBoxItem;
    Rectangle2: TRectangle;
    procedure FormCreate(Sender: TObject);
    procedure RoundRectVendasClick(Sender: TObject);
    procedure ImgVendaClick(Sender: TObject);
    procedure RoundRectConsProdClick(Sender: TObject);
    procedure ImgConsProdClick(Sender: TObject);
    procedure SpdBInfoClick(Sender: TObject);
    procedure RoundRectConsAdmClick(Sender: TObject);
    procedure ImgConsAdmClick(Sender: TObject);
    procedure RoundRectCadCliClick(Sender: TObject);
    procedure RoundRectCadFornecedorClick(Sender: TObject);
    procedure ImgCadFornecedorClick(Sender: TObject);
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

implementation

{$R *.fmx}

uses UDM, UVenda, UCadCli, UConsultaProduto, UInfo, UVenda1, UCadContasReceber,
  UAuxiliar, UCadFornecedor;

procedure TFPrincipal.AbrirForm(AFormClass: TComponentClass);
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
    LytPrincipal.AddObject(TLayout(LayoutBase));

end;

// procedure TFPrincipal.AjustarLayout;
// begin
// ListBoxMenuPrinc.ItemWidth := (Self.ClientWidth - 20);
// end;

procedure TFPrincipal.FormCreate(Sender: TObject);
begin
  TbControlPrincipal.ActiveTab := TbItemMenu;
  TbControlPrincipal.TabPosition := TTabPosition.None;
end;

procedure TFPrincipal.ImgCadFornecedorClick(Sender: TObject);
begin
  AbrirForm(TFCadFornecedor);
  MudarAba(TbItemApoio, Sender);
end;

procedure TFPrincipal.ImgConsAdmClick(Sender: TObject);
begin
  AbrirForm(TFCadContasReceber);
  MudarAba(TbItemApoio, Sender);
end;

procedure TFPrincipal.ImgConsProdClick(Sender: TObject);
begin
  AbrirForm(TFConsProduto);
  MudarAba(TbItemApoio, Sender);
end;

procedure TFPrincipal.ImgVendaClick(Sender: TObject);
begin
  AbrirForm(TFVenda1);
  MudarAba(TbItemApoio, Sender);
end;

procedure TFPrincipal.MudarAba(ATabItem: TTabItem; Sender: TObject);
begin
  ActMudarAba.Tab := ATabItem;
  ActMudarAba.ExecuteTarget(Sender);
end;

procedure TFPrincipal.RoundRectCadCliClick(Sender: TObject);
begin
  AbrirForm(TFCadCli);
  MudarAba(TbItemApoio, Sender);
  venda := 'N';
end;

procedure TFPrincipal.RoundRectCadFornecedorClick(Sender: TObject);
begin
  AbrirForm(TFCadFornecedor);
  MudarAba(TbItemApoio, Sender);
end;

procedure TFPrincipal.RoundRectConsAdmClick(Sender: TObject);
begin
  AbrirForm(TFCadContasReceber);
  MudarAba(TbItemApoio, Sender);
end;

procedure TFPrincipal.RoundRectConsProdClick(Sender: TObject);
begin
  AbrirForm(TFConsProduto);
  MudarAba(TbItemApoio, Sender);
end;

procedure TFPrincipal.RoundRectVendasClick(Sender: TObject);
begin
  AbrirForm(TFVenda1);
  MudarAba(TbItemApoio, Sender);
end;

procedure TFPrincipal.SpdBInfoClick(Sender: TObject);
begin
  AbrirForm(TFInfo);
  MudarAba(TbItemApoio, Sender);
end;

end.
