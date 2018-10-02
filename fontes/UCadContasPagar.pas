unit UCadContasPagar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.ListBox, FMX.DateTimeCtrls, MultiDetailAppearanceU, Data.Bind.EngExt,
  FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, FMX.VirtualKeyboard, System.Math,
  FMX.Platform, FMX.Edit;

type
  TFCadContasPagar = class(TFCadModelo)
    VertScrollBox1: TVertScrollBox;
    ToolBar1: TToolBar;
    TbItemBaixa: TTabItem;
    LytFiltroDataVencContasReceber: TLayout;
    Label2: TLabel;
    Label3: TLabel;
    DateEdtFiltroVencInicialContasPagar: TDateEdit;
    Label4: TLabel;
    DateEdtFiltroVencFinalContasPagar: TDateEdit;
    LytFiltroClienteContasReceber: TLayout;
    Label1: TLabel;
    ComboBoxFiltroFornContasPagar: TComboBox;
    ListViewCadContasPagar: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    ListBox1: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ListBoxItem5: TListBoxItem;
    ListBoxItem6: TListBoxItem;
    ListBoxItem7: TListBoxItem;
    ListBoxItem8: TListBoxItem;
    ListBoxItem9: TListBoxItem;
    ListBoxItem10: TListBoxItem;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    LblTituloEdicao: TLabel;
    SpdBVoltarEdicao: TSpeedButton;
    SpdBEditar: TSpeedButton;
    SpdBConfirmar: TSpeedButton;
    ComboBoxForn: TComboBox;
    ComboBoxDespesa: TComboBox;
    EdtNumDoc: TEdit;
    EdtValorDoc: TEdit;
    EdtValorDesc: TEdit;
    EdtValorAcresc: TEdit;
    EdtValorPago: TEdit;
    EdtValorSaldo: TEdit;
    DateEditDataVenc: TDateEdit;
    EdtDataCad: TEdit;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    SpdBNovo: TSpeedButton;
    procedure ComboBoxFiltroFornContasPagarEnter(Sender: TObject);
    procedure ComboBoxFiltroFornContasPagarClosePopup(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure DateEdtFiltroVencFinalContasPagarClosePicker(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBoxFornEnter(Sender: TObject);
    procedure ComboBoxDespesaEnter(Sender: TObject);
    procedure SpdBNovoClick(Sender: TObject);
    procedure EdtValorDescTyping(Sender: TObject);
    procedure EdtValorAcrescTyping(Sender: TObject);
    procedure EdtValorDocTyping(Sender: TObject);
    procedure EdtNumDocKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure EdtValorDocKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure EdtValorDescKeyUp(Sender: TObject; var Key: Word;
      var KeyChar: Char; Shift: TShiftState);
    procedure SpdBEditarClick(Sender: TObject);
    procedure SpdBConfirmarClick(Sender: TObject);
    procedure SpdBVoltarEdicaoClick(Sender: TObject);
  private
    filtroPag: string;

    { Private declarations }

    procedure HabilitaCampos;
    procedure DesabilitaCampos;
    procedure LimpaCampos;
  public
    { Public declarations }
  end;

var
  FCadContasPagar: TFCadContasPagar;

implementation

{$R *.fmx}

uses UDM, UPrincipal;

procedure TFCadContasPagar.ComboBoxDespesaEnter(Sender: TObject);
begin
  inherited;
  DM.FDQConsDespesas.Active := False;
  DM.FDQConsDespesas.Close;
  DM.FDQConsDespesas.Open();
  DM.FDQConsDespesas.Active := True;
end;

procedure TFCadContasPagar.ComboBoxFiltroFornContasPagarClosePopup
  (Sender: TObject);
begin
  inherited;
  filtroPag := 'forn';

  if ComboBoxFiltroFornContasPagar.Selected.Text = '*Todos*' then
  begin
    DM.FDQConsContaPagar.Active := False;
    DM.FDQConsContaPagar.Close;
    DM.FDQConsContaPagar.ParamByName('PFornContaPagar2').Value := '%';
    DM.FDQConsContaPagar.ParamByName('PFornContaPagar1').Value := Null;
    DM.FDQConsContaPagar.ParamByName('PDataVencInicio').Value := Null;
    DM.FDQConsContaPagar.ParamByName('PDataVencFinal').Value := Null;
    DM.FDQConsContaPagar.Open();
    DM.FDQConsContaPagar.Active := True;
  end
  else
  begin
    DM.FDQConsContaPagar.Active := False;
    DM.FDQConsContaPagar.Close;
    DM.FDQConsContaPagar.ParamByName('PFornContaPagar2').Value :=
      ComboBoxFiltroFornContasPagar.Selected.Text;
    DM.FDQConsContaPagar.ParamByName('PFornContaPagar1').Value := Null;
    DM.FDQConsContaPagar.ParamByName('PDataVencInicio').Value := Null;
    DM.FDQConsContaPagar.ParamByName('PDataVencFinal').Value := Null;
    DM.FDQConsContaPagar.Open();
    DM.FDQConsContaPagar.Active := True;
  end;

end;

procedure TFCadContasPagar.ComboBoxFiltroFornContasPagarEnter(Sender: TObject);
begin
  inherited;
  DM.FDQConsFornecedor.Active := False;
  DM.FDQConsFornecedor.Close;
  DM.FDQConsFornecedor.ParamByName('PIdForn').Value := Null;
  DM.FDQConsFornecedor.ParamByName('PNomeForn').Value := '%';
  DM.FDQConsFornecedor.Open();
  DM.FDQConsFornecedor.Active := True;

  ComboBoxFiltroFornContasPagar.Items.Add('*Todos*');
  ComboBoxFiltroFornContasPagar.Items.Move
    (ComboBoxFiltroFornContasPagar.Items.Count - 1, 0);
end;

procedure TFCadContasPagar.ComboBoxFornEnter(Sender: TObject);
begin
  inherited;
  DM.FDQFornecedor.Active := False;
  DM.FDQFornecedor.Close;
  DM.FDQFornecedor.Open();
  DM.FDQFornecedor.Active := True;
end;

procedure TFCadContasPagar.DateEdtFiltroVencFinalContasPagarClosePicker
  (Sender: TObject);
var
  dataVencInicio, dataVencFinal: TDateTime;
begin
  inherited;
  filtroPag := 'VENC';

  dataVencInicio := DateEdtFiltroVencInicialContasPagar.DateTime;
  dataVencFinal := DateEdtFiltroVencFinalContasPagar.DateTime;

  if dataVencInicio > dataVencFinal then
  begin
    ShowMessage('Processo Cancelado!' + #13#10 +
      'A data inicial não pode ser maior que a data final.');
  end
  else if ComboBoxFiltroFornContasPagar.Selected.Text = '*Todos*' then
  begin
    DM.FDQConsContaPagar.Active := False;
    DM.FDQConsContaPagar.Close;
    DM.FDQConsContaPagar.ParamByName('PFornContaPagar2').Value := Null;
    DM.FDQConsContaPagar.ParamByName('PFornContaPagar1').Value := '%';
    DM.FDQConsContaPagar.ParamByName('PDataVencInicio').Value := dataVencInicio;
    DM.FDQConsContaPagar.ParamByName('PDataVencFinal').Value := dataVencFinal;
    DM.FDQConsContaPagar.Open();
    DM.FDQConsContaPagar.Active := True;
  end
  else
  begin
    DM.FDQConsContaPagar.Active := False;
    DM.FDQConsContaPagar.Close;
    DM.FDQConsContaPagar.ParamByName('PFornContaPagar2').Value := Null;
    DM.FDQConsContaPagar.ParamByName('PFornContaPagar1').Value :=
      ComboBoxFiltroFornContasPagar.Selected.Text;
    DM.FDQConsContaPagar.ParamByName('PDataVencInicio').Value := dataVencInicio;
    DM.FDQConsContaPagar.ParamByName('PDataVencFinal').Value := dataVencFinal;
    DM.FDQConsContaPagar.Open();
    DM.FDQConsContaPagar.Active := True;
  end;
end;

procedure TFCadContasPagar.DesabilitaCampos;
begin
SpdBEditar.Visible := True;
SpdBConfirmar.Visible := False;
ComboBoxForn.Enabled := False;
ComboBoxDespesa.Enabled := False;
EdtNumDoc.Enabled := False;
EdtValorDoc.Enabled := False;
EdtValorDesc.Enabled := False;
EdtValorAcresc.Enabled := False;
EdtValorPago.Enabled := False;
EdtValorSaldo.Enabled := False;
DateEditDataVenc.Enabled := False;
EdtDataCad.Enabled := False;
end;

procedure TFCadContasPagar.EdtNumDocKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtValorDoc.SetFocus;

end;

procedure TFCadContasPagar.EdtValorAcrescTyping(Sender: TObject);
var
  result: Double;
begin
  inherited;
  if not EdtValorAcresc.Text.IsEmpty then
  begin
    result := StrToFloat(EdtValorDoc.Text) + StrToFloat(EdtValorAcresc.Text);
    EdtValorSaldo.Text := FloatToStr(result);
    EdtValorDesc.Text := EmptyStr;
  end
  else
  begin
    EdtValorSaldo.Text := EdtValorDoc.Text;
  end;
end;

procedure TFCadContasPagar.EdtValorDescKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtValorAcresc.SetFocus;
end;

procedure TFCadContasPagar.EdtValorDescTyping(Sender: TObject);
var
  result: Double;
begin
  inherited;
  if not EdtValorDesc.Text.IsEmpty then
  begin
    if StrToFloat(EdtValorDesc.Text) >= StrToFloat(EdtValorDoc.Text) then
    begin
      ShowMessage('Processo Cancelado!' + #13#10 +
        'Valor de desconto não pode ser maior ou igual ao valor do doc.');
      EdtValorDesc.Text := EmptyStr;
    end
    else
    begin
      result := StrToFloat(EdtValorDoc.Text) - StrToFloat(EdtValorDesc.Text);
      EdtValorSaldo.Text := FloatToStr(result);
      EdtValorAcresc.Text := EmptyStr;
    end;
  end
  else
  begin
    EdtValorSaldo.Text := EdtValorDoc.Text;
  end;
end;

procedure TFCadContasPagar.EdtValorDocKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
begin
  inherited;
  if Key = vkReturn then
    EdtValorDesc.SetFocus;
end;

procedure TFCadContasPagar.EdtValorDocTyping(Sender: TObject);
begin
  inherited;
  if not EdtValorDoc.Text.IsEmpty then
  begin
    if not EdtValorDesc.Text.IsEmpty then
    begin
      EdtValorDescTyping(Sender);
    end
    else if not EdtValorAcresc.Text.IsEmpty then
    begin
      EdtValorAcrescTyping(Sender);
    end
    else
    begin
      EdtValorSaldo.Text := EdtValorDoc.Text;
    end;

  end;
end;

procedure TFCadContasPagar.FormCreate(Sender: TObject);
begin
  inherited;
  ComboBoxFiltroFornContasPagarEnter(Sender);
  ComboBoxFiltroFornContasPagar.ItemIndex := 0;
  DateEdtFiltroVencInicialContasPagar.Date := Date;
  DateEdtFiltroVencFinalContasPagar.Date := Date;
end;

procedure TFCadContasPagar.FormKeyUp(Sender: TObject; var Key: Word;
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
      else if TbControlCadModelo.ActiveTab = TbItemedicao then
      begin
        // SpBVoltarEdicaoClick(Sender);
      end
      else if TbControlCadModelo.ActiveTab = TbItemBaixa then
      begin
        // SpBVoltarBaixaClick(Sender);
      end;
    end;
  end;
end;

procedure TFCadContasPagar.HabilitaCampos;
begin
SpdBEditar.Visible := False;
SpdBConfirmar.Visible := True;
ComboBoxForn.Enabled := True;
ComboBoxDespesa.Enabled := True;
EdtNumDoc.Enabled := True;
EdtValorDoc.Enabled := True;
EdtValorDesc.Enabled := True;
EdtValorAcresc.Enabled := True;
EdtValorPago.Enabled := False;
EdtValorSaldo.Enabled := False;
DateEditDataVenc.Enabled := True;
EdtDataCad.Enabled := False;
end;

procedure TFCadContasPagar.LimpaCampos;
begin
ComboBoxForn.ItemIndex := -1;
ComboBoxDespesa.ItemIndex := -1;
EdtNumDoc.Text := EmptyStr;
EdtValorDoc.Text := EmptyStr;
EdtValorDesc.Text := EmptyStr;
EdtValorAcresc.Text := EmptyStr;
EdtValorPago.Text := EmptyStr;
EdtValorSaldo.Text := EmptyStr;
DateEditDataVenc.Date := Now;
EdtDataCad.Text := EmptyStr;
end;

procedure TFCadContasPagar.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  DM.FDQConsContaPagar.Active := False;
  DM.FDQConsFornecedor.Active := False;
  Close;
end;

procedure TFCadContasPagar.SpdBConfirmarClick(Sender: TObject);
begin
  inherited;
  //LimpaCampos;
  DesabilitaCampos;
end;

procedure TFCadContasPagar.SpdBEditarClick(Sender: TObject);
begin
  inherited;
  HabilitaCampos;
end;

procedure TFCadContasPagar.SpdBNovoClick(Sender: TObject);
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
  ListBoxItem10.Height := 44;
{$ENDIF}
  LimpaCampos;
  HabilitaCampos;
  MudarAbaModelo(TbItemedicao, Sender);
end;

procedure TFCadContasPagar.SpdBVoltarEdicaoClick(Sender: TObject);
begin
  inherited;
  MudarAbaModelo(TbItemListagem, Sender);
end;

end.
