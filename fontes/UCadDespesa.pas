unit UCadDespesa;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, MultiDetailAppearanceU,
  FMX.ListView, FMX.Edit, System.Rtti, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, FMX.ListBox, FMX.VirtualKeyboard, System.Math,
  FMX.Platform, FMX.DateTimeCtrls, FMX.Colors, FMX.Effects, FMX.Objects;

type
  TFCadDespesa = class(TFCadModelo)
    Layout1: TLayout;
    EditFiltroNomeCadDespesa: TEdit;
    EditFiltroCodCadDespesa: TEdit;
    BtnFiltrarDespesa: TButton;
    ListViewCadDespesa: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    SpdBNovoCadDespesa: TSpeedButton;
    ToolBar1: TToolBar;
    lblTituloEdicaoCadDespesa: TLabel;
    SpBVoltarEdicaoCadDespesa: TSpeedButton;
    SpdBEditarCadDespesa: TSpeedButton;
    SpdBConfirmarCadDespesa: TSpeedButton;
    VertScrollBox1: TVertScrollBox;
    ListBoxEdicaoCadDespesa: TListBox;
    ListBoxItem1: TListBoxItem;
    LblDescricaoCadDespesa: TLabel;
    EdtDescricaoCadDespesa: TEdit;
    ListBoxItem2: TListBoxItem;
    LblStatusCadDespesa: TLabel;
    CbStatusCadDespesa: TComboBox;
    ListBoxItem3: TListBoxItem;
    LblDataCadDespesa: TLabel;
    EdtDataCadDespesa: TEdit;
    procedure EditFiltroNomeCadDespesaTyping(Sender: TObject);
    procedure EditFiltroCodCadDespesaTyping(Sender: TObject);
    procedure BtnFiltrarDespesaClick(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure SpdBNovoCadDespesaClick(Sender: TObject);
    procedure SpdBEditarCadDespesaClick(Sender: TObject);
    procedure ListViewCadDespesaButtonClick(const Sender: TObject;
      const AItem: TListItem; const AObject: TListItemSimpleControl);
    procedure SpdBConfirmarCadDespesaClick(Sender: TObject);
    procedure SpBVoltarEdicaoCadDespesaClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure EditFiltroNomeCadDespesaClick(Sender: TObject);
    procedure EditFiltroCodCadDespesaClick(Sender: TObject);
    procedure EdtDescricaoCadDespesaClick(Sender: TObject);
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
  FCadDespesa: TFCadDespesa;

implementation

{$R *.fmx}

uses UAuxiliar, UDM, UPrincipal, FGX.Toasts, FGX.Graphics;

procedure TFCadDespesa.BtnFiltrarDespesaClick(Sender: TObject);
begin
  inherited;
  EditFiltroCodCadDespesa.Text := EmptyStr;
  EditFiltroNomeCadDespesa.Text := EmptyStr;
  DM.FDQConsDespesas.Active := False;
  DM.FDQConsDespesas.Close;
  DM.FDQConsDespesas.ParamByName('PDescricaoDespesa').Value := '%';
  DM.FDQConsDespesas.ParamByName('PIdDespesa').Value := Null;
  DM.FDQConsDespesas.Open();
  DM.FDQConsDespesas.Active := True;
end;

procedure TFCadDespesa.DesabilitaCampos;
begin
  EdtDescricaoCadDespesa.Enabled := False;
  CbStatusCadDespesa.Enabled := False;
  EdtDataCadDespesa.Enabled := False;
  SpdBEditarCadDespesa.Visible := True;
  SpdBConfirmarCadDespesa.Visible := False;
end;

procedure TFCadDespesa.EditFiltroCodCadDespesaClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroCodCadDespesa);
end;

procedure TFCadDespesa.EditFiltroCodCadDespesaTyping(Sender: TObject);
begin
  inherited;
  EditFiltroNomeCadDespesa.Text := EmptyStr;
  DM.FDQConsDespesas.Active := False;
  DM.FDQConsDespesas.Close;
  if EditFiltroCodCadDespesa.Text.IsEmpty then
  begin
    DM.FDQConsDespesas.ParamByName('PDescricaoDespesa').Value := Null;
    DM.FDQConsDespesas.ParamByName('PIdDespesa').Value := Null;
  end
  else
  begin
    DM.FDQConsDespesas.ParamByName('PDescricaoDespesa').Value := Null;
    DM.FDQConsDespesas.ParamByName('PIdDespesa').Value :=
      EditFiltroCodCadDespesa.Text;
  end;
  DM.FDQConsDespesas.Open();
  DM.FDQConsDespesas.Active := True;
end;

procedure TFCadDespesa.EditFiltroNomeCadDespesaClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EditFiltroNomeCadDespesa);
end;

procedure TFCadDespesa.EditFiltroNomeCadDespesaTyping(Sender: TObject);
begin
  inherited;
  EditFiltroCodCadDespesa.Text := EmptyStr;
  DM.FDQConsDespesas.Active := False;
  DM.FDQConsDespesas.Close;
  if EditFiltroNomeCadDespesa.Text.IsEmpty then
  begin
    DM.FDQConsDespesas.ParamByName('PDescricaoDespesa').Value := Null;
    DM.FDQConsDespesas.ParamByName('PIdDespesa').Value := Null;
  end
  else
  begin
    DM.FDQConsDespesas.ParamByName('PDescricaoDespesa').Value :=
      '%' + EditFiltroNomeCadDespesa.Text + '%';
    DM.FDQConsDespesas.ParamByName('PIdDespesa').Value := Null;
  end;
  DM.FDQConsDespesas.Open();
  DM.FDQConsDespesas.Active := True;

end;

procedure TFCadDespesa.EdtDescricaoCadDespesaClick(Sender: TObject);
begin
  inherited;
  MostrarTeclado(EdtDescricaoCadDespesa);
end;

procedure TFCadDespesa.FormCreate(Sender: TObject);
begin
  inherited;
  TbControlCadModelo.ActiveTab := TbItemListagem;
  TbControlCadModelo.TabPosition := TTabPosition.None;
end;

procedure TFCadDespesa.FormKeyUp(Sender: TObject; var Key: Word;
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
      // informar pra onde voltar

      if TbControlCadModelo.ActiveTab = TbItemListagem then
      begin
        SpBVoltarClick(Sender);
      end
      else
      begin
        SpBVoltarEdicaoCadDespesaClick(Sender);
      end;
    end;
  end;
end;

procedure TFCadDespesa.HabilitaCampos;
begin
  EdtDescricaoCadDespesa.Enabled := True;
  CbStatusCadDespesa.Enabled := True;
  EdtDataCadDespesa.Enabled := False;
  SpdBEditarCadDespesa.Visible := False;
  SpdBConfirmarCadDespesa.Visible := True;
end;

procedure TFCadDespesa.LimpaCampos;
begin
  EdtDescricaoCadDespesa.Text := EmptyStr;
  CbStatusCadDespesa.ItemIndex := 0;
  EdtDataCadDespesa.Text := EmptyStr;
end;

procedure TFCadDespesa.ListViewCadDespesaButtonClick(const Sender: TObject;
  const AItem: TListItem; const AObject: TListItemSimpleControl);
begin
  inherited;
  EdtDescricaoCadDespesa.Text := DM.FDQConsDespesasdescricao.AsString;
  if DM.FDQConsDespesasstatus.AsString = 'A' then
    CbStatusCadDespesa.ItemIndex := 0
  else if DM.FDQConsDespesasstatus.AsString = 'I' then
    CbStatusCadDespesa.ItemIndex := 1;
  EdtDataCadDespesa.Text := DM.FDQConsDespesasdataCad.AsString;
  DesabilitaCampos;
  MudarAbaModelo(TbItemedicao, Sender);

end;

procedure TFCadDespesa.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  DM.FDQConsDespesas.Active := False;
  EditFiltroNomeCadDespesa.Text := EmptyStr;
  EditFiltroCodCadDespesa.Text := EmptyStr;
  Close;
end;

procedure TFCadDespesa.SpBVoltarEdicaoCadDespesaClick(Sender: TObject);
begin
  inherited;
  DM.FDQConsDespesas.Active := False;
  EditFiltroNomeCadDespesa.Text := EmptyStr;
  EditFiltroCodCadDespesa.Text := EmptyStr;
  LimpaCampos;
  DesabilitaCampos;

  MudarAbaModelo(TbItemListagem, Sender);

  if (crud = 'inserir') or (crud = 'editar') then
    TfgToast.Show('Processo cancelado!');
end;

procedure TFCadDespesa.SpdBConfirmarCadDespesaClick(Sender: TObject);
var
  status, valida: string;
  Toast: TfgToast;
begin
  inherited;
  try
    valida := 'S';
    if (CbStatusCadDespesa.ItemIndex = -1) or
      (EdtDescricaoCadDespesa.Text.IsEmpty) then
    begin
      ShowMessage('Processo cancelado!' + #13#10 +
        'Campo obrigatório não informado!');
      valida := 'N';
    end
    else if CbStatusCadDespesa.ItemIndex = 0 then
      status := 'A'
    else if CbStatusCadDespesa.ItemIndex = 1 then
      status := 'I';

    if valida = 'S' then
    begin
      if crud = 'inserir' then
      begin
        DM.FDQCadDespesas.Close;
        DM.FDQCadDespesas.Open();
        DM.FDQCadDespesas.Append;
        DM.FDQCadDespesasdescricao.AsString := EdtDescricaoCadDespesa.Text;
        DM.FDQCadDespesasstatus.AsString := status;
        DM.FDQCadDespesasdataCad.AsDateTime := Now;
        DM.FDQCadDespesas.Post;

        DM.FDConnection1.CommitRetaining;
        EditFiltroNomeCadDespesa.Text := EmptyStr;
        EditFiltroCodCadDespesa.Text := EmptyStr;
        LimpaCampos;

        MudarAbaModelo(TbItemListagem, Sender);

        TfgToast.Show('Nova despesa cadastrada com sucesso!');
      end
      else if crud = 'editar' then
      begin
        DM.FDQAuxiliar.sql.Clear;

        DM.FDQAuxiliar.sql.Add('update tipo_despesa');
        DM.FDQAuxiliar.sql.Add(' set descricao = :Descri,');
        DM.FDQAuxiliar.sql.Add(' status = :Status');
        DM.FDQAuxiliar.sql.Add(' where id = :Id');

        DM.FDQAuxiliar.Params.ParamByName('Descri').AsString :=
          EdtDescricaoCadDespesa.Text;
        DM.FDQAuxiliar.Params.ParamByName('Status').AsString := status;
        DM.FDQAuxiliar.Params.ParamByName('Id').AsInteger :=
          DM.FDQConsDespesasid.AsInteger;

        DM.FDQAuxiliar.ExecSQL;

        DM.FDConnection1.CommitRetaining;
        DM.FDQConsDespesas.Active := False;
        EditFiltroNomeCadDespesa.Text := EmptyStr;
        EditFiltroCodCadDespesa.Text := EmptyStr;
        LimpaCampos;
        DesabilitaCampos;

        MudarAbaModelo(TbItemListagem, Sender);

        TfgToast.Show('Cadastro alterado com sucesso!');
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Erro!' + #13#10 + E.Message);
  end;

end;

procedure TFCadDespesa.SpdBEditarCadDespesaClick(Sender: TObject);
begin
  inherited;
  crud := 'editar';
  lblTituloEdicaoCadDespesa.Text := 'Editando';
  HabilitaCampos;
  EdtDescricaoCadDespesa.SetFocus;
end;

procedure TFCadDespesa.SpdBNovoCadDespesaClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  ListBoxItem1.Height := 44;
  ListBoxItem2.Height := 44;
  ListBoxItem3.Height := 44;
{$ENDIF}
  DM.FDQConsDespesas.Active := False;
  lblTituloEdicaoCadDespesa.Text := 'Novo Cadastro';
  crud := 'inserir';
  LimpaCampos;
  HabilitaCampos;
  MudarAbaModelo(TbItemedicao, Sender);
  EdtDescricaoCadDespesa.SetFocus;
end;

end.
