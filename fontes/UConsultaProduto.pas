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
  System.ImageList, FMX.ImgList;

type
  TFConsProduto = class(TFCadModelo)
    LytListagem: TLayout;
    EdtFiltroNomeProd: TEdit;
    SearchEditButton1: TSearchEditButton;
    EdtFiltroCodProd: TEdit;
    SearchEditButton2: TSearchEditButton;
    ListViewConsProd: TListView;
    BtnFiltroCodBar: TButton;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    FObrConsProd: TFObr;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LytFundoEdicao: TLayout;
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
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure EdtFiltroNomeProdClick(Sender: TObject);
    procedure EdtFiltroCodProdClick(Sender: TObject);
    procedure SearchEditButton1Click(Sender: TObject);
    procedure SearchEditButton2Click(Sender: TObject);
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
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure TakePhotoFromCameraAction2DidFinishTaking(Image: TBitmap);
    procedure SpdBNovoCadProdClick(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure ListViewConsProdGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ListViewConsProdDblClick(Sender: TObject);
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

procedure TFConsProduto.EdtFiltroCodProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtFiltroCodProd);
end;

procedure TFConsProduto.EdtFiltroNomeProdClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtFiltroNomeProd);
end;

procedure TFConsProduto.FormCreate(Sender: TObject);
begin
  inherited;
  TbControlCadModelo.ActiveTab := TbItemListagem;
  TbControlCadModelo.TabPosition := TTabPosition.None;
  if itemPedido = 'S' then
    ToolBarsuperior.Visible := False;

end;

procedure TFConsProduto.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  inherited;
  ListBoxEdicaoConsProd.Align := TAlignLayout.Client;
end;

procedure TFConsProduto.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  inherited;
  ListBoxEdicaoConsProd.Align := TAlignLayout.Top;
  ListBoxEdicaoConsProd.Height := ((Self.Height) - (Self.Height * 0.43));
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
  EdtFiltroNomeProd.Text := EmptyStr;
  EdtFiltroCodProd.Text := EmptyStr;
  MudarAbaModelo(TbItemedicao, Sender);

end;

procedure TFConsProduto.ListViewConsProdDblClick(Sender: TObject);
var
  y: integer;
begin
  inherited;
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
                        qtdItem := AValue;
                        x[contItem] := DM.FDQConsultaProdcodigo.AsString;
                        qtd[contItem] := qtdItem;
                        contItem := contItem + 1;
                      end;
                    mrCancel:
                      begin
                        EdtFiltroNomeProd.SetFocus;
                      end;
                  end;
                end);
            end;
          mrNo:
            begin
              // caso não
            end;
        end;
      end);
  end;
end;

procedure TFConsProduto.ListViewConsProdGesture(Sender: TObject;
const EventInfo: TGestureEventInfo; var Handled: Boolean);
var
  y: integer;
begin
  inherited;
  if EventInfo.GestureID = igiDoubleTap then
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
                            //exit
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

procedure TFConsProduto.SearchEditButton1Click(Sender: TObject);
begin
  inherited;
  EdtFiltroCodProd.Text := EmptyStr;
  DM.FDQConsultaProd.Active := False;
  DM.FDQConsultaProd.Close;
  DM.FDQConsultaProd.ParamByName('PNomeProd').Value :=
    '%' + EdtFiltroNomeProd.Text + '%';
  DM.FDQConsultaProd.ParamByName('PCodProd').Value := Null;
  DM.FDQConsultaProd.ParamByName('PCodBar').Value := Null;
  DM.FDQConsultaProd.Open();
  DM.FDQConsultaProd.Active := True;
  if DM.FDQConsultaProd.IsEmpty then
  begin
    ShowMessage('Nao encotrado nenhum produto com este nome!');
    EdtFiltroNomeProd.SetFocus;
  end;
end;

procedure TFConsProduto.SearchEditButton2Click(Sender: TObject);
begin
  inherited;
  EdtFiltroNomeProd.Text := EmptyStr;
  DM.FDQConsultaProd.Active := False;
  DM.FDQConsultaProd.Close;
  DM.FDQConsultaProd.ParamByName('PCodProd').Value := EdtFiltroCodProd.Text;
  DM.FDQConsultaProd.ParamByName('PNomeProd').Value := Null;
  DM.FDQConsultaProd.ParamByName('PCodBar').Value := Null;
  DM.FDQConsultaProd.Open();
  DM.FDQConsultaProd.Active := True;
  if DM.FDQConsultaProd.IsEmpty then
  begin
    ShowMessage('Nao encotrado nenhum produto com este codigo!');
    EdtFiltroCodProd.SetFocus;
  end;
end;

procedure TFConsProduto.SpBConfirmarProdClick(Sender: TObject);
var
  ativo: string;
  maxIdProd: integer;
begin
  inherited;
  EdtNomeProd.SetFocus;
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
      if EdtVrPrazaProd.Text = '' then
        DM.FDQCadProdvrvenda.AsFloat := 0
      else
        DM.FDQCadProdvrvenda.AsFloat := StrToFloat(EdtVrPrazaProd.Text);
      DM.FDQCadProdsigla.AsString := EdtSiglaGrupoProd.Text;
      DM.FDQCadProdgrupo.AsString := EdtGrupoProd.Text;
      DM.FDQCadProdCodigoBarra.AsString := EdtCodBarraProd.Text;
      if EdtVrPromocaoProd.Text = '' then
        DM.FDQCadProdvrpromocao.AsFloat := 0
      else
        DM.FDQCadProdvrpromocao.AsFloat := StrToFloat(EdtVrPromocaoProd.Text);
      if EdtVrVistaProd.Text = '' then
        DM.FDQCadProdVRAVISTA.AsFloat := 0
      else
        DM.FDQCadProdVRAVISTA.AsFloat := StrToFloat(EdtVrVistaProd.Text);
      DM.FDQCadProdativo.AsString := ativo;
      DM.FDQCadProd.Post;
    except
      on E: Exception do
        ShowMessage('Houve algum erro, processo cancelado!');
    end;
  end
  else if crud = 'editar' then
  begin
    try
      DM.FDQConsultaProd.Edit;
      DM.FDQConsultaProdproduto.AsString := EdtNomeProd.Text;
      DM.FDQConsultaProddescricao.AsString := EdtDescProd.Text;
      DM.FDQConsultaProdun.AsString := EdtUnProd.Text;
      DM.FDQConsultaProdvrvenda.AsFloat := StrToFloat(EdtVrPrazaProd.Text);
      DM.FDQConsultaProdsigla.AsString := EdtSiglaGrupoProd.Text;
      DM.FDQConsultaProdgrupo.AsString := EdtGrupoProd.Text;
      DM.FDQConsultaProdCodigoBarra.AsString := EdtCodBarraProd.Text;
      DM.FDQConsultaProdvrpromocao.AsFloat :=
        StrToFloat(EdtVrPromocaoProd.Text);
      DM.FDQConsultaProdVRAVISTA.AsFloat := StrToFloat(EdtVrVistaProd.Text);
      DM.FDQConsultaProdativo.AsString := ativo;
      DM.FDQConsultaProd.Post;
    except
      on E: Exception do
        ShowMessage('Houve algum erro, processo cancelado!');
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
  FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
end;

procedure TFConsProduto.SpBVoltarEdicaoClick(Sender: TObject);
begin
  inherited;
  EdtFiltroNomeProd.Text := EmptyStr;
  EdtFiltroCodProd.Text := EmptyStr;
  DM.FDQConsultaProd.Active := False;
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
  I: integer;
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
end;

procedure TFConsProduto.TakePhotoFromCameraAction2DidFinishTaking
  (Image: TBitmap);
var
  I: integer;
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
