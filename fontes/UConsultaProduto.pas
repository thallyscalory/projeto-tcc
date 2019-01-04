unit UConsultaProduto;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, FMX.ListView, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FMX.Edit,
  FMX.StdActns, FMX.MediaLibrary.Actions, Winsoft.FireMonkey.Obr, FMX.ListBox,
  System.ImageList, FMX.ImgList, MultiDetailAppearanceU, FMX.VirtualKeyboard,
  System.Math,
  FMX.Platform;

type
  TFConsProduto = class(TFCadModelo)
    LytListagem: TLayout;
    EdtFiltroNomeProd: TEdit;
    EdtFiltroCodProd: TEdit;
    ListViewConsProd: TListView;
    BtnFiltroCodBar: TButton;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    FObrConsProd: TFObr;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    ToolBar1: TToolBar;
    LblTituloEdicao: TLabel;
    SpBVoltarEdicao: TSpeedButton;
    ListBoxEdicaoConsProd: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    EdtNomeProd: TEdit;
    EdtDescProd: TEdit;
    EdtUnProd: TEdit;
    EdtGrupoProd: TEdit;
    EdtCodBarraProd: TEdit;
    EdtVrPrazaProd: TEdit;
    EdtVrVistaProd: TEdit;
    ListBoxItem10: TListBoxItem;
    EdtVrPromocaoProd: TEdit;
    EdtBNomeProd: TEditButton;
    EdtBDescProd: TEditButton;
    EdtBUnProd: TEditButton;
    EdtSiglaGrupoProd: TEdit;
    EdtBSiglaGrupoProd: TEditButton;
    EdtBGrupoProd: TEditButton;
    EdtBCodBarraProd: TEditButton;
    EdtBVrPrazaProd: TEditButton;
    EdtBVrVistaProd: TEditButton;
    EdtBVrPromocaoProd: TEditButton;
    LblAtivoProd: TLabel;
    RadioBAtivoS: TRadioButton;
    RadioBAtivoN: TRadioButton;
    LinkControlToField1: TLinkControlToField;
    LinkControlToField2: TLinkControlToField;
    LinkControlToField3: TLinkControlToField;
    LinkControlToField4: TLinkControlToField;
    LinkControlToField5: TLinkControlToField;
    LinkControlToField6: TLinkControlToField;
    LinkControlToField7: TLinkControlToField;
    LinkControlToField8: TLinkControlToField;
    LinkControlToField9: TLinkControlToField;
    SpBEditarProd: TSpeedButton;
    SpBConfirmarProd: TSpeedButton;
    SpBCodBar: TSpeedButton;
    TakePhotoFromCameraAction2: TTakePhotoFromCameraAction;
    LblNomeProd: TLabel;
    Label2: TLabel;
    LblUnProd: TLabel;
    LblSiglaProd: TLabel;
    LblGrupoProd: TLabel;
    LblVlAprazoProd: TLabel;
    LblVlAvistaProd: TLabel;
    LblVlPromocaoProd: TLabel;
    SpdBNovoCadProd: TSpeedButton;
    BtnFiltrarProd: TButton;
    VertScrollBox1: TVertScrollBox;
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure EdtFiltroNomeProdClick(Sender: TObject);
    procedure EdtFiltroCodProdClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpBVoltarEdicaoClick(Sender: TObject);
    procedure EdtBNomeProdClick(Sender: TObject);
    procedure EdtBDescProdClick(Sender: TObject);
    procedure EdtBUnProdClick(Sender: TObject);
    procedure EdtBSiglaGrupoProdClick(Sender: TObject);
    procedure EdtBGrupoProdClick(Sender: TObject);
    procedure EdtBCodBarraProdClick(Sender: TObject);
    procedure EdtBVrPrazaProdClick(Sender: TObject);
    procedure EdtBVrVistaProdClick(Sender: TObject);
    procedure EdtBVrPromocaoProdClick(Sender: TObject);
    procedure ListViewConsProdButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure SpBEditarProdClick(Sender: TObject);
    procedure SpBConfirmarProdClick(Sender: TObject);
    procedure TakePhotoFromCameraAction2DidFinishTaking(Image: TBitmap);
    procedure SpdBNovoCadProdClick(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure ListViewConsProdGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ListViewConsProdDblClick(Sender: TObject);
    procedure ListViewConsProdItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure EdtVrPrazaProdExit(Sender: TObject);
    procedure EdtVrVistaProdExit(Sender: TObject);
    procedure EdtVrPromocaoProdExit(Sender: TObject);
    procedure EdtNomeProdKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtDescProdKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtUnProdKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtSiglaGrupoProdKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtGrupoProdKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtCodBarraProdKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtVrPrazaProdKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtVrVistaProdKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtFiltroNomeProdTyping(Sender: TObject);
    procedure EdtFiltroCodProdTyping(Sender: TObject);
    procedure BtnFiltrarProdClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtNomeProdClick(Sender: TObject);
    procedure EdtDescProdClick(Sender: TObject);
    procedure EdtUnProdClick(Sender: TObject);
    procedure EdtSiglaGrupoProdClick(Sender: TObject);
    procedure EdtGrupoProdClick(Sender: TObject);
    procedure EdtCodBarraProdClick(Sender: TObject);
    procedure EdtVrPrazaProdClick(Sender: TObject);
    procedure EdtVrVistaProdClick(Sender: TObject);
    procedure EdtVrPromocaoProdClick(Sender: TObject);
  private
    crud: String;

    procedure DesabilitaCampos;
    procedure HabilitaCampos;
    procedure LimpaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  x: array of string;
  qtd: array of string;
  qtdItem: string;
  FConsProduto: TFConsProduto;

implementation

{$R *.fmx}

uses UDM, UPrincipal, UVenda1;

procedure TFConsProduto.BtnFiltrarProdClick(Sender: TObject);
begin
  inherited;
  EdtFiltroNomeProd.Text := EmptyStr;
  EdtFiltroCodProd.Text := EmptyStr;

  DM.FDQConsultaProd.Active := False;
  DM.FDQConsultaProd.Close;
  DM.FDQConsultaProd.ParamByName('PNomeProd').Value := '%';
  DM.FDQConsultaProd.ParamByName('PCodProd').Value := Null;
  DM.FDQConsultaProd.ParamByName('PCodBar').Value := Null;
  DM.FDQConsultaProd.Open();
  DM.FDQConsultaProd.Active := True;

  if itemPedido = 'S' then
  begin
    ListViewConsProd.ItemAppearanceObjects.ItemObjects.Accessory.
      Visible := False;
  end;
end;

procedure TFConsProduto.DesabilitaCampos;
begin
  EdtNomeProd.Enabled := False;
  EdtDescProd.Enabled := False;
  EdtUnProd.Enabled := False;
  EdtGrupoProd.Enabled := False;
  EdtCodBarraProd.Enabled := False;
  EdtVrPrazaProd.Enabled := False;
  EdtVrVistaProd.Enabled := False;
  EdtVrPromocaoProd.Enabled := False;
  EdtSiglaGrupoProd.Enabled := False;
  RadioBAtivoS.Enabled := False;
  RadioBAtivoN.Enabled := False;
end;

procedure TFConsProduto.EdtBCodBarraProdClick(Sender: TObject);
begin
  inherited;
  EdtVrPrazaProd.SetFocus;
end;

procedure TFConsProduto.EdtBDescProdClick(Sender: TObject);
begin
  inherited;
  EdtUnProd.SetFocus
end;

procedure TFConsProduto.EdtBGrupoProdClick(Sender: TObject);
begin
  inherited;
  EdtCodBarraProd.SetFocus;
end;

procedure TFConsProduto.EdtBNomeProdClick(Sender: TObject);
begin
  inherited;
  EdtDescProd.SetFocus;
end;

procedure TFConsProduto.EdtBSiglaGrupoProdClick(Sender: TObject);
begin
  inherited;
  EdtGrupoProd.SetFocus;
end;

procedure TFConsProduto.EdtBUnProdClick(Sender: TObject);
begin
  inherited;
  EdtSiglaGrupoProd.SetFocus;
end;

procedure TFConsProduto.EdtBVrPrazaProdClick(Sender: TObject);
begin
  inherited;
  EdtVrVistaProd.SetFocus;
end;

procedure TFConsProduto.EdtBVrPromocaoProdClick(Sender: TObject);
begin
  inherited;
  EsconderTeclado;
  EdtNomeProd.SetFocus;
end;

procedure TFConsProduto.EdtBVrVistaProdClick(Sender: TObject);
begin
  inherited;
  EdtVrPromocaoProd.SetFocus;
end;

procedure TFConsProduto.EdtCodBarraProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtCodBarraProd);
end;

procedure TFConsProduto.EdtCodBarraProdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtVrPrazaProd.SetFocus;
end;

procedure TFConsProduto.EdtDescProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtDescProd);
end;

procedure TFConsProduto.EdtDescProdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtUnProd.SetFocus;
end;

procedure TFConsProduto.EdtFiltroCodProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtFiltroCodProd);
end;

procedure TFConsProduto.EdtFiltroCodProdTyping(Sender: TObject);
begin
  inherited;
  EdtFiltroNomeProd.Text := EmptyStr;
  DM.FDQConsultaProd.Active := False;
  DM.FDQConsultaProd.Close;
  if EdtFiltroCodProd.Text.IsEmpty then
  begin
    DM.FDQConsultaProd.ParamByName('PCodProd').Value := Null;
    DM.FDQConsultaProd.ParamByName('PNomeProd').Value := Null;
    DM.FDQConsultaProd.ParamByName('PCodBar').Value := Null;
  end
  else
  begin
    DM.FDQConsultaProd.ParamByName('PCodProd').Value := EdtFiltroCodProd.Text;
    DM.FDQConsultaProd.ParamByName('PNomeProd').Value := Null;
    DM.FDQConsultaProd.ParamByName('PCodBar').Value := Null;
  end;
  DM.FDQConsultaProd.Open();
  DM.FDQConsultaProd.Active := True;

  if itemPedido = 'S' then
  begin
    ListViewConsProd.ItemAppearanceObjects.ItemObjects.Accessory.
      Visible := False;
  end;
end;

procedure TFConsProduto.EdtFiltroNomeProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtFiltroNomeProd);
end;

procedure TFConsProduto.EdtFiltroNomeProdTyping(Sender: TObject);
begin
  inherited;
  EdtFiltroCodProd.Text := EmptyStr;
  DM.FDQConsultaProd.Active := False;
  DM.FDQConsultaProd.Close;
  if EdtFiltroNomeProd.Text.IsEmpty then
  begin
    DM.FDQConsultaProd.ParamByName('PNomeProd').Value := Null;
    DM.FDQConsultaProd.ParamByName('PCodProd').Value := Null;
    DM.FDQConsultaProd.ParamByName('PCodBar').Value := Null;
  end
  else
  begin
    DM.FDQConsultaProd.ParamByName('PNomeProd').Value :=
      '%' + EdtFiltroNomeProd.Text + '%';
    DM.FDQConsultaProd.ParamByName('PCodProd').Value := Null;
    DM.FDQConsultaProd.ParamByName('PCodBar').Value := Null;
  end;
  DM.FDQConsultaProd.Open();
  DM.FDQConsultaProd.Active := True;

  if itemPedido = 'S' then
  begin
    ListViewConsProd.ItemAppearanceObjects.ItemObjects.Accessory.
      Visible := False;
  end;
end;

procedure TFConsProduto.EdtGrupoProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtGrupoProd);
end;

procedure TFConsProduto.EdtGrupoProdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtCodBarraProd.SetFocus;
end;

procedure TFConsProduto.EdtNomeProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtNomeProd);
end;

procedure TFConsProduto.EdtNomeProdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtDescProd.SetFocus;

end;

procedure TFConsProduto.EdtSiglaGrupoProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtSiglaGrupoProd);
end;

procedure TFConsProduto.EdtSiglaGrupoProdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtGrupoProd.SetFocus;
end;

procedure TFConsProduto.EdtUnProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtUnProd);
end;

procedure TFConsProduto.EdtUnProdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtSiglaGrupoProd.SetFocus;
end;

procedure TFConsProduto.EdtVrPrazaProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtVrPrazaProd);
end;

procedure TFConsProduto.EdtVrPrazaProdExit(Sender: TObject);
var
  iAuxPrazo: Double;
begin
  inherited;
  if (EdtVrPrazaProd.Text = EmptyStr) then
    EdtVrPrazaProd.Text := '0';

  if TryStrToFloat(EdtVrPrazaProd.Text, iAuxPrazo) then
    EdtVrPrazaProd.Text := DisplayFormatter(StrToFloat(EdtVrPrazaProd.Text),
      ('#0.00'));
end;

procedure TFConsProduto.EdtVrPrazaProdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtVrVistaProd.SetFocus;
end;

procedure TFConsProduto.EdtVrPromocaoProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtVrPromocaoProd);
end;

procedure TFConsProduto.EdtVrPromocaoProdExit(Sender: TObject);
var
  iAuxPromocao: Double;
begin
  inherited;
  if (EdtVrPromocaoProd.Text = EmptyStr) then
    EdtVrPromocaoProd.Text := '0';

  if TryStrToFloat(EdtVrPromocaoProd.Text, iAuxPromocao) then
    EdtVrPromocaoProd.Text :=
      DisplayFormatter(StrToFloat(EdtVrPromocaoProd.Text), ('#0.00'));
end;

procedure TFConsProduto.EdtVrVistaProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtVrVistaProd);
end;

procedure TFConsProduto.EdtVrVistaProdExit(Sender: TObject);
var
  iAuxAvista: Double;
begin
  inherited;
  if (EdtVrVistaProd.Text = EmptyStr) then
    EdtVrVistaProd.Text := '0';

  if TryStrToFloat(EdtVrVistaProd.Text, iAuxAvista) then
    EdtVrVistaProd.Text := DisplayFormatter(StrToFloat(EdtVrVistaProd.Text),
      ('#0.00'));
end;

procedure TFConsProduto.EdtVrVistaProdKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtVrPromocaoProd.SetFocus;
end;

procedure TFConsProduto.FormCreate(Sender: TObject);
begin
  inherited;
  TbControlCadModelo.ActiveTab := TbItemListagem;
  TbControlCadModelo.TabPosition := TTabPosition.None;
  if venda = 'S' then
  begin
    ToolBarsuperior.Visible := False;
  end;

end;

procedure TFConsProduto.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
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

procedure TFConsProduto.HabilitaCampos;
begin
  EdtNomeProd.Enabled := True;
  EdtDescProd.Enabled := True;
  EdtUnProd.Enabled := True;
  EdtGrupoProd.Enabled := True;
  EdtCodBarraProd.Enabled := True;
  EdtVrPrazaProd.Enabled := True;
  EdtVrVistaProd.Enabled := True;
  EdtVrPromocaoProd.Enabled := True;
  EdtSiglaGrupoProd.Enabled := True;
  RadioBAtivoS.Enabled := True;
  RadioBAtivoN.Enabled := True;
end;

procedure TFConsProduto.LimpaCampos;
begin
  EdtNomeProd.Text := EmptyStr;
  EdtDescProd.Text := EmptyStr;
  EdtUnProd.Text := EmptyStr;
  EdtGrupoProd.Text := EmptyStr;
  EdtCodBarraProd.Text := EmptyStr;
  EdtVrPrazaProd.Text := EmptyStr;
  EdtVrVistaProd.Text := EmptyStr;
  EdtVrPromocaoProd.Text := EmptyStr;
  EdtSiglaGrupoProd.Text := EmptyStr;
  RadioBAtivoS.IsChecked := True;
  RadioBAtivoN.IsChecked := False;
end;

procedure TFConsProduto.ListViewConsProdButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
  inherited;
  // SpBEditarProd.Enabled := True;
  // SpBEditarProd.Visible := True;
  // SpBConfirmarProd.Enabled := False;
  // SpBConfirmarProd.Visible := False;
  // LblTituloEdicao.Text := 'Detalhes';
  // DesabilitaCampos;
  // EdtNomeProd.SetFocus;
  // if DM.FDQConsultaProdativo.AsString = 'S' then
  // RadioBAtivoS.IsChecked := True
  // else
  // RadioBAtivoN.IsChecked := True;
  // EdtFiltroNomeProd.Text := EmptyStr;
  // EdtFiltroCodProd.Text := EmptyStr;
  // MudarAbaModelo(TbItemedicao, Sender);

end;

procedure TFConsProduto.ListViewConsProdDblClick(Sender: TObject);
// var
// y: Integer;
begin
  inherited;
  // if venda = 'S' then
  // begin
  // MessageDlg('Você deseja adicionar este item ao pedido?',
  // System.UITypes.TMsgDlgType.mtInformation,
  // [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
  // procedure(const AResult: System.UITypes.TModalResult)
  // begin
  // case AResult of
  // mrYES: // caso sim
  // begin
  // y := 100;
  // SetLength(x, y);
  // SetLength(qtd, y);
  // InputBox('Informe a quantidade:', '', '1',
  // procedure(const AResult: TModalResult; const AValue: string)
  // begin
  // case AResult of
  // { Detect which button was pushed and show a different message }
  // mrOk:
  // begin
  // AValue is the result of the inputbox dialog
  // if StrToFloat(AValue) = 0 then
  // begin
  // ShowMessage('Quantidade invalida!');
  // exit
  // end
  // else
  // begin
  // qtdItem := AValue;
  // x[contItem] := DM.FDQConsultaProdcodigo.AsString;
  // qtd[contItem] := qtdItem;
  // contItem := contItem + 1;
  // end;
  // end;
  // mrCancel:
  // begin
  // exit
  // end;
  // end;
  // end);
  // end;
  // mrNo:
  // begin
  // caso não
  // exit
  // end;
  // end;
  // end);
  // end;
end;

procedure TFConsProduto.ListViewConsProdGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
// var
// y: Integer;
begin
  inherited;
  // if EventInfo.GestureID = igiDoubleTap then
  // begin
  // if venda = 'S' then
  // begin
  // MessageDlg('Você deseja adicionar este item ao pedido?',
  // System.UITypes.TMsgDlgType.mtInformation,
  // [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
  // procedure(const AResult: System.UITypes.TModalResult)
  // begin
  // case AResult of
  // mrYES: // caso sim
  // begin
  // y := 100;
  // SetLength(x, y);
  // SetLength(qtd, y);
  // InputBox('Informe a quantidade:', '', '1',
  // procedure(const AResult: TModalResult; const AValue: string)
  // begin
  // case AResult of
  // { Detect which button was pushed and show a different message }
  // mrOk:
  // begin
  // AValue is the result of the inputbox dialog
  // if StrToFloat(AValue) = 0 then
  // begin
  // ShowMessage('Quantidade invalida!');
  // exit
  // end
  // else
  // begin
  // qtdItem := AValue;
  // x[contItem] := DM.FDQConsultaProdcodigo.AsString;
  // qtd[contItem] := qtdItem;
  // contItem := contItem + 1;
  // end;
  // end;
  // mrCancel:
  // begin
  // exit
  // end;
  // end;
  // end);
  // end;
  // mrNo:
  // begin
  // caso não
  // exit
  // end;
  // end;
  // end);
  // end;
  // end;

end;

procedure TFConsProduto.ListViewConsProdItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
var
  y: Integer;
begin
  inherited;
  if ItemObject is TListItemAccessory then
  begin
    SpBEditarProd.Enabled := True;
    SpBEditarProd.Visible := True;
    SpBConfirmarProd.Enabled := False;
    SpBConfirmarProd.Visible := False;
    LblTituloEdicao.Text := 'Detalhes';
    DesabilitaCampos;
    EdtNomeProd.SetFocus;
    if DM.FDQConsultaProdativo.AsString = 'S' then
      RadioBAtivoS.IsChecked := True
    else
      RadioBAtivoN.IsChecked := True;
    // EdtFiltroNomeProd.Text := EmptyStr;
    // EdtFiltroCodProd.Text := EmptyStr;
    MudarAbaModelo(TbItemedicao, Sender);
  end
  else
  begin
    if venda = 'S' then
    begin
      MessageDlg('Você deseja adicionar este item ao pedido?',
        System.UITypes.TMsgDlgType.mtInformation,
        [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
        procedure(const AResult: System.UITypes.TModalResult)
        begin
          case AResult of
            mrYES: // caso sim
              begin
                y := 100;
                SetLength(x, y);
                SetLength(qtd, y);
                InputBox('Informe a quantidade:', '', '1',
                  procedure(const AResult: TModalResult; const AValue: string)
                  begin
                    case AResult of
                      { Detect which button was pushed and show a different message }
                      mrOk:
                        begin
                          // AValue is the result of the inputbox dialog
                          if StrToFloat(AValue) = 0 then
                          begin
                            ShowMessage('Quantidade invalida!');
                            // exit
                          end
                          else
                          begin
                            qtdItem := AValue;
                            x[contItem] := DM.FDQConsultaProdcodigo.AsString;
                            qtd[contItem] := qtdItem;
                            contItem := contItem + 1;
                          end;
                        end;
                      mrCancel:
                        begin
                          exit
                        end;
                    end;
                  end);
              end;
            mrNo:
              begin
                // caso não
                exit
              end;
          end;
        end);
    end;
  end;
end;

procedure TFConsProduto.SpBConfirmarProdClick(Sender: TObject);
var
  ativo: string;
  maxIdProd: Integer;
begin
  inherited;
  if RadioBAtivoS.IsChecked then
    ativo := 'S'
  else
    ativo := 'N';
  if crud = 'inserir' then
  begin
    DM.FDQMaxIdProd.Close;
    DM.FDQMaxIdProd.Open();
    maxIdProd := DM.FDQMaxIdProdmaxIdProd.AsInteger + 1;
    try
      DM.FDQCadProd.Close;
      DM.FDQCadProd.Open();
      DM.FDQCadProd.Append;
      DM.FDQCadProdcodigo.AsString := IntToStr(maxIdProd);
      DM.FDQCadProdproduto.AsString := EdtNomeProd.Text;
      DM.FDQCadProddescricao.AsString := EdtDescProd.Text;
      DM.FDQCadProdun.AsString := EdtUnProd.Text;
      if EdtVrPrazaProd.Text.IsEmpty then
        DM.FDQCadProdvrvenda.AsFloat := 0
      else
        DM.FDQCadProdvrvenda.AsFloat := StrToFloat(EdtVrPrazaProd.Text);
      DM.FDQCadProdsigla.AsString := EdtSiglaGrupoProd.Text;
      DM.FDQCadProdgrupo.AsString := EdtGrupoProd.Text;
      DM.FDQCadProdCodigoBarra.AsString := EdtCodBarraProd.Text;
      if EdtVrPromocaoProd.Text.IsEmpty then
        DM.FDQCadProdvrpromocao.AsFloat := 0
      else
        DM.FDQCadProdvrpromocao.AsFloat := StrToFloat(EdtVrPromocaoProd.Text);
      if EdtVrVistaProd.Text.IsEmpty then
        DM.FDQCadProdVRAVISTA.AsFloat := 0
      else
        DM.FDQCadProdVRAVISTA.AsFloat := StrToFloat(EdtVrVistaProd.Text);
      DM.FDQCadProdativo.AsString := ativo;
      DM.FDQCadProd.Post;
    except
      on E: Exception do
        ShowMessage('Erro!  ' + #13#10 + E.Message);
    end;
  end
  else if crud = 'editar' then
  begin
    try
      DM.FDQAuxiliar.SQL.Clear;

      DM.FDQAuxiliar.SQL.Add('update produto');
      DM.FDQAuxiliar.SQL.Add(' set produto = :Produto,');
      DM.FDQAuxiliar.SQL.Add(' descricao = :Descricao,');
      DM.FDQAuxiliar.SQL.Add(' un = :Un,');
      DM.FDQAuxiliar.SQL.Add(' vrvenda = :VrVenda,');
      DM.FDQAuxiliar.SQL.Add(' sigla = :Sigla,');
      DM.FDQAuxiliar.SQL.Add(' grupo = :Grupo,');
      DM.FDQAuxiliar.SQL.Add(' CodigoBarra = :CodBarra,');
      DM.FDQAuxiliar.SQL.Add(' vrpromocao = :VrPromocao,');
      DM.FDQAuxiliar.SQL.Add(' VRAVISTA = :VrAvista,');
      DM.FDQAuxiliar.SQL.Add(' ativo = :Ativo');
      DM.FDQAuxiliar.SQL.Add(' where codigo = :Codigo');

      DM.FDQAuxiliar.Params.ParamByName('Produto').AsString := EdtNomeProd.Text;
      DM.FDQAuxiliar.Params.ParamByName('Descricao').AsString :=
        EdtDescProd.Text;
      DM.FDQAuxiliar.Params.ParamByName('Un').AsString := EdtUnProd.Text;
      DM.FDQAuxiliar.Params.ParamByName('VrVenda').AsFloat :=
        StrToFloat(EdtVrPrazaProd.Text);
      DM.FDQAuxiliar.Params.ParamByName('Sigla').AsString :=
        EdtSiglaGrupoProd.Text;
      DM.FDQAuxiliar.Params.ParamByName('Grupo').AsString := EdtGrupoProd.Text;
      DM.FDQAuxiliar.Params.ParamByName('CodBarra').AsString :=
        EdtCodBarraProd.Text;
      DM.FDQAuxiliar.Params.ParamByName('VrPromocao').AsFloat :=
        StrToFloat(EdtVrPromocaoProd.Text);
      DM.FDQAuxiliar.Params.ParamByName('VrAvista').AsFloat :=
        StrToFloat(EdtVrVistaProd.Text);
      DM.FDQAuxiliar.Params.ParamByName('Ativo').AsString := ativo;
      DM.FDQAuxiliar.Params.ParamByName('Codigo').AsInteger :=
        DM.FDQConsultaProdcodigo.AsInteger;

      DM.FDQAuxiliar.ExecSQL;
    except
      on E: Exception do
        ShowMessage('Erro!  ' + #13#10 + E.Message);
    end;
  end;
  DM.FDConnection1.CommitRetaining;
  DM.FDQConsultaProd.Active := False;
  LimpaCampos;
  MudarAbaModelo(TbItemListagem, Sender);
end;

procedure TFConsProduto.SpBEditarProdClick(Sender: TObject);
begin
  inherited;
  crud := 'editar';
  LblTituloEdicao.Text := 'Editando Cadastro';
  SpBEditarProd.Enabled := False;
  SpBEditarProd.Visible := False;
  SpBConfirmarProd.Enabled := True;
  SpBConfirmarProd.Visible := True;
  HabilitaCampos;
  EdtNomeProd.SetFocus;

end;

procedure TFConsProduto.SpBVoltarClick(Sender: TObject);
begin
  DM.FDQConsultaProd.Active := False;
  Close;

end;

procedure TFConsProduto.SpBVoltarEdicaoClick(Sender: TObject);
begin
  inherited;
  // EdtFiltroNomeProd.Text := EmptyStr;
  // EdtFiltroCodProd.Text := EmptyStr;
  // DM.FDQConsultaProd.Active := False;
  MudarAbaModelo(TbItemListagem, Sender);
end;

procedure TFConsProduto.SpdBNovoCadProdClick(Sender: TObject);
begin
  inherited;
  crud := 'inserir';
  SpBEditarProd.Enabled := False;
  SpBEditarProd.Visible := False;
  SpBConfirmarProd.Enabled := True;
  SpBConfirmarProd.Visible := True;
  LblTituloEdicao.Text := 'Novo Cadastro';
  MudarAbaModelo(TbItemedicao, Sender);
  LimpaCampos;
  HabilitaCampos;
  EdtNomeProd.SetFocus;
end;

procedure TFConsProduto.TakePhotoFromCameraAction1DidFinishTaking
  (Image: TBitmap);
var
  I: Integer;
  barcode: TObrSymbol;
  lista: TListViewItem;
begin
  inherited;
  // Image1.Bitmap.Assign(Image); => para trazer a foto na tela
  FObrConsProd.Active := True;
  FObrConsProd.Picture.Assign(Image);
  FObrConsProd.Scan;
  if FObrConsProd.BarcodeCount = 0 then
    ShowMessage('Não encontrado nenhum codigo de barras!')
  else
  begin
    for I := 0 to FObrConsProd.BarcodeCount - 1 do
    begin
      barcode := FObrConsProd.barcode[I];
      lista := ListViewConsProd.Items.Add;
      DM.FDQConsultaProd.Close;
      DM.FDQConsultaProd.ParamByName('PCodBar').Value := barcode.DataUtf8;
      DM.FDQConsultaProd.ParamByName('PNomeProd').Value := Null;
      DM.FDQConsultaProd.ParamByName('PCodProd').Value := Null;
      DM.FDQConsultaProd.Open();
      DM.FDQConsultaProd.Active := True;
      if DM.FDQConsultaProd.IsEmpty then
      begin
        ShowMessage('Nenhum Produto cadastrado com este codigo de barra!');
        // lista.Text := barcode.DataUtf8;  => para pegar o codigo de barras
        // lista.Detail := barcode.SymbologyName;  => para pegar o tipo do codigo de barras
      end;
    end;

    if itemPedido = 'S' then
    begin
      ListViewConsProd.ItemAppearanceObjects.ItemObjects.Accessory.
        Visible := False;
    end;
  end;
end;

procedure TFConsProduto.TakePhotoFromCameraAction2DidFinishTaking
  (Image: TBitmap);
var
  I: Integer;
  barcode: TObrSymbol;
begin
  inherited;
  // Image1.Bitmap.Assign(Image); => para trazer a foto na tela
  FObrConsProd.Active := True;
  FObrConsProd.Picture.Assign(Image);
  FObrConsProd.Scan;
  if FObrConsProd.BarcodeCount = 0 then
    ShowMessage('Não encontrado nenhum codigo de barras!')
  else
    for I := 0 to FObrConsProd.BarcodeCount - 1 do
    begin
      barcode := FObrConsProd.barcode[I];
      EdtCodBarraProd.Text := barcode.DataUtf8;
      // => para pegar o codigo de barras
      // lista.Detail := barcode.SymbologyName;  => para pegar o tipo do codigo de barras
    end;

end;

end.
