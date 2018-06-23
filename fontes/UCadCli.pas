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
  FMX.ImgList, FMX.Gestures;

type
  TFCadCli = class(TFCadModelo)
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    BindSourceDB2: TBindSourceDB;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    LinkFillControlToField1: TLinkFillControlToField;
    EditFiltroNomeCadCli: TEdit;
    EditButtonPesqNomeCli: TEditButton;
    EditFiltroCodCadCli: TEdit;
    EditButtonPesqCodCli: TEditButton;
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
    Cidade: TLabel;
    LblUfCli: TLabel;
    LblEmailCli: TLabel;
    SpdBNovoCadCli: TSpeedButton;
    GestureManager1: TGestureManager;
    procedure FormCreate(Sender: TObject);
    procedure SpBVoltarEdicaoClick(Sender: TObject);
    procedure EditButtonPesqNomeCliClick(Sender: TObject);
    procedure EditButtonPesqCodCliClick(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure EditFiltroNomeCadCliClick(Sender: TObject);
    procedure EditFiltroCodCadCliClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
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
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure SpdBNovoCadCliClick(Sender: TObject);
    procedure ListViewCadCliItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListViewCadCliGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
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
  nomeCliente: string;

implementation

{$R *.fmx}

uses UDM, UPrincipal, UVenda1;

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
  MemoObsCadCli.Enabled := False;
  SpdBFotoCli.Enabled := False;
  EdtDataCadCli.Enabled := False;
end;

procedure TFCadCli.EditButtonPesqCodCliClick(Sender: TObject);

begin
  inherited;
  EditFiltroNomeCadCli.Text := EmptyStr;
  DM.FDQFiltroCadCLi.Active := False;
  DM.FDQFiltroCadCLi.Close;
  DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value :=
    EditFiltroCodCadCli.Text;
  DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := Null;
  DM.FDQFiltroCadCLi.Open();
  DM.FDQFiltroCadCLi.Active := True;
  if DM.FDQFiltroCadCLi.IsEmpty then
    ShowMessage('Não encontrado nenhum cliente com este codigo!');
  EsconderTeclado;
end;

procedure TFCadCli.EditButtonPesqNomeCliClick(Sender: TObject);
begin
  inherited;
  EditFiltroCodCadCli.Text := EmptyStr;
  DM.FDQFiltroCadCLi.Active := False;
  DM.FDQFiltroCadCLi.Close;
  DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value :=
    '%' + EditFiltroNomeCadCli.Text + '%';
  DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
  DM.FDQFiltroCadCLi.Open();
  DM.FDQFiltroCadCLi.Active := True;
  if DM.FDQFiltroCadCLi.IsEmpty then
  begin
    ShowMessage('Não encontrado nenhum cliente com este nome!');
    EditFiltroNomeCadCli.SetFocus;
  end;
  EsconderTeclado;
end;

procedure TFCadCli.EditFiltroCodCadCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroCodCadCli);
end;

procedure TFCadCli.EditFiltroNomeCadCliClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroNomeCadCli);
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

procedure TFCadCli.FormCreate(Sender: TObject);
begin
  inherited;
  TbControlCadModelo.ActiveTab := TbItemListagem;
  TbControlCadModelo.TabPosition := TTabPosition.None;
  if venda = 'S' then
    SpBVoltar.Visible := False;
  LblTitulo.Visible := False;
end;

procedure TFCadCli.FormKeyDown(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
// para controlar o botao voltar do celular.
var
  BotaoFisVoltar: IFMXVirtualKeyboardService;
begin
  if (Key = vkHardwareBack) then
  begin
    TPlatformServices.Current.SupportsPlatformService
      (IFMXVirtualKeyboardService, IInterface(BotaoFisVoltar));
    if (BotaoFisVoltar <> nil) then
    begin
      // se o teclado estiver ativo não faça nada.
    end
    else if TbControlCadModelo.ActiveTab = TbItemListagem then
    begin
      DM.FDQFiltroCadCLi.Active := False;
      EditFiltroNomeCadCli.Text := EmptyStr;
      EditFiltroCodCadCli.Text := EmptyStr;
      FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
    end
    else if TbControlCadModelo.ActiveTab = TbItemedicao then
    begin
      MudarAbaModelo(TbItemListagem, Sender);
    end;
  end;
end;

procedure TFCadCli.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  inherited;
  ListBoxEdicaoCadCli.Align := TAlignLayout.Client;
end;

procedure TFCadCli.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  inherited;
  ListBoxEdicaoCadCli.Align := TAlignLayout.Top;
  ListBoxEdicaoCadCli.Height := ((Self.Height) - (Self.Height * 0.43));
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
  MemoObsCadCli.Enabled := True;
  SpdBFotoCli.Enabled := True;
  EdtDataCadCli.Enabled := False;
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
  EdtDataCadCli.Text := EmptyStr;
end;

procedure TFCadCli.ListViewCadCliButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
var
  bmp: TBitmap;
begin
  inherited;
  clickBotao := False;
  lblTituloEdicao.Text := 'Detalhes';
  SpdBEditar.Enabled := True;
  SpdBEditar.Visible := True;
  SpdBConfirmar.Enabled := False;
  SpdBConfirmar.Visible := False;
  EdtDataCadCli.Text := DM.FDQFiltroCadCLidata_cad_cli.AsString;
  if DM.FDQFiltroCadCLitipo_cli.AsString = 'F' then
    ComboBoxTipoPessoaCli.ItemIndex := 0
  else
    ComboBoxTipoPessoaCli.ItemIndex := 1;
  if DM.FDQFiltroCadCLiliberaaprazo_cli.AsString = 'S' then
    RadioBLiberaAprazoS.IsChecked := True
  else
    RadioBLiberaAprazoN.IsChecked := True;
  EditFiltroNomeCadCli.Text := EmptyStr;
  EditFiltroCodCadCli.Text := EmptyStr;
  EdtNomeCli.SetFocus;
  DesabilitaCampos;
  MudarAbaModelo(TbItemedicao, Sender);
end;

procedure TFCadCli.ListViewCadCliGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  inherited;
  if EventInfo.GestureID = igiDoubleTap then
  begin
  if venda = 'S' then
  begin
    MessageDlg('Você deseja adicionar este cliente ao pedido?',
      System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
        case AResult of
          mrYES:
            begin
              // caso sim
              nomeCliente := DM.FDQFiltroCadCLinome_cli.AsString;
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

procedure TFCadCli.ListViewCadCliItemClick(const Sender: TObject;
  const AItem: TListViewItem);
begin
  inherited;
{  if venda = 'S' then
  begin
    MessageDlg('Você deseja adicionar este cliente ao pedido?',
      System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
        case AResult of
          mrYES:
            begin
              // caso sim
              nomeCliente := DM.FDQFiltroCadCLinome_cli.AsString;
            end;
          mrNo:
            begin
              // caso não
            end;
        end;
      end);
  end;
  clickBotao := True;
  qtdClickItem := 1;}
end;

procedure TFCadCli.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  DM.FDQFiltroCadCLi.Active := False;
  EditFiltroNomeCadCli.Text := EmptyStr;
  EditFiltroCodCadCli.Text := EmptyStr;
  FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
end;

procedure TFCadCli.SpBVoltarEdicaoClick(Sender: TObject);
begin
  inherited;
  DM.FDQFiltroCadCLi.Active := False;
  LimpaCampos;
  MudarAbaModelo(TbItemListagem, Sender);

end;

procedure TFCadCli.SpdBConfirmarClick(Sender: TObject);
var
  sql, LiberaAprazo, TipoPessoa, DataHora: string;
  MaxId: integer;
  Data: TDateTime;
  data1: string;
begin
  inherited;
  EdtNomeCli.SetFocus;
  EsconderTeclado;
  FPrincipal.ksLoadingIndicator1.ShowLoading;
  DataHora := DateTimeToStr(Now);
  if RadioBLiberaAprazoS.IsChecked then
    LiberaAprazo := 'S'
  else
    LiberaAprazo := 'N';
  if ComboBoxTipoPessoaCli.ItemIndex = 1 then
    TipoPessoa := 'J'
  else
    TipoPessoa := 'F';
  if crud = 'iserir' then
  begin
    DM.FDQMaxIdCli.Close;
    DM.FDQMaxIdCli.Open();
    MaxId := DM.FDQMaxIdClimax.AsInteger + 1;
    try
      { dm.FDQImgCli.Close;
        dm.FDQImgCli.Open();
        dm.FDQImgCli.Append;
        dm.FDQImgCliid_cli.AsInteger := MaxId;
        dm.FDQImgClinome_cli.AsString := EdtNomeCli.Text;
        dm.FDQImgClifoto_cli.Assign(FotoCli);
        dm.FDQImgCli.Post; }

      DM.FDQCadCli.Close;
      DM.FDQCadCli.Open();
      DM.FDQCadCli.Append;
      DM.FDQCadCliid_cli.AsInteger := MaxId;
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
      DM.FDQCadCli.Post;

    except
      on E: Exception do
        ShowMessage('Houve um erro, processo Cancelado!');
    end;
  end
  else if crud = 'editar' then
  begin
    try
      DM.FDQFiltroCadCLi.Edit;
      DM.FDQFiltroCadCLitipo_cli.AsString := TipoPessoa;
      DM.FDQFiltroCadCLinome_cli.AsString := EdtNomeCli.Text;
      DM.FDQFiltroCadCLicpf_cnpj_cli.AsString := EdtCpfCli.Text;
      DM.FDQFiltroCadCLirg_ie_cli.AsString := EdtRgCli.Text;
      DM.FDQFiltroCadCLiapelido_cli.AsString := EdtApelidoCli.Text;
      DM.FDQFiltroCadCLifone_cli.AsString := EdtFoneCli.Text;
      DM.FDQFiltroCadCLiendereco_cli.AsString := EdtEnderecoCli.Text;
      DM.FDQFiltroCadCLinum_cli.AsString := EdtNumCli.Text;
      DM.FDQFiltroCadCLicomplemento_cli.AsString := EdtCompCli.Text;
      DM.FDQFiltroCadCLibairro_cli.AsString := EdtBairroCli.Text;
      DM.FDQFiltroCadCLicep_cli.AsString := EdtCepCli.Text;
      DM.FDQFiltroCadCLicidade_cli.AsString := EdtCidadeCli.Text;
      DM.FDQFiltroCadCLiuf_cli.AsString := EdtUfCli.Text;
      DM.FDQFiltroCadCLiemail_cli.AsString := EdtEmailCli.Text;
      DM.FDQFiltroCadCLiliberaaprazo_cli.AsString := LiberaAprazo;
      DM.FDQFiltroCadCLiobs_cli.AsString := MemoObsCadCli.Text;
      if not FotoCli.IsEmpty then
        DM.FDQFiltroCadCLifoto_cli.Assign(FotoCli);
      DM.FDQFiltroCadCLi.Post;

      { sql := 'update cliente set ' +//
        'tipo_cli = ' + QuotedStr(TipoPessoa) +//
        ', nome_cli = ' + QuotedStr(EdtNomeCli.Text) +//
        ', cpf_cnpj_cli = ' + QuotedStr(EdtCpfCli.Text) +//
        ', rg_ie_cli = ' + QuotedStr(EdtRgCli.Text) +//
        ', apelido_cli = ' + QuotedStr(EdtApelidoCli.Text) +//
        ', fone_cli = ' + QuotedStr(EdtFoneCli.Text) +//
        ', endereco_cli = ' + QuotedStr(EdtEnderecoCli.Text) +//
        ', num_cli = ' + QuotedStr(EdtNumCli.Text) +//
        ', complemento_cli = ' + QuotedStr(EdtCompCli.Text) +//
        ', bairro_cli = ' + QuotedStr(EdtBairroCli.Text) +//
        ', cep_cli = ' + QuotedStr(EdtCepCli.Text) +//
        ', cidade_cli = ' + QuotedStr(EdtCidadeCli.Text) +//
        ', uf_cli = ' + QuotedStr(EdtUfCli.Text) +//
        ', email_cli = ' + QuotedStr(EdtEmailCli.Text) +//
        ', liberaaprazo_cli = ' + QuotedStr(LiberaAprazo) +//
        ', obs_cli = ' + QuotedStr(MemoObsCli.Text) +//
        ' where ' +//
        'id_cli = ' + DM.FDQFiltroCadCLiid_cli.AsString; }
    except
      on E: Exception do
        ShowMessage('Houve um erro, processo Cancelado!');
    end;
  end;
  // DM.FDConnection1.ExecSQL(sql);
  DM.FDConnection1.CommitRetaining;
  DM.FDQFiltroCadCLi.Active := False;
  MudarAbaModelo(TbItemListagem, Sender);
  LimpaCampos;
  FPrincipal.ksLoadingIndicator1.HideLoading;
end;

procedure TFCadCli.SpdBEditarClick(Sender: TObject);
begin
  inherited;
  FotoCli := ImgFotoCli.Bitmap;
  crud := 'editar';
  lblTituloEdicao.Text := 'Editando Cadastro';
  SpdBEditar.Enabled := False;
  SpdBEditar.Visible := False;
  SpdBConfirmar.Visible := True;
  SpdBConfirmar.Enabled := True;
  HabilitaCampos;
  EdtNomeCli.SetFocus;
end;

procedure TFCadCli.SpdBNovoCadCliClick(Sender: TObject);
begin
  inherited;
  crud := 'iserir';
  SpdBEditar.Enabled := False;
  SpdBEditar.Visible := False;
  SpdBConfirmar.Enabled := True;
  SpdBConfirmar.Visible := True;
  lblTituloEdicao.Text := 'Novo Cadastro';
  HabilitaCampos;
  LimpaCampos;
  // EdtDataCadCli.Text := DateTimeToStr(Now); => para pegar a data atual
  MudarAbaModelo(TbItemedicao, Sender);
  EdtNomeCli.SetFocus;
end;

procedure TFCadCli.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
begin
  inherited;
  EsconderTeclado;
  FotoCli := Image;
  ImgFotoCli.Bitmap.Assign(Image);

end;

end.
