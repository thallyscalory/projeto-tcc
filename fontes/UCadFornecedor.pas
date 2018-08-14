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
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.EngExt,
  Fmx.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFCadFornecedor = class(TFCadModelo)
    ToolBar1: TToolBar;
    ListBoxEdicaoCadCli: TListBox;
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
    procedure EditFiltroNomeFornecedorClick(Sender: TObject);
    procedure EditFiltroCodFornecedorClick(Sender: TObject);
    procedure EditFiltroNomeFornecedorTyping(Sender: TObject);
    procedure EditFiltroCodFornecedorTyping(Sender: TObject);
    procedure BtnFiltrarFornecedorClick(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
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

procedure TFCadFornecedor.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  DM.FDQConsFornecedor.Active := False;
  EditFiltroNomeFornecedor.Text := EmptyStr;
  EditFiltroCodFornecedor.Text := EmptyStr;
  FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
end;

end.
