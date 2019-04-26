unit UCadTipoReceita;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView, FMX.Edit,
  FMX.ListBox, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope;

type
  TFCadTipoReceita = class(TFCadModelo)
    Layout1: TLayout;
    EditFiltroNomeCadTipoReceita: TEdit;
    EditFiltroCodCadTipoReceita: TEdit;
    BtnFiltrarCadTipoReceita: TButton;
    ListViewCadTipoReceita: TListView;
    ToolBar1: TToolBar;
    lblTituloEdicaoCadTipoReceita: TLabel;
    SpBVoltarEdicaoCadTipoReceita: TSpeedButton;
    SpdBEditarCadTipoReceita: TSpeedButton;
    SpdBConfirmarCadTipoReceita: TSpeedButton;
    ListBoxEdicaoCadTipoReceita: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    LblDescricaoCadTipoReceita: TLabel;
    EdtDescricaoCadTipoReceita: TEdit;
    LblGeraContaCadTipoReceita: TLabel;
    LblAvistaCadTipoReceita: TLabel;
    LblCondicionalCadTipoReceita: TLabel;
    LblStatusCadTipoReceita: TLabel;
    LblDataCadCadTipoReceita: TLabel;
    CBGeraContaCadTipoReceita: TComboBox;
    CBAvistaCadTipoReceita: TComboBox;
    CBCondicionalCadTipoReceita: TComboBox;
    CBStatusCadTipoReceita: TComboBox;
    EdtDataCadTipoReceita: TEdit;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    SpdBNovoCadTipoReceita: TSpeedButton;
    procedure EditFiltroNomeCadTipoReceitaClick(Sender: TObject);
    procedure EditFiltroCodCadTipoReceitaClick(Sender: TObject);
    procedure EdtDescricaoCadTipoReceitaClick(Sender: TObject);
    procedure EditFiltroNomeCadTipoReceitaTyping(Sender: TObject);
    procedure EditFiltroCodCadTipoReceitaTyping(Sender: TObject);
    procedure BtnFiltrarCadTipoReceitaClick(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure ListViewCadTipoReceitaButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure SpdBNovoCadTipoReceitaClick(Sender: TObject);
  private
    crud: string;

    procedure LimpaCampos;
    procedure HabilitaCampos;
    procedure DesabilitaCampos;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadTipoReceita: TFCadTipoReceita;

implementation

{$R *.fmx}

uses UDM, UPrincipal;

procedure TFCadTipoReceita.BtnFiltrarCadTipoReceitaClick(Sender: TObject);
begin
  inherited;
  EditFiltroNomeCadTipoReceita.Text := EmptyStr;
  EditFiltroCodCadTipoReceita.Text := EmptyStr;
  DM.FDQConsFormaPag.Active := False;
  DM.FDQConsFormaPag.Close;
  DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value := '%';
  DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
  DM.FDQConsFormaPag.ParamByName('PStatusFormaPag').Value := '%';
  DM.FDQConsFormaPag.Open();
  DM.FDQConsFormaPag.Active := True;
end;

procedure TFCadTipoReceita.DesabilitaCampos;
begin
  SpdBEditarCadTipoReceita.Visible := True;
  SpdBConfirmarCadTipoReceita.Visible := False;
  EdtDescricaoCadTipoReceita.Enabled := False;
  CBGeraContaCadTipoReceita.Enabled := False;
  CBAvistaCadTipoReceita.Enabled := False;
  CBCondicionalCadTipoReceita.Enabled := False;
  CBStatusCadTipoReceita.Enabled := False;
  EdtDataCadTipoReceita.Enabled := False;
end;

procedure TFCadTipoReceita.EditFiltroCodCadTipoReceitaClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroCodCadTipoReceita);
end;

procedure TFCadTipoReceita.EditFiltroCodCadTipoReceitaTyping(Sender: TObject);
begin
  inherited;
  if not EditFiltroCodCadTipoReceita.Text.IsEmpty then
  begin
    EditFiltroNomeCadTipoReceita.Text := EmptyStr;
    DM.FDQConsFormaPag.Active := False;
    DM.FDQConsFormaPag.Close;
    DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value := Null;
    DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value :=
      '%' + EditFiltroCodCadTipoReceita.Text + '%';
    DM.FDQConsFormaPag.ParamByName('PStatusFormaPag').Value := '%';
    DM.FDQConsFormaPag.Open();
    DM.FDQConsFormaPag.Active := True;
  end
  else
    DM.FDQConsFormaPag.Active := False;
end;

procedure TFCadTipoReceita.EditFiltroNomeCadTipoReceitaClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroNomeCadTipoReceita);
end;

procedure TFCadTipoReceita.EditFiltroNomeCadTipoReceitaTyping(Sender: TObject);
begin
  inherited;
  if not EditFiltroNomeCadTipoReceita.Text.IsEmpty then
  begin
    EditFiltroCodCadTipoReceita.Text := EmptyStr;
    DM.FDQConsFormaPag.Active := False;
    DM.FDQConsFormaPag.Close;
    DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value :=
      '%' + EditFiltroNomeCadTipoReceita.Text + '%';
    DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
    DM.FDQConsFormaPag.ParamByName('PStatusFormaPag').Value := '%';
    DM.FDQConsFormaPag.Open();
    DM.FDQConsFormaPag.Active := True;
  end
  else
    DM.FDQConsFormaPag.Active := False;
end;

procedure TFCadTipoReceita.EdtDescricaoCadTipoReceitaClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtDescricaoCadTipoReceita);
end;

procedure TFCadTipoReceita.HabilitaCampos;
begin
  SpdBEditarCadTipoReceita.Visible := False;
  SpdBConfirmarCadTipoReceita.Visible := True;
  EdtDescricaoCadTipoReceita.Enabled := True;
  CBGeraContaCadTipoReceita.Enabled := True;
  CBAvistaCadTipoReceita.Enabled := True;
  CBCondicionalCadTipoReceita.Enabled := True;
  CBStatusCadTipoReceita.Enabled := True;
  EdtDataCadTipoReceita.Enabled := False;
end;

procedure TFCadTipoReceita.LimpaCampos;
begin
  EdtDescricaoCadTipoReceita.Text := EmptyStr;
  CBGeraContaCadTipoReceita.ItemIndex := -1;
  CBAvistaCadTipoReceita.ItemIndex := -1;
  CBCondicionalCadTipoReceita.ItemIndex := -1;
  CBStatusCadTipoReceita.ItemIndex := 0;
  EdtDataCadTipoReceita.Text := EmptyStr;;
end;

procedure TFCadTipoReceita.ListViewCadTipoReceitaButtonClick
  (const Sender: TObject; const AItem: TListItem;
  const AObject: TListItemSimpleControl);
begin
  inherited;
{$IFDEF MSWINDOWS}
  ListBoxItem1.Height := 44;
  ListBoxItem2.Height := 44;
  ListBoxItem3.Height := 44;
  ListBoxItem4.Height := 44;
  ListBoxItem5.Height := 44;
  ListBoxItem6.Height := 44;
{$ENDIF}
  EdtDescricaoCadTipoReceita.Text :=
    DM.FDQConsFormaPagdescricao_forma_pag.AsString;

  if DM.FDQConsFormaPaggeraconta_forma_pag.AsString = 'S' then
    CBGeraContaCadTipoReceita.ItemIndex := 0
  else if DM.FDQConsFormaPaggeraconta_forma_pag.AsString = 'N' then
    CBGeraContaCadTipoReceita.ItemIndex := 1;

  if DM.FDQConsFormaPagavista_forma_pag.AsString = 'S' then
    CBAvistaCadTipoReceita.ItemIndex := 0
  else if DM.FDQConsFormaPagavista_forma_pag.AsString = 'N' then
    CBAvistaCadTipoReceita.ItemIndex := 1;

  if DM.FDQConsFormaPagcondicional_forma_pag.AsString = 'S' then
    CBCondicionalCadTipoReceita.ItemIndex := 0
  else if DM.FDQConsFormaPagcondicional_forma_pag.AsString = 'N' then
    CBCondicionalCadTipoReceita.ItemIndex := 1;

  if DM.FDQConsFormaPagstatus.AsString = 'A' then
    CBStatusCadTipoReceita.ItemIndex := 0
  else if DM.FDQConsFormaPagstatus.AsString = 'I' then
    CBStatusCadTipoReceita.ItemIndex := 1;

  EdtDataCadTipoReceita.Text := DM.FDQConsFormaPagdataCad.AsString;

  DesabilitaCampos;
  MudarAbaModelo(TbItemedicao, Sender);
end;

procedure TFCadTipoReceita.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  DM.FDQConsFormaPag.Active := False;
  EditFiltroNomeCadTipoReceita.Text := EmptyStr;
  EditFiltroCodCadTipoReceita.Text := EmptyStr;
  Close;
end;

procedure TFCadTipoReceita.SpdBNovoCadTipoReceitaClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  ListBoxItem1.Height := 44;
  ListBoxItem2.Height := 44;
  ListBoxItem3.Height := 44;
  ListBoxItem4.Height := 44;
  ListBoxItem5.Height := 44;
  ListBoxItem6.Height := 44;
{$ENDIF}
  crud := 'inserir';
  DM.FDQConsFormaPag.Active := False;
  lblTituloEdicaoCadTipoReceita.Text := 'Novo Cadastro';
  LimpaCampos;
  HabilitaCampos;
  MudarAbaModelo(TbItemedicao, Sender);
  EdtDescricaoCadTipoReceita.SetFocus;
end;

end.
