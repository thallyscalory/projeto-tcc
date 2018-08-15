unit UCadFornecedor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.ScrollBox,
  FMX.Memo, FMX.ListBox, FMX.Edit, FMX.ListView.Types, FMX.ListView.Appearances,
  FMX.ListView.Adapters.Base, MultiDetailAppearanceU, FMX.ListView, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFCadFornecedor = class(TFCadModelo)
    ToolBar1: TToolBar;
    ListBoxEdicaoForn: TListBox;
    ListBoxItem1: TListBoxItem;
    EdtNomeForn: TEdit;
    EdtBNomeCli: TEditButton;
    LblNomeForn: TLabel;
    ListBoxItem2: TListBoxItem;
    ComboBoxTipoPessoaForn: TComboBox;
    LblTipoPessoaForn: TLabel;
    ListBoxItem3: TListBoxItem;
    EdtCpfForn: TEdit;
    EdtBCpfCli: TEditButton;
    LblCpfForn: TLabel;
    ListBoxItem4: TListBoxItem;
    EdtRgForn: TEdit;
    EdtBRgCli: TEditButton;
    LblRgForn: TLabel;
    ListBoxItem5: TListBoxItem;
    EdtApelidoForn: TEdit;
    EdtBApelidoCli: TEditButton;
    LblApelidoForn: TLabel;
    ListBoxItem6: TListBoxItem;
    EdtFoneForn: TEdit;
    EdtBFoneCli: TEditButton;
    LblFoneForn: TLabel;
    ListBoxItem7: TListBoxItem;
    EdtEnderecoForn: TEdit;
    EdtBEndCli: TEditButton;
    LblEndForn: TLabel;
    ListBoxItem8: TListBoxItem;
    EdtNumForn: TEdit;
    EdtBNumCli: TEditButton;
    LblNumForn: TLabel;
    ListBoxItem9: TListBoxItem;
    EdtCompForn: TEdit;
    EdtBCompCli: TEditButton;
    LblCompForn: TLabel;
    ListBoxItem10: TListBoxItem;
    EdtBairroForn: TEdit;
    EdtBBairroCli: TEditButton;
    LblBairroForn: TLabel;
    ListBoxItem11: TListBoxItem;
    EdtCepForn: TEdit;
    EdtBCepCli: TEditButton;
    LblCepForn: TLabel;
    ListBoxItem12: TListBoxItem;
    EdtCidadeForn: TEdit;
    EdtBCidadeCli: TEditButton;
    LblCidadeForn: TLabel;
    ListBoxItem13: TListBoxItem;
    EdtUfForn: TEdit;
    EdtBUfCli: TEditButton;
    LblUfForn: TLabel;
    ListBoxItem14: TListBoxItem;
    EdtEmailForn: TEdit;
    EdtBEmailCli: TEditButton;
    LblEmailForn: TLabel;
    ListBoxItem15: TListBoxItem;
    LblStatusForn: TLabel;
    ListBoxItem16: TListBoxItem;
    LblObsForn: TLabel;
    MemoObsForn: TMemo;
    ListBoxItem17: TListBoxItem;
    EdtDataForn: TEdit;
    SpdBVoltarEdicaoCadFornecedor: TSpeedButton;
    LblTituloEdicaoCadFornecedor: TLabel;
    SpdBConfirmaEdicaoCadFornecedor: TSpeedButton;
    SpdBEditarEdicaoCadFornecedor: TSpeedButton;
    Layout1: TLayout;
    EditFiltroNomeFornecedor: TEdit;
    EditFiltroCodFornecedor: TEdit;
    BtnFiltrarFornecedor: TButton;
    ListViewFornecedor: TListView;
    ComboBoxStatusForn: TComboBox;
    LblDataCadForn: TLabel;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
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
    LinkControlToField15: TLinkControlToField;
    SpdBNovoForn: TSpeedButton;
    procedure EditFiltroNomeFornecedorClick(Sender: TObject);
    procedure EditFiltroCodFornecedorClick(Sender: TObject);
    procedure EditFiltroNomeFornecedorTyping(Sender: TObject);
    procedure EditFiltroCodFornecedorTyping(Sender: TObject);
    procedure BtnFiltrarFornecedorClick(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListViewFornecedorItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure SpdBVoltarEdicaoCadFornecedorClick(Sender: TObject);
    procedure SpdBEditarEdicaoCadFornecedorClick(Sender: TObject);
    procedure SpdBNovoFornClick(Sender: TObject);
    procedure SpdBConfirmaEdicaoCadFornecedorClick(Sender: TObject);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
  private
    crud: string;

    procedure HabilitaCampos;
    procedure DesabilitaCampos;
    procedure LimpaCampos;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadFornecedor: TFCadFornecedor;

implementation

{$R *.fmx}

uses UDM, UPrincipal;

procedure TFCadFornecedor.BtnFiltrarFornecedorClick(Sender: TObject);
begin
  inherited;
  EditFiltroNomeFornecedor.Text := EmptyStr;
  EditFiltroCodFornecedor.Text := EmptyStr;
  DM.FDQConsFornecedor.Active := False;
  DM.FDQConsFornecedor.Close;
  DM.FDQConsFornecedor.ParamByName('PNomeForn').Value := '%';
  DM.FDQConsFornecedor.ParamByName('PIdForn').Value := Null;
  DM.FDQConsFornecedor.Open();
  DM.FDQConsFornecedor.Active := True;
end;

procedure TFCadFornecedor.DesabilitaCampos;
begin
  EdtNomeForn.Enabled := False;
  ComboBoxTipoPessoaForn.Enabled := False;
  EdtCpfForn.Enabled := False;
  EdtRgForn.Enabled := False;
  EdtApelidoForn.Enabled := False;
  EdtFoneForn.Enabled := False;
  EdtEnderecoForn.Enabled := False;
  EdtNumForn.Enabled := False;
  EdtCompForn.Enabled := False;
  EdtBairroForn.Enabled := False;
  EdtCepForn.Enabled := False;
  EdtCidadeForn.Enabled := False;
  EdtUfForn.Enabled := False;
  EdtEmailForn.Enabled := False;
  ComboBoxStatusForn.Enabled := False;
  MemoObsForn.ReadOnly := True;
  EdtDataForn.Enabled := False;
end;

procedure TFCadFornecedor.EditFiltroCodFornecedorClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroCodFornecedor);
end;

procedure TFCadFornecedor.EditFiltroCodFornecedorTyping(Sender: TObject);
begin
  inherited;
  EditFiltroNomeFornecedor.Text := EmptyStr;
  DM.FDQConsFornecedor.Active := False;
  DM.FDQConsFornecedor.Close;
  if EditFiltroCodFornecedor.Text.IsEmpty then
  begin
    DM.FDQConsFornecedor.ParamByName('PNomeForn').Value := Null;
    DM.FDQConsFornecedor.ParamByName('PIdForn').Value := Null;
  end
  else
  begin
    DM.FDQConsFornecedor.ParamByName('PIdForn').Value :=
      EditFiltroCodFornecedor.Text;
    DM.FDQConsFornecedor.ParamByName('PNomeForn').Value := Null;
  end;
  DM.FDQConsFornecedor.Open();
  DM.FDQConsFornecedor.Active := True;
end;

procedure TFCadFornecedor.EditFiltroNomeFornecedorClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroNomeFornecedor);
end;

procedure TFCadFornecedor.EditFiltroNomeFornecedorTyping(Sender: TObject);
begin
  inherited;
  EditFiltroCodFornecedor.Text := EmptyStr;
  DM.FDQConsFornecedor.Active := False;
  DM.FDQConsFornecedor.Close;
  if EditFiltroNomeFornecedor.Text.IsEmpty then
  begin
    DM.FDQConsFornecedor.ParamByName('PNomeForn').Value := Null;
    DM.FDQConsFornecedor.ParamByName('PIdForn').Value := Null;
  end
  else
  begin
    DM.FDQConsFornecedor.ParamByName('PNomeForn').Value :=
      '%' + EditFiltroNomeFornecedor.Text + '%';
    DM.FDQConsFornecedor.ParamByName('PIdForn').Value := Null;
  end;
  DM.FDQConsFornecedor.Open();
  DM.FDQConsFornecedor.Active := True;

end;

procedure TFCadFornecedor.FormCreate(Sender: TObject);
begin
  inherited;
  TbControlCadModelo.ActiveTab := TbItemListagem;
  TbControlCadModelo.TabPosition := TTabPosition.None;
end;

procedure TFCadFornecedor.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  inherited;
  ListBoxEdicaoForn.Align := TAlignLayout.Client;
end;

procedure TFCadFornecedor.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  inherited;
  ListBoxEdicaoForn.Align := TAlignLayout.Top;
  ListBoxEdicaoForn.Height := ((Self.Height) - (Self.Height * 0.50));
end;

procedure TFCadFornecedor.HabilitaCampos;
begin
  EdtNomeForn.Enabled := True;
  ComboBoxTipoPessoaForn.Enabled := True;
  EdtCpfForn.Enabled := True;
  EdtRgForn.Enabled := True;
  EdtApelidoForn.Enabled := True;
  EdtFoneForn.Enabled := True;
  EdtEnderecoForn.Enabled := True;
  EdtNumForn.Enabled := True;
  EdtCompForn.Enabled := True;
  EdtBairroForn.Enabled := True;
  EdtCepForn.Enabled := True;
  EdtCidadeForn.Enabled := True;
  EdtUfForn.Enabled := True;
  EdtEmailForn.Enabled := True;
  ComboBoxStatusForn.Enabled := True;
  MemoObsForn.ReadOnly := False;
  EdtDataForn.Enabled := False;
end;

procedure TFCadFornecedor.LimpaCampos;
begin
  EdtNomeForn.Text := EmptyStr;
  ComboBoxTipoPessoaForn.ItemIndex := 1;
  EdtCpfForn.Text := EmptyStr;
  EdtRgForn.Text := EmptyStr;
  EdtApelidoForn.Text := EmptyStr;
  EdtFoneForn.Text := EmptyStr;
  EdtEnderecoForn.Text := EmptyStr;
  EdtNumForn.Text := EmptyStr;
  EdtCompForn.Text := EmptyStr;
  EdtBairroForn.Text := EmptyStr;
  EdtCepForn.Text := EmptyStr;
  EdtCidadeForn.Text := EmptyStr;
  EdtUfForn.Text := EmptyStr;
  EdtEmailForn.Text := EmptyStr;
  ComboBoxStatusForn.ItemIndex := 0;
  MemoObsForn.Lines.Clear;
  EdtDataForn.Text := EmptyStr;
end;

procedure TFCadFornecedor.ListViewFornecedorItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  inherited;
  if ItemObject is TListItemAccessory then
  begin
    LblTituloEdicaoCadFornecedor.Text := 'Detalhes';
    SpdBEditarEdicaoCadFornecedor.Visible := True;
    SpdBConfirmaEdicaoCadFornecedor.Visible := False;
    if DM.FDQConsFornecedortipo_pessoa.AsString = 'J' then
    begin
      ComboBoxTipoPessoaForn.ItemIndex := 1;
    end
    else if DM.FDQConsFornecedortipo_pessoa.AsString = 'F' then
    begin
      ComboBoxTipoPessoaForn.ItemIndex := 0;
    end;
    if DM.FDQConsFornecedorstatus.AsString = 'A' then
    begin
      ComboBoxStatusForn.ItemIndex := 0;
    end
    else if DM.FDQConsFornecedorstatus.AsString = 'I' then
    begin
      ComboBoxStatusForn.ItemIndex := 1;
    end;
    DesabilitaCampos;
    MudarAbaModelo(TbItemedicao, Sender);
  end;

end;

procedure TFCadFornecedor.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  DM.FDQConsFornecedor.Active := False;
  EditFiltroNomeFornecedor.Text := EmptyStr;
  EditFiltroCodFornecedor.Text := EmptyStr;
  FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
end;

procedure TFCadFornecedor.SpdBConfirmaEdicaoCadFornecedorClick(Sender: TObject);
var
  tipoPessoa, Status: string;
  dataCad: TDate;
begin
  inherited;
  if EdtNomeForn.Text.IsEmpty then
  begin
    ShowMessage('Processo Cancelado! Nome não pode estar em branco');
    EdtNomeForn.SetFocus;
  end
  else
  begin
    try
      if ComboBoxTipoPessoaForn.ItemIndex = 1 then
      begin
        tipoPessoa := 'J';
      end
      else if ComboBoxTipoPessoaForn.ItemIndex = 0 then
      begin
        tipoPessoa := 'F';
      end;
      if ComboBoxStatusForn.ItemIndex = 0 then
      begin
        Status := 'A';
      end
      else if ComboBoxStatusForn.ItemIndex = 1 then
      begin
        Status := 'I';
      end;

      if crud = 'inserir' then
      begin
        dataCad := Date;

        DM.FDQCadFornecedor.Close;
        DM.FDQCadFornecedor.Open();
        DM.FDQCadFornecedor.Append;
        DM.FDQCadFornecedortipo_pessoa.AsString := tipoPessoa;
        DM.FDQCadFornecedornome.AsString := EdtNomeForn.Text;
        DM.FDQCadFornecedornome_fantasia.AsString := EdtApelidoForn.Text;
        DM.FDQCadFornecedorcpf_cnpj.AsString := EdtCpfForn.Text;
        DM.FDQCadFornecedorrg_ie.AsString := EdtRgForn.Text;
        DM.FDQCadFornecedorfone.AsString := EdtFoneForn.Text;
        DM.FDQCadFornecedorendereco.AsString := EdtEnderecoForn.Text;
        DM.FDQCadFornecedornumero.AsString := EdtNumForn.Text;
        DM.FDQCadFornecedorcomplemento.AsString := EdtCompForn.Text;
        DM.FDQCadFornecedorbairro.AsString := EdtBairroForn.Text;
        DM.FDQCadFornecedorcep.AsString := EdtCepForn.Text;
        DM.FDQCadFornecedorcidade.AsString := EdtCidadeForn.Text;
        DM.FDQCadFornecedoruf.AsString := EdtUfForn.Text;
        DM.FDQCadFornecedoremail.AsString := EdtEmailForn.Text;
        DM.FDQCadFornecedorobs.AsString := MemoObsForn.Text;
        DM.FDQCadFornecedorstatus.AsString := Status;
        DM.FDQCadFornecedordata_cad.AsDateTime := dataCad;
        DM.FDQCadFornecedor.Post;

        DM.FDConnection1.CommitRetaining;
        LimpaCampos;
        MudarAbaModelo(TbItemListagem, Sender);
      end;

    except
      on E: Exception do
        ShowMessage('Erro! ' + E.Message);
    end;
  end;
end;

procedure TFCadFornecedor.SpdBEditarEdicaoCadFornecedorClick(Sender: TObject);
begin
  inherited;
  crud := 'editar';
  SpdBEditarEdicaoCadFornecedor.Visible := False;
  SpdBConfirmaEdicaoCadFornecedor.Visible := True;
  HabilitaCampos;
  EdtNomeForn.SetFocus;
end;

procedure TFCadFornecedor.SpdBNovoFornClick(Sender: TObject);
begin
  inherited;
  crud := 'inserir';
  DM.FDQConsFornecedor.Active := False;
  LblTituloEdicaoCadFornecedor.Text := 'Novo Cadastro';
  SpdBEditarEdicaoCadFornecedor.Visible := False;
  SpdBConfirmaEdicaoCadFornecedor.Visible := True;
  LimpaCampos;
  HabilitaCampos;
  MudarAbaModelo(TbItemedicao, Sender);
  EdtNomeForn.SetFocus;
end;

procedure TFCadFornecedor.SpdBVoltarEdicaoCadFornecedorClick(Sender: TObject);
begin
  inherited;
  MudarAbaModelo(TbItemListagem, Sender);
end;

end.
