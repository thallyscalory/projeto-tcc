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
  Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  System.UIConsts;

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
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    CBEntraCaixaCadTipoReceita: TComboBox;
    CBContaPagarCadTipoReceita: TComboBox;
    CBContaReceberCadTipoReceita: TComboBox;
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
    procedure SpdBEditarCadTipoReceitaClick(Sender: TObject);
    procedure SpBVoltarEdicaoCadTipoReceitaClick(Sender: TObject);
    procedure SpdBConfirmarCadTipoReceitaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    crud: string;
    idFormaPag: Integer;

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
  CBEntraCaixaCadTipoReceita.Enabled := False;
  CBContaPagarCadTipoReceita.Enabled := False;
  CBContaReceberCadTipoReceita.Enabled := False;
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

procedure TFCadTipoReceita.FormCreate(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  ListBoxItem1.Height := 44;
  ListBoxItem2.Height := 44;
  ListBoxItem3.Height := 44;
  ListBoxItem4.Height := 44;
  ListBoxItem5.Height := 44;
  ListBoxItem6.Height := 44;
  ListBoxItem7.Height := 44;
  ListBoxItem8.Height := 44;
  ListBoxItem9.Height := 44;
{$ENDIF}
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
  CBEntraCaixaCadTipoReceita.Enabled := True;
  CBContaPagarCadTipoReceita.Enabled := True;
  CBContaReceberCadTipoReceita.Enabled := True;
  EdtDataCadTipoReceita.Enabled := False;
end;

procedure TFCadTipoReceita.LimpaCampos;
begin
  EdtDescricaoCadTipoReceita.Text := EmptyStr;
  CBGeraContaCadTipoReceita.ItemIndex := -1;
  CBAvistaCadTipoReceita.ItemIndex := -1;
  CBCondicionalCadTipoReceita.ItemIndex := -1;
  CBStatusCadTipoReceita.ItemIndex := 0;
  CBEntraCaixaCadTipoReceita.ItemIndex := -1;
  CBContaPagarCadTipoReceita.ItemIndex := -1;
  CBContaReceberCadTipoReceita.ItemIndex := -1;
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
  ListBoxItem7.Height := 44;
  ListBoxItem8.Height := 44;
  ListBoxItem9.Height := 44;
{$ENDIF}
  idFormaPag := DM.FDQConsFormaPagid_forma_pag.AsInteger;

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

  if DM.FDQConsFormaPagentraCaixa.AsString = 'S' then
    CBEntraCaixaCadTipoReceita.ItemIndex := 0
  else if DM.FDQConsFormaPagentraCaixa.AsString = 'N' then
    CBEntraCaixaCadTipoReceita.ItemIndex := 1;

  if DM.FDQConsFormaPagpagar.AsString = 'S' then
    CBContaPagarCadTipoReceita.ItemIndex := 0
  else if DM.FDQConsFormaPagpagar.AsString = 'N' then
    CBContaPagarCadTipoReceita.ItemIndex := 1;

  if DM.FDQConsFormaPagreceber.AsString = 'S' then
    CBContaReceberCadTipoReceita.ItemIndex := 0
  else if DM.FDQConsFormaPagreceber.AsString = 'N' then
    CBContaReceberCadTipoReceita.ItemIndex := 1;

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

procedure TFCadTipoReceita.SpBVoltarEdicaoCadTipoReceitaClick(Sender: TObject);
begin
  inherited;
  MudarAbaModelo(TbItemListagem, Sender);
  LimpaCampos;
end;

procedure TFCadTipoReceita.SpdBConfirmarCadTipoReceitaClick(Sender: TObject);
var
  maxId: Integer;
begin
  inherited;
  try
    DM.FDQConsFormaPag.Active := False;
    if crud = 'inserir' then
    begin
      DM.FDQCadFormaPag.Close;
      DM.FDQCadFormaPag.Open('select * from forma_pag');
      DM.FDQCadFormaPag.Last;
      maxId := DM.FDQCadFormaPagid_forma_pag.AsInteger + 1;

      DM.FDQCadFormaPag.Append;
      DM.FDQCadFormaPagid_forma_pag.AsInteger := maxId;
      DM.FDQCadFormaPagdescricao_forma_pag.AsString :=
        EdtDescricaoCadTipoReceita.Text;

      if CBGeraContaCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPaggeraconta_forma_pag.AsString := 'S'
      else if CBGeraContaCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPaggeraconta_forma_pag.AsString := 'N';

      if CBAvistaCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPagavista_forma_pag.AsString := 'S'
      else if CBAvistaCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPagavista_forma_pag.AsString := 'N';

      if CBCondicionalCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPagcondicional_forma_pag.AsString := 'S'
      else if CBCondicionalCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPagcondicional_forma_pag.AsString := 'N';

      if CBStatusCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPagstatus.AsString := 'A'
      else if CBStatusCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPagstatus.AsString := 'I';

      if CBEntraCaixaCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPagentraCaixa.AsString := 'S'
      else if CBEntraCaixaCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPagentraCaixa.AsString := 'N';

      if CBContaPagarCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPagpagar.AsString := 'S'
      else if CBContaPagarCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPagpagar.AsString := 'N';

      if CBContaReceberCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPagreceber.AsString := 'S'
      else if CBContaReceberCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPagreceber.AsString := 'N';

      DM.FDQCadFormaPagdataCad.AsDateTime := Now;
      DM.FDQCadFormaPag.Post;
    end
    else if crud = 'editar' then
    begin
      DM.FDQCadFormaPag.Close;
      DM.FDQCadFormaPag.Open('select * from forma_pag');
      DM.FDQCadFormaPag.SQL.Clear;
      DM.FDQCadFormaPag.SQL.Add('update forma_pag set');
      DM.FDQCadFormaPag.SQL.Add(' descricao_forma_pag = :descricao');
      DM.FDQCadFormaPag.SQL.Add(', geraconta_forma_pag = :geraconta');
      DM.FDQCadFormaPag.SQL.Add(', avista_forma_pag = :avista');
      DM.FDQCadFormaPag.SQL.Add(', condicional_forma_pag = :condicional');
      DM.FDQCadFormaPag.SQL.Add(', status = :status');
      DM.FDQCadFormaPag.SQL.Add(', entraCaixa = :entraCaixa');
      DM.FDQCadFormaPag.SQL.Add(', pagar = :pagar');
      DM.FDQCadFormaPag.SQL.Add(', receber = :receber');
      DM.FDQCadFormaPag.SQL.Add(' where id_forma_pag = :id');

      DM.FDQCadFormaPag.Params.ParamByName('descricao').AsString :=
        EdtDescricaoCadTipoReceita.Text;

      if CBGeraContaCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPag.Params.ParamByName('geraconta').AsString := 'S'
      else if CBGeraContaCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPag.Params.ParamByName('geraconta').AsString := 'N';

      if CBAvistaCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPag.Params.ParamByName('avista').AsString := 'S'
      else if CBAvistaCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPag.Params.ParamByName('avista').AsString := 'N';

      if CBCondicionalCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPag.Params.ParamByName('condicional').AsString := 'S'
      else if CBCondicionalCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPag.Params.ParamByName('condicional').AsString := 'N';

      if CBStatusCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPag.Params.ParamByName('status').AsString := 'A'
      else if CBStatusCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPag.Params.ParamByName('status').AsString := 'I';

      if CBEntraCaixaCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPag.Params.ParamByName('entraCaixa').AsString := 'S'
      else if CBEntraCaixaCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPag.Params.ParamByName('entraCaixa').AsString := 'N';

      if CBContaPagarCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPag.Params.ParamByName('pagar').AsString := 'S'
      else if CBContaPagarCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPag.Params.ParamByName('pagar').AsString := 'N';

      if CBContaReceberCadTipoReceita.ItemIndex = 0 then
        DM.FDQCadFormaPag.Params.ParamByName('receber').AsString := 'S'
      else if CBContaReceberCadTipoReceita.ItemIndex = 1 then
        DM.FDQCadFormaPag.Params.ParamByName('receber').AsString := 'N';

      DM.FDQCadFormaPag.Params.ParamByName('id').AsInteger := idFormaPag;
      DM.FDQCadFormaPag.ExecSQL;
    end;

    MudarAbaModelo(TbItemListagem, Sender);
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;
end;

procedure TFCadTipoReceita.SpdBEditarCadTipoReceitaClick(Sender: TObject);
begin
  inherited;
  crud := 'editar';
  HabilitaCampos;
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
