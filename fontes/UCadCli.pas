unit UCadCli;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, FMX.Controls.Presentation, FMX.TabControl, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, System.Actions, FMX.ActnList,
  System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Edit,
  FMX.VirtualKeyboard,
  FMX.Platform, FMX.ListBox, FMX.ScrollBox, FMX.Memo, FMX.StdActns,
  FMX.MediaLibrary.Actions, FMX.Objects, System.Math, System.ImageList,
  FMX.ImgList, FMX.Gestures, MultiDetailAppearanceU, FMX.Ani;

type
  TFCadCli = class(TFCadModelo)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    LinkFillControlToField1: TLinkFillControlToField;
    EditFiltroNomeCadCli: TEdit;
    EditFiltroCodCadCli: TEdit;
    ListViewCadCli: TListView;
    lblTituloEdicao: TLabel;
    SpdBEditar: TSpeedButton;
    SpdBConfirmar: TSpeedButton;
    SpdBFotoCli: TSpeedButton;
    LinkListControlToField1: TLinkListControlToField;
    ListBoxEdicaoCadCli: TListBox;
    ListBoxItem1: TListBoxItem;
    EdtNomeCli: TEdit;
    EdtBNomeCli: TEditButton;
    ListBoxItem2: TListBoxItem;
    ComboBoxTipoPessoaCli: TComboBox;
    LblTipoPessoaCli: TLabel;
    ListBoxItem3: TListBoxItem;
    EdtCpfCli: TEdit;
    EdtBCpfCli: TEditButton;
    ListBoxItem4: TListBoxItem;
    EdtRgCli: TEdit;
    EdtBRgCli: TEditButton;
    ListBoxItem5: TListBoxItem;
    EdtApelidoCli: TEdit;
    EdtBApelidoCli: TEditButton;
    ListBoxItem6: TListBoxItem;
    EdtFoneCli: TEdit;
    EdtBFoneCli: TEditButton;
    ListBoxItem7: TListBoxItem;
    EdtEnderecoCli: TEdit;
    EdtBEndCli: TEditButton;
    ListBoxItem8: TListBoxItem;
    EdtNumCli: TEdit;
    EdtBNumCli: TEditButton;
    ListBoxItem9: TListBoxItem;
    EdtCompCli: TEdit;
    EdtBCompCli: TEditButton;
    ListBoxItem10: TListBoxItem;
    EdtBairroCli: TEdit;
    EdtBBairroCli: TEditButton;
    ListBoxItem11: TListBoxItem;
    EdtCepCli: TEdit;
    EdtBCepCli: TEditButton;
    ListBoxItem12: TListBoxItem;
    EdtCidadeCli: TEdit;
    EdtBCidadeCli: TEditButton;
    ListBoxItem13: TListBoxItem;
    EdtUfCli: TEdit;
    EdtBUfCli: TEditButton;
    ListBoxItem14: TListBoxItem;
    EdtEmailCli: TEdit;
    EdtBEmailCli: TEditButton;
    ListBoxItem15: TListBoxItem;
    LblLiberaAprazoCli: TLabel;
    RadioBLiberaAprazoS: TRadioButton;
    RadioBLiberaAprazoN: TRadioButton;
    ListBoxItem16: TListBoxItem;
    LblObsCli: TLabel;
    MemoObsCadCli: TMemo;
    ListBoxItem17: TListBoxItem;
    EdtDataCadCli: TEdit;
    ListBoxItem18: TListBoxItem;
    LytFotoCli: TLayout;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    LinkControlToField10: TLinkControlToField;
    LinkControlToField11: TLinkControlToField;
    LinkControlToField12: TLinkControlToField;
    LinkControlToField13: TLinkControlToField;
    LinkControlToField14: TLinkControlToField;
    ImgFotoCli: TImage;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LblNomeCli: TLabel;
    LblCpfCli: TLabel;
    LblRgCli: TLabel;
    LblApelidoCli: TLabel;
    LblFoneCli: TLabel;
    LblEndCli: TLabel;
    LblNumCli: TLabel;
    LblCompCli: TLabel;
    LblBairroCli: TLabel;
    LblCepCli: TLabel;
    LblCidade: TLabel;
    LblUfCli: TLabel;
    LblEmailCli: TLabel;
    GestureManager1: TGestureManager;
    BtnFiltrarCli: TButton;
    SpdBNovoCadCli: TSpeedButton;
    LblDataCadCli: TLabel;
    LinkControlToField15: TLinkControlToField;
    VertScrollBox1: TVertScrollBox;
    ImgRelatorioCli: TImage;
    ListBoxItem19: TListBoxItem;
    LblStatusCadCli: TLabel;
    CBStatusCadCli: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure SpBVoltarEdicaoClick(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure EditFiltroNomeCadCliClick(Sender: TObject);
    procedure EditFiltroCodCadCliClick(Sender: TObject);
    procedure SpdBEditarClick(Sender: TObject);
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure SpdBConfirmarClick(Sender: TObject);
    procedure EdtBNomeCliClick(Sender: TObject);
    procedure EdtBCpfCliClick(Sender: TObject);
    procedure EdtBRgCliClick(Sender: TObject);
    procedure EdtBApelidoCliClick(Sender: TObject);
    procedure EdtBFoneCliClick(Sender: TObject);
    procedure EdtBEndCliClick(Sender: TObject);
    procedure EdtBNumCliClick(Sender: TObject);
    procedure EdtBCompCliClick(Sender: TObject);
    procedure EdtBBairroCliClick(Sender: TObject);
    procedure EdtBCepCliClick(Sender: TObject);
    procedure EdtBCidadeCliClick(Sender: TObject);
    procedure EdtBUfCliClick(Sender: TObject);
    procedure EdtBEmailCliClick(Sender: TObject);
    procedure ListViewCadCliButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure ListViewCadCliGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ListViewCadCliItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure EdtNomeCliKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtCpfCliKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtRgCliKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtApelidoCliKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtFoneCliKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtEnderecoCliKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtNumCliKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtCompCliKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtBairroCliKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtCepCliKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtCidadeCliKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtUfCliKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtEmailCliKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EditFiltroNomeCadCliTyping(Sender: TObject);
    procedure EditFiltroCodCadCliTyping(Sender: TObject);
    procedure BtnFiltrarCliClick(Sender: TObject);
    procedure SpdBNovoCadCliClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure ImgRelatorioCliClick(Sender: TObject);
    procedure EdtNomeCliClick(Sender: TObject);
    procedure EdtCpfCliClick(Sender: TObject);
    procedure EdtRgCliClick(Sender: TObject);
    procedure EdtApelidoCliClick(Sender: TObject);
    procedure EdtFoneCliClick(Sender: TObject);
    procedure EdtEnderecoCliClick(Sender: TObject);
    procedure EdtNumCliClick(Sender: TObject);
    procedure EdtCompCliClick(Sender: TObject);
    procedure EdtBairroCliClick(Sender: TObject);
    procedure EdtCepCliClick(Sender: TObject);
    procedure EdtCidadeCliClick(Sender: TObject);
    procedure EdtUfCliClick(Sender: TObject);
    procedure EdtEmailCliClick(Sender: TObject);
    procedure MemoObsCadCliClick(Sender: TObject);
  private
    clickBotao: Boolean;
    DataHora: TDateTime;
    FotoCli: TBitmap;
    crud: string;

    procedure DesabilitaCampos;
    procedure HabilitaCampos;
    procedure LimpaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadCli: TFCadCli;
  nomeCliente, codCliente: string;

implementation

{$R *.fmx}
{$IFDEF MSWINDOWS}

uses UDM, UPrincipal, UVenda1;
{$ENDIF}
{$IFDEF ANDROID}

uses UDM, UPrincipal, UVenda1, Androidapi.JNI.GraphicsContentViewText,
  Androidapi.JNI.JavaTypes,
  Androidapi.JNI.Net, Androidapi.Helpers, System.IOUtils,
  FGX.Graphics, FGX.Toasts;
{$ENDIF}

procedure TFCadCli.BtnFiltrarCliClick(Sender: TObject);
begin
  inherited;
  EditFiltroNomeCadCli.Text := EmptyStr;
  EditFiltroCodCadCli.Text := EmptyStr;
  DM.FDQFiltroCadCLi.Active := False;
  DM.FDQFiltroCadCLi.Close;
  DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := '%';
  DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
  DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := '%';
  DM.FDQFiltroCadCLi.Open();
  DM.FDQFiltroCadCLi.Active := True;
end;

procedure TFCadCli.DesabilitaCampos;
begin
  EdtNomeCli.Enabled := False;
  LblTipoPessoaCli.Enabled := False;
  ComboBoxTipoPessoaCli.Enabled := False;
  EdtCpfCli.Enabled := False;
  EdtRgCli.Enabled := False;
  EdtApelidoCli.Enabled := False;
  EdtFoneCli.Enabled := False;
  EdtEnderecoCli.Enabled := False;
  EdtNumCli.Enabled := False;
  EdtCompCli.Enabled := False;
  EdtBairroCli.Enabled := False;
  EdtCepCli.Enabled := False;
  EdtCidadeCli.Enabled := False;
  EdtUfCli.Enabled := False;
  EdtEmailCli.Enabled := False;
  LblLiberaAprazoCli.Enabled := False;
  RadioBLiberaAprazoS.Enabled := False;
  RadioBLiberaAprazoN.Enabled := False;
  LblObsCli.Enabled := False;
  MemoObsCadCli.ReadOnly := True;
  CBStatusCadCli.Enabled := False;
  SpdBFotoCli.Visible := False;
  ImgRelatorioCli.Visible := True;
  EdtDataCadCli.Enabled := False;
end;

procedure TFCadCli.EditFiltroCodCadCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroCodCadCli);
end;

procedure TFCadCli.EditFiltroCodCadCliTyping(Sender: TObject);
begin
  inherited;
  EditFiltroNomeCadCli.Text := EmptyStr;
  DM.FDQFiltroCadCLi.Active := False;
  DM.FDQFiltroCadCLi.Close;
  if EditFiltroCodCadCli.Text.IsEmpty then
  begin
    DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := Null;
  end
  else
  begin
    DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value :=
      EditFiltroCodCadCli.Text;
    DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := '%';
  end;
  DM.FDQFiltroCadCLi.Open();
  DM.FDQFiltroCadCLi.Active := True;
end;

procedure TFCadCli.EditFiltroNomeCadCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroNomeCadCli);
end;

procedure TFCadCli.EditFiltroNomeCadCliTyping(Sender: TObject);
begin
  inherited;
  EditFiltroCodCadCli.Text := EmptyStr;
  DM.FDQFiltroCadCLi.Active := False;
  DM.FDQFiltroCadCLi.Close;
  if EditFiltroNomeCadCli.Text.IsEmpty then
  begin
    DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := Null;
  end
  else
  begin
    DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value :=
      '%' + EditFiltroNomeCadCli.Text + '%';
    DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
    DM.FDQFiltroCadCLi.ParamByName('PStatus').Value := '%';
  end;
  DM.FDQFiltroCadCLi.Open();
  DM.FDQFiltroCadCLi.Active := True;
end;

procedure TFCadCli.EdtApelidoCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtApelidoCli);
end;

procedure TFCadCli.EdtApelidoCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtFoneCli.SetFocus;
end;

procedure TFCadCli.EdtBairroCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtBairroCli);
end;

procedure TFCadCli.EdtBairroCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtCepCli.SetFocus;
end;

procedure TFCadCli.EdtBApelidoCliClick(Sender: TObject);
begin
  inherited;
  EdtFoneCli.SetFocus;
end;

procedure TFCadCli.EdtBBairroCliClick(Sender: TObject);
begin
  inherited;
  EdtCepCli.SetFocus;
end;

procedure TFCadCli.EdtBCepCliClick(Sender: TObject);
begin
  inherited;
  EdtCidadeCli.SetFocus;
end;

procedure TFCadCli.EdtBCidadeCliClick(Sender: TObject);
begin
  inherited;
  EdtUfCli.SetFocus;
end;

procedure TFCadCli.EdtBCompCliClick(Sender: TObject);
begin
  inherited;
  EdtBairroCli.SetFocus;
end;

procedure TFCadCli.EdtBCpfCliClick(Sender: TObject);
begin
  inherited;
  EdtRgCli.SetFocus;
end;

procedure TFCadCli.EdtBEmailCliClick(Sender: TObject);
begin
  inherited;
  EdtEmailCli.SetFocus;
  MemoObsCadCli.SetFocus;
end;

procedure TFCadCli.EdtBEndCliClick(Sender: TObject);
begin
  inherited;
  EdtNumCli.SetFocus;
end;

procedure TFCadCli.EdtBFoneCliClick(Sender: TObject);
begin
  inherited;
  EdtEnderecoCli.SetFocus;
end;

procedure TFCadCli.EdtBNomeCliClick(Sender: TObject);
begin
  inherited;
  EdtCpfCli.SetFocus;
end;

procedure TFCadCli.EdtBNumCliClick(Sender: TObject);
begin
  inherited;
  EdtCompCli.SetFocus;
end;

procedure TFCadCli.EdtBRgCliClick(Sender: TObject);
begin
  inherited;
  EdtApelidoCli.SetFocus;
end;

procedure TFCadCli.EdtBUfCliClick(Sender: TObject);
begin
  inherited;
  EdtEmailCli.SetFocus;
end;

procedure TFCadCli.EdtCepCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtCepCli);
end;

procedure TFCadCli.EdtCepCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtCidadeCli.SetFocus;
end;

procedure TFCadCli.EdtCidadeCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtCidadeCli);
end;

procedure TFCadCli.EdtCidadeCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtUfCli.SetFocus;
end;

procedure TFCadCli.EdtCompCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtCompCli);
end;

procedure TFCadCli.EdtCompCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtBairroCli.SetFocus;
end;

procedure TFCadCli.EdtCpfCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtCpfCli);
end;

procedure TFCadCli.EdtCpfCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtRgCli.SetFocus;
end;

procedure TFCadCli.EdtEmailCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtEmailCli);
end;

procedure TFCadCli.EdtEmailCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    MemoObsCadCli.SetFocus;
end;

procedure TFCadCli.EdtEnderecoCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtEnderecoCli);
end;

procedure TFCadCli.EdtEnderecoCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtNumCli.SetFocus;
end;

procedure TFCadCli.EdtFoneCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtFoneCli);
end;

procedure TFCadCli.EdtFoneCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtEnderecoCli.SetFocus;
end;

procedure TFCadCli.EdtNomeCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtNomeCli);
end;

procedure TFCadCli.EdtNomeCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtCpfCli.SetFocus;
end;

procedure TFCadCli.EdtNumCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtNumCli);
end;

procedure TFCadCli.EdtNumCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtCompCli.SetFocus;
end;

procedure TFCadCli.EdtRgCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtRgCli);
end;

procedure TFCadCli.EdtRgCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtApelidoCli.SetFocus;
end;

procedure TFCadCli.EdtUfCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtUfCli);
end;

procedure TFCadCli.EdtUfCliKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtEmailCli.SetFocus;
end;

procedure TFCadCli.FormCreate(Sender: TObject);
begin
  inherited;
  TbControlCadModelo.ActiveTab := TbItemListagem;
  TbControlCadModelo.TabPosition := TTabPosition.None;
  crud := EmptyStr;
  if venda = 'S' then
  begin
    SpBVoltar.Visible := False;
    LblTitulo.Visible := False;
  end;
end;

procedure TFCadCli.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var
  keyboard: IFMXVirtualKeyboardService;
begin
  inherited;
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
      if TbControlCadModelo.ActiveTab = TbItemListagem then
      begin
        SpBVoltarClick(Sender);
      end
      else
      begin
        SpBVoltarEdicaoClick(Sender);
      end;
    end;
  end;
end;

procedure TFCadCli.HabilitaCampos;
begin
  EdtNomeCli.Enabled := True;
  ComboBoxTipoPessoaCli.Enabled := True;
  EdtCpfCli.Enabled := True;
  EdtRgCli.Enabled := True;
  EdtApelidoCli.Enabled := True;
  EdtFoneCli.Enabled := True;
  EdtEnderecoCli.Enabled := True;
  EdtNumCli.Enabled := True;
  EdtCompCli.Enabled := True;
  EdtBairroCli.Enabled := True;
  EdtCepCli.Enabled := True;
  EdtCidadeCli.Enabled := True;
  EdtUfCli.Enabled := True;
  EdtEmailCli.Enabled := True;
  RadioBLiberaAprazoS.Enabled := True;
  RadioBLiberaAprazoN.Enabled := True;
  MemoObsCadCli.ReadOnly := False;
  CBStatusCadCli.Enabled := True;
  SpdBFotoCli.Visible := True;
  ImgRelatorioCli.Visible := False;
  EdtDataCadCli.Enabled := False;
end;

{$IFDEF ANDROID}

function FileNameToUri(const FileName: string): Jnet_Uri;
var
  JavaFile: JFile;
begin
  JavaFile := TJFile.JavaClass.init(StringToJString(FileName));
  Result := TJnet_Uri.JavaClass.fromFile(JavaFile);
end;
{$ENDIF}

procedure TFCadCli.ImgRelatorioCliClick(Sender: TObject);
{$IFDEF ANDROID}
var
  Document: JPdfDocument;
  PageInfo: JPdfDocument_PageInfo;
  Page: JPdfDocument_Page;
  Canvas: JCanvas;
  Paint: JPaint;
  Rect: JRectF;
  FileName: string;
  OutputStream: JFileOutputStream;
  Intent: JIntent;
{$ENDIF}
begin
  inherited;
{$IFDEF ANDROID}
  // create Pdf document
  Document := TJPdfDocument.JavaClass.init;
  try
    // create page  1
    PageInfo := TJPageInfo_Builder.JavaClass.init(100, 100, 1).create;
    Page := Document.startPage(PageInfo);

    Canvas := Page.getCanvas;
    Paint := TJPaint.JavaClass.init;
    Paint.setLinearText(True);

    Paint.setARGB($FF, 0, 0, $FF);
    Canvas.drawText(StringToJString('Calory Sistemas'), 5, 10, Paint);

    Paint.setStrokeWidth(1);
    Canvas.drawLine(0, 14, 100, 14, Paint);

    Paint.setARGB($FF, 28, 28, 28);
    Paint.setStrokeWidth(0);
    Paint.setTextSize(2);

    // cor da letra -> Paint.setARGB($FF, 0, 0, $FF);
    Canvas.drawText(StringToJString(LblNomeCli.Text + ' ' + EdtNomeCli.Text), 1,
      17, Paint);

    Canvas.drawLine(0, 18, 100, 18, Paint);

    Canvas.drawText(StringToJString(LblTipoPessoaCli.Text + ' ' +
      ComboBoxTipoPessoaCli.Selected.Text), 1, 20, Paint);

    Canvas.drawLine(0, 21, 100, 21, Paint);

    Canvas.drawText(StringToJString(LblCpfCli.Text + ' ' + EdtCpfCli.Text), 1,
      23, Paint);

    Canvas.drawLine(0, 24, 100, 24, Paint);

    Canvas.drawText(StringToJString(LblRgCli.Text + ' ' + EdtRgCli.Text), 1,
      26, Paint);

    Canvas.drawLine(0, 27, 100, 27, Paint);

    Canvas.drawText(StringToJString(LblApelidoCli.Text + ' ' +
      EdtApelidoCli.Text), 1, 29, Paint);

    Canvas.drawLine(0, 30, 100, 30, Paint);

    Canvas.drawText(StringToJString(LblFoneCli.Text + ' ' + EdtFoneCli.Text), 1,
      32, Paint);

    Canvas.drawLine(0, 33, 100, 33, Paint);

    Canvas.drawText(StringToJString(LblEndCli.Text + ' ' + EdtEnderecoCli.Text),
      1, 35, Paint);

    Canvas.drawLine(0, 36, 100, 36, Paint);

    Canvas.drawText(StringToJString(LblNumCli.Text + ' ' + EdtNumCli.Text), 1,
      38, Paint);

    Canvas.drawLine(0, 39, 100, 39, Paint);

    Canvas.drawText(StringToJString(LblCompCli.Text + ' ' + EdtCompCli.Text), 1,
      41, Paint);

    Canvas.drawLine(0, 42, 100, 42, Paint);

    Canvas.drawText(StringToJString(LblBairroCli.Text + ' ' +
      EdtBairroCli.Text), 1, 44, Paint);

    Canvas.drawLine(0, 45, 100, 45, Paint);

    Canvas.drawText(StringToJString(LblCepCli.Text + ' ' + EdtCepCli.Text), 1,
      47, Paint);

    Canvas.drawLine(0, 48, 100, 48, Paint);

    Canvas.drawText(StringToJString(LblCidade.Text + ' ' + EdtCidadeCli.Text),
      1, 50, Paint);

    Canvas.drawLine(0, 51, 100, 51, Paint);

    Canvas.drawText(StringToJString(LblUfCli.Text + ' ' + EdtUfCli.Text), 1,
      53, Paint);

    Canvas.drawLine(0, 54, 100, 54, Paint);

    Canvas.drawText(StringToJString(LblEmailCli.Text + ' ' + EdtEmailCli.Text),
      1, 56, Paint);

    Canvas.drawLine(0, 57, 100, 57, Paint);

    Canvas.drawText(StringToJString(LblDataCadCli.Text + ' ' +
      EdtDataCadCli.Text), 1, 59, Paint);

    Document.finishPage(Page);

    // create page 2

    { PageInfo := TJPageInfo_Builder.JavaClass.init(100, 100, 2).create;
      Page := Document.startPage(PageInfo);

      Canvas := Page.getCanvas;
      Paint := TJPaint.JavaClass.init;

      Paint.setARGB($FF, $FF, 0, 0);
      Canvas.drawLine(10, 10, 90, 10, Paint);

      Paint.setStrokeWidth(1);
      Paint.setARGB($FF, 0, $FF, 0);
      Canvas.drawLine(10, 20, 90, 20, Paint);

      Paint.setStrokeWidth(2);
      Paint.setARGB($FF, 0, 0, $FF);
      Canvas.drawLine(10, 30, 90, 30, Paint);

      Paint.setARGB($FF, $FF, $FF, 0);
      Canvas.drawRect(10, 40, 90, 60, Paint);

      Rect := TJRectF.JavaClass.init;
      Rect.&set(10, 70, 90, 90);
      Paint.setARGB($FF, $FF, 0, $FF);
      Canvas.drawRoundRect(Rect, 5, 5, Paint);

      Document.finishPage(Page); }

    // write PDF document to file
    FileName := TPath.GetSharedDocumentsPath + PathDelim + 'relatorio.pdf';
    OutputStream := TJFileOutputStream.JavaClass.init
      (StringToJString(FileName));
    try
      Document.writeTo(OutputStream);
    finally
      OutputStream.Close;
    end;
  finally
    Document.Close;
  end;

  // start PDF viewer
  Intent := TJIntent.JavaClass.init;
  Intent.setAction(TJIntent.JavaClass.ACTION_VIEW);
  Intent.setDataAndType(FileNameToUri(FileName),
    StringToJString('application/pdf'));
  Intent.setFlags(TJIntent.JavaClass.FLAG_ACTIVITY_NO_HISTORY or
    TJIntent.JavaClass.FLAG_ACTIVITY_CLEAR_TOP);
  SharedActivity.StartActivity(Intent);
{$ENDIF}
end;

procedure TFCadCli.LimpaCampos;
begin
  EdtNomeCli.Text := EmptyStr;
  ComboBoxTipoPessoaCli.ItemIndex := 0;
  EdtCpfCli.Text := EmptyStr;
  EdtRgCli.Text := EmptyStr;
  EdtApelidoCli.Text := EmptyStr;
  EdtFoneCli.Text := EmptyStr;
  EdtEnderecoCli.Text := EmptyStr;
  EdtNumCli.Text := EmptyStr;
  EdtCompCli.Text := EmptyStr;
  EdtBairroCli.Text := EmptyStr;
  EdtCepCli.Text := EmptyStr;
  EdtCidadeCli.Text := EmptyStr;
  EdtUfCli.Text := EmptyStr;
  EdtEmailCli.Text := EmptyStr;
  RadioBLiberaAprazoS.IsChecked := False;
  RadioBLiberaAprazoN.IsChecked := True;
  ImgFotoCli.Bitmap := nil;
  MemoObsCadCli.Lines.Clear;
  CBStatusCadCli.ItemIndex := 0;
  EdtDataCadCli.Text := EmptyStr;
end;

procedure TFCadCli.ListViewCadCliButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
// var
// bmp: TBitmap;
begin
  inherited;
  // clickBotao := False;
  // lblTituloEdicao.Text := 'Detalhes';
  // SpdBEditar.Enabled := True;
  // SpdBEditar.Visible := True;
  // SpdBConfirmar.Enabled := False;
  // SpdBConfirmar.Visible := False;
  // EdtDataCadCli.Text := DM.FDQFiltroCadCLidata_cad_cli.AsString;
  // if DM.FDQFiltroCadCLitipo_cli.AsString = 'F' then
  // ComboBoxTipoPessoaCli.ItemIndex := 0
  // else
  // ComboBoxTipoPessoaCli.ItemIndex := 1;
  // if DM.FDQFiltroCadCLiliberaaprazo_cli.AsString = 'S' then
  // RadioBLiberaAprazoS.IsChecked := True
  // else
  // RadioBLiberaAprazoN.IsChecked := True;
  // EditFiltroNomeCadCli.Text := EmptyStr;
  // EditFiltroCodCadCli.Text := EmptyStr;
  // EdtNomeCli.SetFocus;
  // DesabilitaCampos;
  // MudarAbaModelo(TbItemedicao, Sender);
end;

procedure TFCadCli.ListViewCadCliGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  inherited;
  // if EventInfo.GestureID = igiDoubleTap then
  // begin
  // if venda = 'S' then
  // begin
  // MessageDlg('Você deseja adicionar este cliente ao pedido?',
  // System.UITypes.TMsgDlgType.mtInformation,
  // [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
  // procedure(const AResult: System.UITypes.TModalResult)
  // begin
  // case AResult of
  // mrYES:
  // begin
  // caso sim
  // nomeCliente := DM.FDQFiltroCadCLinome_cli.AsString;
  // codCliente := DM.FDQFiltroCadCLiid_cli.AsString;
  // end;
  // mrNo:
  // begin
  // caso não
  // end;
  // end;
  // end);
  // end;
  // end;

end;

procedure TFCadCli.ListViewCadCliItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
var
  bmp: TBitmap;
begin
  inherited;
  if ItemObject is TListItemAccessory then
  begin
    lblTituloEdicao.Text := 'Detalhes';
    SpdBEditar.Visible := True;
    SpdBConfirmar.Visible := False;

    if DM.FDQFiltroCadCLitipo_cli.AsString = 'F' then
      ComboBoxTipoPessoaCli.ItemIndex := 0
    else if DM.FDQFiltroCadCLitipo_cli.AsString = 'J' then
      ComboBoxTipoPessoaCli.ItemIndex := 1;

    if DM.FDQFiltroCadCLiliberaaprazo_cli.AsString = 'S' then
      RadioBLiberaAprazoS.IsChecked := True
    else if DM.FDQFiltroCadCLiliberaaprazo_cli.AsString = 'N' then
      RadioBLiberaAprazoN.IsChecked := True;

    if DM.FDQFiltroCadCListatus.AsString = 'A' then
      CBStatusCadCli.ItemIndex := 0
    else if DM.FDQFiltroCadCListatus.AsString = 'I' then
      CBStatusCadCli.ItemIndex := 1;

    // EditFiltroNomeCadCli.Text := EmptyStr;
    // EditFiltroCodCadCli.Text := EmptyStr;
    EdtNomeCli.SetFocus;
    DesabilitaCampos;
    MudarAbaModelo(TbItemedicao, Sender);
  end;

end;

procedure TFCadCli.MemoObsCadCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(MemoObsCadCli);
end;

procedure TFCadCli.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  DM.FDQFiltroCadCLi.Active := False;
  EditFiltroNomeCadCli.Text := EmptyStr;
  EditFiltroCodCadCli.Text := EmptyStr;
  crud := EmptyStr;
  Close;
end;

procedure TFCadCli.SpBVoltarEdicaoClick(Sender: TObject);
begin
  inherited;
  LimpaCampos;
  MudarAbaModelo(TbItemListagem, Sender);
{$IFDEF ANDROID}
  if (crud = 'inserir') or (crud = 'editar') then
    // TfgToast.Show('Processo cancelado!');
{$ENDIF}
    crud := EmptyStr;
end;

procedure TFCadCli.SpdBConfirmarClick(Sender: TObject);
var
  sql, LiberaAprazo, TipoPessoa, DataHora, status: string;
  MaxId: Integer;
  Data: TDateTime;
  data1: string;
begin
  inherited;
  EsconderTeclado;
  // FPrincipal.ksLoadingIndicator1.ShowLoading;
  DataHora := DateTimeToStr(Now);

  if RadioBLiberaAprazoS.IsChecked then
    LiberaAprazo := 'S'
  else
    LiberaAprazo := 'N';

  if ComboBoxTipoPessoaCli.ItemIndex = 1 then
    TipoPessoa := 'J'
  else
    TipoPessoa := 'F';

  if CBStatusCadCli.ItemIndex = 0 then
    status := 'A'
  else
    status := 'I';

  if crud = 'inserir' then
  begin
    try
      DM.FDQCadCli.Close;
      DM.FDQCadCli.Open();
      DM.FDQCadCli.Append;
      DM.FDQCadClitipo_cli.AsString := TipoPessoa;
      DM.FDQCadClinome_cli.AsString := EdtNomeCli.Text;
      DM.FDQCadClicpf_cnpj_cli.AsString := EdtCpfCli.Text;
      DM.FDQCadClirg_ie_cli.AsString := EdtRgCli.Text;
      DM.FDQCadCliapelido_cli.AsString := EdtApelidoCli.Text;
      DM.FDQCadClifone_cli.AsString := EdtFoneCli.Text;
      DM.FDQCadCliendereco_cli.AsString := EdtEnderecoCli.Text;
      DM.FDQCadClinum_cli.AsString := EdtNumCli.Text;
      DM.FDQCadClicomplemento_cli.AsString := EdtCompCli.Text;
      DM.FDQCadClibairro_cli.AsString := EdtBairroCli.Text;
      DM.FDQCadClicep_cli.AsString := EdtCepCli.Text;
      DM.FDQCadClicidade_cli.AsString := EdtCidadeCli.Text;
      DM.FDQCadCliuf_cli.AsString := EdtUfCli.Text;
      DM.FDQCadCliemail_cli.AsString := EdtEmailCli.Text;
      DM.FDQCadCliliberaaprazo_cli.AsString := LiberaAprazo;
      DM.FDQCadCliobs_cli.AsString := MemoObsCadCli.Text;
      DM.FDQCadClidata_cad_cli.AsDateTime := StrToDateTime(DataHora);
      DM.FDQCadClifoto_cli.Assign(FotoCli);
      DM.FDQCadClistatus.AsString := status;
      DM.FDQCadCli.Post;

      DM.FDConnection1.CommitRetaining;
      DM.FDQFiltroCadCLi.Active := False;
      MudarAbaModelo(TbItemListagem, Sender);
{$IFDEF ANDROID}
      TfgToast.Show('Novo cliente cadastrado com sucesso!');
{$ENDIF}
      // FPrincipal.ksLoadingIndicator1.HideLoading;
    except
      on E: Exception do
        ShowMessage('Erro!  ' + #13#10 + E.Message);
    end;
  end
  else if crud = 'editar' then
  begin
    try
      DM.FDQAuxiliar.sql.Clear;

      DM.FDQAuxiliar.sql.Add('update cliente');
      DM.FDQAuxiliar.sql.Add(' set tipo_cli = :TipoCli,');
      DM.FDQAuxiliar.sql.Add(' nome_cli = :Nome,');
      DM.FDQAuxiliar.sql.Add(' cpf_cnpj_cli = :Cpf,');
      DM.FDQAuxiliar.sql.Add(' rg_ie_cli = :Rg,');
      DM.FDQAuxiliar.sql.Add(' apelido_cli = :Apelido,');
      DM.FDQAuxiliar.sql.Add(' fone_cli = :Fone,');
      DM.FDQAuxiliar.sql.Add(' endereco_cli = :Endereco,');
      DM.FDQAuxiliar.sql.Add(' num_cli = :Num,');
      DM.FDQAuxiliar.sql.Add(' complemento_cli = :Complemento,');
      DM.FDQAuxiliar.sql.Add(' bairro_cli = :Bairro,');
      DM.FDQAuxiliar.sql.Add(' cep_cli = :Cep,');
      DM.FDQAuxiliar.sql.Add(' cidade_cli = :Cidade,');
      DM.FDQAuxiliar.sql.Add(' uf_cli = :Uf,');
      DM.FDQAuxiliar.sql.Add(' email_cli = :Email,');
      DM.FDQAuxiliar.sql.Add(' liberaaprazo_cli = :LiberaAprazo,');
      if not FotoCli.IsEmpty then
        DM.FDQAuxiliar.sql.Add(' foto_cli = :Foto,');
      DM.FDQAuxiliar.sql.Add(' obs_cli = :Obs,');
      DM.FDQAuxiliar.sql.Add(' status = :Status');
      DM.FDQAuxiliar.sql.Add(' where id_cli = :IdCli');

      DM.FDQAuxiliar.Params.ParamByName('TipoCli').AsString := TipoPessoa;
      DM.FDQAuxiliar.Params.ParamByName('Nome').AsString := EdtNomeCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Cpf').AsString := EdtCpfCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Rg').AsString := EdtRgCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Apelido').AsString :=
        EdtApelidoCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Fone').AsString := EdtFoneCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Endereco').AsString :=
        EdtEnderecoCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Num').AsString := EdtNumCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Complemento').AsString :=
        EdtCompCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Bairro').AsString := EdtBairroCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Cep').AsString := EdtCepCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Cidade').AsString := EdtCidadeCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Uf').AsString := EdtUfCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Email').AsString := EdtEmailCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('LiberaAprazo').AsString :=
        LiberaAprazo;
      if not FotoCli.IsEmpty then
        DM.FDQAuxiliar.Params.ParamByName('Foto').Assign(FotoCli);
      DM.FDQAuxiliar.Params.ParamByName('Obs').AsString := MemoObsCadCli.Text;
      DM.FDQAuxiliar.Params.ParamByName('Status').AsString := status;
      DM.FDQAuxiliar.Params.ParamByName('IdCli').AsInteger :=
        DM.FDQFiltroCadCLiid_cli.AsInteger;

      DM.FDQAuxiliar.ExecSQL;

      DM.FDConnection1.CommitRetaining;
      DM.FDQFiltroCadCLi.Active := False;
      MudarAbaModelo(TbItemListagem, Sender);
{$IFDEF ANDROID}
      // TfgToast.Show('cadastrado alterado com sucesso!');
{$ENDIF}
      // FPrincipal.ksLoadingIndicator1.HideLoading;
    except
      on E: Exception do
        ShowMessage('Erro!  ' + #13#10 + E.Message);
    end;
  end;
end;

procedure TFCadCli.SpdBEditarClick(Sender: TObject);
begin
  inherited;
  FotoCli := ImgFotoCli.Bitmap;
  crud := 'editar';
  lblTituloEdicao.Text := 'Editando Cadastro';
  SpdBEditar.Visible := False;
  SpdBConfirmar.Visible := True;
  HabilitaCampos;
  EdtNomeCli.SetFocus;
end;

procedure TFCadCli.SpdBNovoCadCliClick(Sender: TObject);
begin
  inherited;
  DM.FDQFiltroCadCLi.Active := False;
  crud := 'inserir';
  SpdBEditar.Visible := False;
  SpdBConfirmar.Visible := True;
  lblTituloEdicao.Text := 'Novo Cadastro';
  LimpaCampos;
  HabilitaCampos;
  // EdtDataCadCli.Text := DateTimeToStr(Now); => para pegar a data atual
  MudarAbaModelo(TbItemedicao, Sender);
  EdtNomeCli.SetFocus;
end;

procedure TFCadCli.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
begin
  inherited;
  FotoCli := Image;
  ImgFotoCli.Bitmap.Assign(Image);
  ListBoxEdicaoCadCli.Align := TAlignLayout.Client;

end;

end.
