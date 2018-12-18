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
    EdtValorSaldo: TEdit;
    DateEditDataVenc: TDateEdit;
    EdtDataCad: TEdit;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    BindSourceDB4: TBindSourceDB;
    LinkListControlToField4: TLinkListControlToField;
    SpdBNovo: TSpeedButton;
    EdtValorPago: TEdit;
    BtnBaixarContaPagar: TButton;
    ToolBar2: TToolBar;
    LblTituloContasPagarBaixa: TLabel;
    SpdBVoltarContasPagarBaixa: TSpeedButton;
    SpdBConfirmaContasPagarBaixa: TSpeedButton;
    VertScrollBox2: TVertScrollBox;
    ListBoxbaixaContasReceberEdicao: TListBox;
    ListBoxItem11: TListBoxItem;
    LblVlSaldoContasPagarBaixa: TLabel;
    EditValorSaldoBaixa: TEdit;
    ListBoxItem12: TListBoxItem;
    LblAcrescimoMoedaContasPagarBaixa: TLabel;
    EdtAcrescimoBaixa: TEdit;
    ListBoxItem13: TListBoxItem;
    LblDescMoedaContasPagarBaixa: TLabel;
    EdtDescontoBaixa: TEdit;
    ListBoxItem14: TListBoxItem;
    LblVlTotalContasPagarBaixa: TLabel;
    EdtValorPagarBaixa: TEdit;
    ListBoxItem15: TListBoxItem;
    LblTipoReceitaContasPagarBaixa: TLabel;
    ComboBoxTipoReceita: TComboBox;
    BindSourceDB5: TBindSourceDB;
    LinkListControlToField5: TLinkListControlToField;
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
    procedure ListViewCadContasPagarItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure EdtValorPagoTyping(Sender: TObject);
    procedure BtnBaixarContaPagarClick(Sender: TObject);
    procedure ComboBoxTipoReceitaEnter(Sender: TObject);
    procedure ComboBoxTipoReceitaClosePopup(Sender: TObject);
    procedure SpdBConfirmaContasPagarBaixaClick(Sender: TObject);
    procedure SpdBVoltarContasPagarBaixaClick(Sender: TObject);
  private
    saldoContasPagar, idContasPagar, idFornContasPagar: array of string;
    tamanhoArray, contadorArray, controleCheckmark, nParc: Integer;
    saldoTotal, vlDoc, VlSaldo, vlMarc: Double;
    filtro, limpaArray, fornDiferente, filtroPag, crud, marcadoBaixa: string;

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

procedure TFCadContasPagar.BtnBaixarContaPagarClick(Sender: TObject);
var
  I, J: Integer;
begin
  inherited;
{$IFDEF MSWINDOWS}
  ListBoxItem11.Height := 44;
  ListBoxItem12.Height := 44;
  ListBoxItem13.Height := 44;
  ListBoxItem14.Height := 44;
  ListBoxItem15.Height := 44;
{$ENDIF}

  saldoTotal := 0;
  for I := 0 to contadorArray - 1 do
  begin
    if not saldoContasPagar[I].IsEmpty then
      saldoTotal := saldoTotal + StrToFloat(saldoContasPagar[I]);
  end;

  fornDiferente := 'N';
  for I := 0 to contadorArray - 1 do
  begin
    for J := 1 to contadorArray - 1 do
    begin
      if not idFornContasPagar[I].IsEmpty and not idFornContasPagar[J].IsEmpty
      then
      begin
        if idFornContasPagar[I] <> idFornContasPagar[J] then
        begin
          fornDiferente := 'S';
          Break
        end;
      end;
    end;
    if fornDiferente = 'S' then
    begin
      EdtAcrescimoBaixa.Enabled := False;
      EdtDescontoBaixa.Enabled := False;

      Break
    end;
  end;

  if fornDiferente = 'N' then
  begin
    EdtDescontoBaixa.Enabled := True;
    EdtAcrescimoBaixa.Enabled := True;
  end;

  EdtDescontoBaixa.Text := EmptyStr;
  EdtAcrescimoBaixa.Text := EmptyStr;
  EditValorSaldoBaixa.Text := FloatToStr(saldoTotal);
  EdtValorPagarBaixa.Text := FloatToStr(saldoTotal);

  SpdBConfirmaContasPagarBaixa.Visible := False;

  MudarAbaModelo(TbItemBaixa, Sender);
end;

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
  filtroPag := 'Forn';

  SetLength(saldoContasPagar, 0);
  SetLength(idContasPagar, 0);
  SetLength(idFornContasPagar, 0);
  limpaArray := 'S';

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

procedure TFCadContasPagar.ComboBoxTipoReceitaClosePopup(Sender: TObject);
begin
  inherited;
  SpdBConfirmaContasPagarBaixa.Visible := True;
end;

procedure TFCadContasPagar.ComboBoxTipoReceitaEnter(Sender: TObject);
begin
  inherited;
  DM.FDQConsAvistaFormaPag.Active := False;
  DM.FDQConsAvistaFormaPag.Close;
  DM.FDQConsAvistaFormaPag.Open();
  DM.FDQConsAvistaFormaPag.Active := True;
end;

procedure TFCadContasPagar.DateEdtFiltroVencFinalContasPagarClosePicker
  (Sender: TObject);
var
  dataVencInicio, dataVencFinal: TDateTime;
begin
  inherited;
  filtroPag := 'VENC';

  SetLength(saldoContasPagar, 0);
  SetLength(idContasPagar, 0);
  SetLength(idFornContasPagar, 0);
  limpaArray := 'S';

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
    if not EdtValorPago.Text.IsEmpty then
    begin
      result := (StrToFloat(EdtValorDoc.Text) + StrToFloat(EdtValorAcresc.Text))
        - StrToFloat(EdtValorPago.Text);
      EdtValorSaldo.Text := FloatToStr(result);
      EdtValorDesc.Text := EmptyStr;
    end
    else
    begin
      result := StrToFloat(EdtValorDoc.Text) + StrToFloat(EdtValorAcresc.Text);
      EdtValorSaldo.Text := FloatToStr(result);
      EdtValorDesc.Text := EmptyStr;
    end;
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
      if not EdtValorPago.Text.IsEmpty then
      begin
        result := (StrToFloat(EdtValorDoc.Text) - StrToFloat(EdtValorPago.Text))
          - StrToFloat(EdtValorDesc.Text);
        if result < 0 then
        begin
          ShowMessage('Processo Cancelado!' + #13#10 +
            'Saldo não pode ser negativo!');
          EdtValorDesc.Text := EmptyStr;
          EdtValorPago.Text := EmptyStr;
          EdtValorDescTyping(Sender);
        end
        else
        begin
          EdtValorSaldo.Text := FloatToStr(result);
          EdtValorAcresc.Text := EmptyStr;
        end;
      end
      else
      begin
        result := StrToFloat(EdtValorDoc.Text) - StrToFloat(EdtValorDesc.Text);
        EdtValorSaldo.Text := FloatToStr(result);
        EdtValorAcresc.Text := EmptyStr;
      end;
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

procedure TFCadContasPagar.EdtValorPagoTyping(Sender: TObject);
var
  result: Double;
begin
  inherited;
  if not EdtValorPago.Text.IsEmpty then
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
      result := StrToFloat(EdtValorDoc.Text) - StrToFloat(EdtValorPago.Text);
      if result < 0 then
      begin
        ShowMessage('Processo Cancelado!' + #13#10 +
          'Saldo não pode ser negativo!');
        EdtValorPago.Text := EmptyStr;
        EdtValorPagoTyping(Sender);
      end
      else
      begin
        EdtValorSaldo.Text := FloatToStr(result);
      end;
    end;
  end
  else
  begin
    EdtValorSaldo.Text := EdtValorDoc.Text;
  end;
end;

procedure TFCadContasPagar.FormCreate(Sender: TObject);
begin
  inherited;
  marcadoBaixa := 'N';
  contadorArray := 0;
  controleCheckmark := 0;
  vlMarc := 0;
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

procedure TFCadContasPagar.ListViewCadContasPagarItemClickEx
  (const Sender: TObject; ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
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
  if ItemObject is TListItemAccessory then
  begin
    if marcadoBaixa = 'S' then
    begin
      ShowMessage('Operação Cancelada!' + #13#10 +
        'Contas selecionadas para baixa!');
    end
    else if marcadoBaixa = 'N' then
    begin
      ComboBoxFornEnter(Sender);
      ComboBoxForn.ItemIndex := DM.FDQConsContaPagarid_fornecedor.AsInteger - 1;
      ComboBoxDespesaEnter(Sender);
      ComboBoxDespesa.ItemIndex := DM.FDQConsContaPagarid_tipo_despesa.
        AsInteger - 1;
      EdtNumDoc.Text := DM.FDQConsContaPagarn_doc.AsString;
      EdtValorDoc.Text := DM.FDQConsContaPagarvalor_doc.AsString;
      EdtValorDesc.Text := DM.FDQConsContaPagarvalor_descmoeda.AsString;
      EdtValorAcresc.Text := DM.FDQConsContaPagarvalor_acresc.AsString;
      EdtValorPago.Text := DM.FDQConsContaPagarvalor_pago.AsString;
      EdtValorSaldo.Text := DM.FDQConsContaPagarvalor_saldo.AsString;
      DateEditDataVenc.Date := DM.FDQConsContaPagardata_venc.AsDateTime;
      EdtDataCad.Text := DM.FDQConsContaPagardata_cad.AsString;

      DesabilitaCampos;
      MudarAbaModelo(TbItemedicao, Sender);
    end;
  end
  else
  begin
    if limpaArray = 'S' then
    begin
      tamanhoArray := 0;
      contadorArray := 0;
      controleCheckmark := 0;
      limpaArray := 'N';
    end;

    if ListViewCadContasPagar.Items[ItemIndex].Detail.IsEmpty then
    begin
      marcadoBaixa := 'S';

      controleCheckmark := controleCheckmark + 1;
      tamanhoArray := tamanhoArray + 1;
      SetLength(saldoContasPagar, tamanhoArray);
      SetLength(idContasPagar, tamanhoArray);
      SetLength(idFornContasPagar, tamanhoArray);

      saldoContasPagar[contadorArray] := ListViewCadContasPagar.Items[ItemIndex]
        .Data[TMultiDetailAppearanceNames.Detail3].ToString;
      idContasPagar[contadorArray] := DM.FDQConsContaPagarid.AsString;
      idFornContasPagar[contadorArray] :=
        DM.FDQConsContaPagarid_fornecedor.AsString;
      ListViewCadContasPagar.Items[ItemIndex].Detail := IntToStr(contadorArray);

      vlMarc := vlMarc + StrToFloat(saldoContasPagar[contadorArray]);

      contadorArray := contadorArray + 1;

      BtnBaixarContaPagar.Visible := True;

      ListViewCadContasPagar.Items[ItemIndex].Objects.AccessoryObject.
        AccessoryType := TAccessoryType.Checkmark;
    end
    else
    begin
      controleCheckmark := controleCheckmark - 1;

      vlMarc := vlMarc - StrToFloat
        (saldoContasPagar[StrToInt(ListViewCadContasPagar.Items[ItemIndex]
        .Detail)]);

      saldoContasPagar[StrToInt(ListViewCadContasPagar.Items[ItemIndex].Detail)]
        := EmptyStr;
      idContasPagar[StrToInt(ListViewCadContasPagar.Items[ItemIndex].Detail)]
        := EmptyStr;
      idFornContasPagar[StrToInt(ListViewCadContasPagar.Items[ItemIndex].Detail)
        ] := EmptyStr;
      ListViewCadContasPagar.Items[ItemIndex].Detail := EmptyStr;

      ListViewCadContasPagar.Items[ItemIndex].Objects.AccessoryObject.
        AccessoryType := TAccessoryType.More;

      if controleCheckmark = 0 then
      begin
        BtnBaixarContaPagar.Visible := False;
        marcadoBaixa := 'N';
      end;
    end;
  end;

end;

procedure TFCadContasPagar.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  DM.FDQConsContaPagar.Active := False;
  DM.FDQConsFornecedor.Active := False;
  Close;
end;

procedure TFCadContasPagar.SpdBConfirmaContasPagarBaixaClick(Sender: TObject);
var
  valorTotal, valorPago, valorSaldo, valorDesc, ValorAcresc, valorBaixa: Double;
  I, maxIdBaixa, primeiro: Integer;
  Data: TDateTime;
  quitado, valida: string;
begin
  inherited;
  valida := 'S';
  primeiro := 0;
  for I := 0 to tamanhoArray - 1 do
  begin
    if not saldoContasPagar[I].IsEmpty then
    begin
      Break
    end;
    primeiro := primeiro + 1;
  end;

  if (EdtValorPagarBaixa.Text.IsEmpty) or (EdtValorPagarBaixa.Text = '0') or
    (EdtValorPagarBaixa.Text = '0,00') then
  begin
    ShowMessage('Processo cancelado!' + #13#10 + 'Valor em branco.');
    EdtValorPagarBaixa.SetFocus;
    valida := 'N';
  end
  else if not EdtDescontoBaixa.Text.IsEmpty then
  begin
    if StrToFloat(EdtDescontoBaixa.Text) >=
      StrToFloat(saldoContasPagar[primeiro]) then
    begin
      ShowMessage('Processo cancelado!' + #13#10 +
        'Desconto maior que o saldo da conta.');
      EdtDescontoBaixa.SetFocus;
      valida := 'N';
    end;
  end;
  if valida = 'S' then
  begin
    Data := Date;
    valorTotal := StrToFloat(EdtValorPagarBaixa.Text);
    valorPago := 0;
    valorSaldo := 0;
    ValorAcresc := 0;
    valorDesc := 0;

    if fornDiferente = 'S' then
    begin
      if saldoTotal > valorTotal then
      begin
        ShowMessage('Processo cancelado!' + #13#10 +
          'Não é permitido baixa parcial com mais de 1 cliente filtrado.');
        EdtValorPagarBaixa.SetFocus;
      end
      else
      begin
        for I := 0 to tamanhoArray - 1 do
        begin
          if not idContasPagar[I].IsEmpty then
          begin
            try
              // conta_receber
              DM.FDQConsContasPagarBaixa.Close;
              DM.FDQConsContasPagarBaixa.ParamByName('PIdContaPagar').Value :=
                idContasPagar[I];
              DM.FDQConsContasPagarBaixa.Open();

              valorPago := DM.FDQConsContasPagarBaixavalor_pago.AsFloat +
                (DM.FDQConsContasPagarBaixavalor_saldo.AsFloat - valorDesc);

              valorTotal := valorTotal - StrToFloat(saldoContasPagar[I]);

              DM.FDQAuxiliar.sql.Clear;

              DM.FDQAuxiliar.sql.Add('update conta_pagar');
              DM.FDQAuxiliar.sql.Add(' set valor_pago = :valorPago,');
              DM.FDQAuxiliar.sql.Add(' valor_saldo = :valorSaldo,');
              DM.FDQAuxiliar.sql.Add(' data_quitacao = :dataQuitacao,');
              DM.FDQAuxiliar.sql.Add(' quitado = :quitado');
              DM.FDQAuxiliar.sql.Add(' where id = :Id');

              DM.FDQAuxiliar.Params.ParamByName('valorPago').AsFloat :=
                valorPago;
              DM.FDQAuxiliar.Params.ParamByName('valorSaldo').AsFloat := 0;
              DM.FDQAuxiliar.Params.ParamByName('dataQuitacao')
                .AsDateTime := Data;
              DM.FDQAuxiliar.Params.ParamByName('quitado').AsString := 'S';
              DM.FDQAuxiliar.Params.ParamByName('id').AsInteger :=
                StrToInt(idContasPagar[I]);

              DM.FDQAuxiliar.ExecSQL;

              // baixa_conta_receber
              { DM.FDQMaxIdBaixaContaPagar.Close;
                DM.FDQMaxIdBaixaContaPagar.Open();
                maxIdBaixa := DM.FDQMaxIdBaixaContaPagarmaxid.AsInteger + 1; }

              DM.FDQCadBaixaContaPagar.Close;
              DM.FDQCadBaixaContaPagar.Open();
              DM.FDQCadBaixaContaPagar.Append;
              // DM.FDQCadBaixaContasPagarid.AsInteger := maxIdBaixa;
              DM.FDQCadBaixaContaPagarid_conta_pagar.AsInteger :=
                StrToInt(idContasPagar[I]);
              DM.FDQCadBaixaContaPagardata.AsDateTime := Data;
              DM.FDQCadBaixaContaPagarvalor.AsFloat :=
                StrToFloat(saldoContasPagar[I]);
              DM.FDQCadBaixaContaPagarid_forma_pag.AsInteger :=
                DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
              DM.FDQCadBaixaContaPagar.Post;
            except
              on E: Exception do
                ShowMessage('Erro!  ' + #13#10 + E.Message);
            end;

          end;

        end;
        DM.FDConnection1.CommitRetaining;
        if valorTotal > 0 then
        begin
          ShowMessage('Troco: ' + FloatToStr(valorTotal));
        end;
        SpdBVoltarContasPagarBaixaClick(Sender);
      end;
    end
    else if fornDiferente = 'N' then
    begin
      for I := 0 to tamanhoArray - 1 do
      begin
        if not idContasPagar[I].IsEmpty then
        begin
          try
            // conta_receber
            DM.FDQConsContasPagarBaixa.Close;
            DM.FDQConsContasPagarBaixa.ParamByName('PIdContaPagar').Value :=
              idContasPagar[I];
            DM.FDQConsContasPagarBaixa.Open();

            if I = primeiro then
            begin
              if not EdtDescontoBaixa.Text.IsEmpty then
              begin
                valorDesc := StrToFloat(EdtDescontoBaixa.Text);

                if (valorTotal + valorDesc) >= StrToFloat(saldoContasPagar[I])
                then
                begin
                  valorBaixa := StrToFloat(saldoContasPagar[I]) - valorDesc;

                  valorPago := DM.FDQConsContasPagarBaixavalor_pago.AsFloat +
                    (StrToFloat(saldoContasPagar[I]) - valorDesc);

                  valorSaldo := 0;

                  quitado := 'S';

                  valorTotal := valorTotal -
                    (StrToFloat(saldoContasPagar[I]) - valorDesc);
                end
                else
                begin
                  valorBaixa := valorTotal;

                  valorPago := DM.FDQConsContasPagarBaixavalor_pago.AsFloat +
                    valorTotal;

                  valorSaldo := (DM.FDQConsContasPagarBaixavalor_saldo.AsFloat -
                    valorDesc) - valorTotal;

                  quitado := 'N';

                  valorTotal := 0;
                end;
                valorDesc := StrToFloat(EdtDescontoBaixa.Text) +
                  DM.FDQConsContasPagarBaixavalor_descmoeda.AsFloat;

                DM.FDQAuxiliar.sql.Clear;

                DM.FDQAuxiliar.sql.Add('update conta_pagar');
                DM.FDQAuxiliar.sql.Add(' set valor_pago = :valorPago,');
                DM.FDQAuxiliar.sql.Add(' valor_descmoeda = :valorDesc,');
                if quitado = 'S' then
                  DM.FDQAuxiliar.sql.Add(' data_quitacao = :dataQuitacao,');
                DM.FDQAuxiliar.sql.Add(' valor_saldo = :valorSaldo,');
                DM.FDQAuxiliar.sql.Add(' quitado = :quitado');
                DM.FDQAuxiliar.sql.Add(' where id = :Id');

                DM.FDQAuxiliar.Params.ParamByName('valorPago').AsFloat :=
                  valorPago;
                DM.FDQAuxiliar.Params.ParamByName('valorDesc').AsFloat :=
                  valorDesc;
                if quitado = 'S' then
                  DM.FDQAuxiliar.Params.ParamByName('dataQuitacao')
                    .AsDateTime := Data;
                DM.FDQAuxiliar.Params.ParamByName('valorSaldo').AsFloat :=
                  valorSaldo;
                DM.FDQAuxiliar.Params.ParamByName('quitado').AsString
                  := quitado;
                DM.FDQAuxiliar.Params.ParamByName('id').AsInteger :=
                  StrToInt(idContasPagar[I]);

                DM.FDQAuxiliar.ExecSQL;

                // baixa_conta_receber
                { DM.FDQMaxIdBaixaContaPagar.Close;
                  DM.FDQMaxIdBaixaContaPagar.Open();
                  maxIdBaixa := DM.FDQMaxIdBaixaContaPagarmaxid.AsInteger + 1;
                }
                DM.FDQCadBaixaContaPagar.Close;
                DM.FDQCadBaixaContaPagar.Open();
                DM.FDQCadBaixaContaPagar.Append;
                // DM.FDQCadBaixaContaPagarid.AsInteger := maxIdBaixa;
                DM.FDQCadBaixaContaPagarid_conta_pagar.AsInteger :=
                  StrToInt(idContasPagar[I]);
                DM.FDQCadBaixaContaPagardata.AsDateTime := Data;
                DM.FDQCadBaixaContaPagarvalor.AsFloat := valorBaixa;
                DM.FDQCadBaixaContaPagarid_forma_pag.AsInteger :=
                  DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
                DM.FDQCadBaixaContaPagar.Post;
              end
              else if not EdtAcrescimoBaixa.Text.IsEmpty then
              begin
                ValorAcresc := StrToFloat(EdtAcrescimoBaixa.Text);

                if valorTotal >= StrToFloat(saldoContasPagar[I]) then
                begin
                  valorBaixa := StrToFloat(saldoContasPagar[I]) + ValorAcresc;

                  valorPago := DM.FDQConsContasPagarBaixavalor_pago.AsFloat +
                    (StrToFloat(saldoContasPagar[I]) + ValorAcresc);

                  valorSaldo := 0;

                  quitado := 'S';

                  valorTotal := valorTotal -
                    (StrToFloat(saldoContasPagar[I]) + ValorAcresc);
                end
                else
                begin
                  valorBaixa := valorTotal;

                  valorPago := DM.FDQConsContasPagarBaixavalor_pago.AsFloat +
                    valorTotal;

                  valorSaldo := (DM.FDQConsContasPagarBaixavalor_saldo.AsFloat +
                    ValorAcresc) - valorTotal;

                  quitado := 'N';

                  valorTotal := 0;
                end;
                ValorAcresc := StrToFloat(EdtAcrescimoBaixa.Text) +
                  DM.FDQConsContasPagarBaixavalor_acresc.AsFloat;

                DM.FDQAuxiliar.sql.Clear;

                DM.FDQAuxiliar.sql.Add('update conta_pagar');
                DM.FDQAuxiliar.sql.Add(' set valor_pago = :valorPago,');
                DM.FDQAuxiliar.sql.Add(' valor_acresc = :valorAcresc,');
                if quitado = 'S' then
                  DM.FDQAuxiliar.sql.Add(' data_quitacao = :dataQuitacao,');
                DM.FDQAuxiliar.sql.Add(' valor_saldo = :valorSaldo,');
                DM.FDQAuxiliar.sql.Add(' quitado = :quitado');
                DM.FDQAuxiliar.sql.Add(' where id = :Id');

                DM.FDQAuxiliar.Params.ParamByName('valorPago').AsFloat :=
                  valorPago;
                DM.FDQAuxiliar.Params.ParamByName('valorAcresc').AsFloat :=
                  ValorAcresc;
                if quitado = 'S' then
                  DM.FDQAuxiliar.Params.ParamByName('dataQuitacao')
                    .AsDateTime := Data;
                DM.FDQAuxiliar.Params.ParamByName('valorSaldo').AsFloat :=
                  valorSaldo;
                DM.FDQAuxiliar.Params.ParamByName('quitado').AsString
                  := quitado;
                DM.FDQAuxiliar.Params.ParamByName('id').AsInteger :=
                  StrToInt(idContasPagar[I]);

                DM.FDQAuxiliar.ExecSQL;

                // baixa_conta_receber
                { DM.FDQMaxIdBaixaContaPagar.Close;
                  DM.FDQMaxIdBaixaContaPagar.Open();
                  maxIdBaixa := DM.FDQMaxIdBaixaContaPagarmaxid.AsInteger + 1;
                }
                DM.FDQCadBaixaContaPagar.Close;
                DM.FDQCadBaixaContaPagar.Open();
                DM.FDQCadBaixaContaPagar.Append;
                // DM.FDQCadBaixaContaPagarid.AsInteger := maxIdBaixa;
                DM.FDQCadBaixaContaPagarid_conta_pagar.AsInteger :=
                  StrToInt(idContasPagar[I]);
                DM.FDQCadBaixaContaPagardata.AsDateTime := Data;
                DM.FDQCadBaixaContaPagarvalor.AsFloat := valorBaixa;
                DM.FDQCadBaixaContaPagarid_forma_pag.AsInteger :=
                  DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
                DM.FDQCadBaixaContaPagar.Post;
              end
              else
              begin
                if valorTotal >= StrToFloat(saldoContasPagar[I]) then
                begin
                  valorBaixa := StrToFloat(saldoContasPagar[I]);

                  valorPago := DM.FDQConsContasPagarBaixavalor_pago.AsFloat +
                    StrToFloat(saldoContasPagar[I]);

                  valorSaldo := 0;

                  quitado := 'S';

                  valorTotal := valorTotal - StrToFloat(saldoContasPagar[I]);
                end
                else
                begin
                  valorBaixa := valorTotal;

                  valorPago := DM.FDQConsContasPagarBaixavalor_pago.AsFloat +
                    valorTotal;

                  valorSaldo := DM.FDQConsContasPagarBaixavalor_saldo.AsFloat -
                    valorTotal;

                  quitado := 'N';

                  valorTotal := 0;
                end;

                DM.FDQAuxiliar.sql.Clear;

                DM.FDQAuxiliar.sql.Add('update conta_pagar');
                DM.FDQAuxiliar.sql.Add(' set valor_pago = :valorPago,');
                DM.FDQAuxiliar.sql.Add(' valor_saldo = :valorSaldo,');
                if quitado = 'S' then
                  DM.FDQAuxiliar.sql.Add(' data_quitacao = :dataQuitacao,');
                DM.FDQAuxiliar.sql.Add(' quitado = :quitado');
                DM.FDQAuxiliar.sql.Add(' where id = :Id');

                DM.FDQAuxiliar.Params.ParamByName('valorPago').AsFloat :=
                  valorPago;
                DM.FDQAuxiliar.Params.ParamByName('valorSaldo').AsFloat :=
                  valorSaldo;
                if quitado = 'S' then
                  DM.FDQAuxiliar.Params.ParamByName('dataQuitacao')
                    .AsDateTime := Data;
                DM.FDQAuxiliar.Params.ParamByName('quitado').AsString
                  := quitado;
                DM.FDQAuxiliar.Params.ParamByName('id').AsInteger :=
                  StrToInt(idContasPagar[I]);

                DM.FDQAuxiliar.ExecSQL;

                // baixa_conta_receber
                { DM.FDQMaxIdBaixaContaPagar.Close;
                  DM.FDQMaxIdBaixaContaPagar.Open();
                  maxIdBaixa := DM.FDQMaxIdBaixaContaPagarmaxid.AsInteger + 1;
                }
                DM.FDQCadBaixaContaPagar.Close;
                DM.FDQCadBaixaContaPagar.Open();
                DM.FDQCadBaixaContaPagar.Append;
                // DM.FDQCadBaixaContaPagarid.AsInteger := maxIdBaixa;
                DM.FDQCadBaixaContaPagarid_conta_pagar.AsInteger :=
                  StrToInt(idContasPagar[I]);
                DM.FDQCadBaixaContaPagardata.AsDateTime := Data;
                DM.FDQCadBaixaContaPagarvalor.AsFloat := valorBaixa;
                DM.FDQCadBaixaContaPagarid_forma_pag.AsInteger :=
                  DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
                DM.FDQCadBaixaContaPagar.Post;
              end;
            end
            else
            begin
              if valorTotal >= StrToFloat(saldoContasPagar[I]) then
              begin
                valorBaixa := StrToFloat(saldoContasPagar[I]);

                valorPago := DM.FDQConsContasPagarBaixavalor_pago.AsFloat +
                  StrToFloat(saldoContasPagar[I]);

                valorSaldo := 0;

                quitado := 'S';

                valorTotal := valorTotal - StrToFloat(saldoContasPagar[I]);
              end
              else
              begin
                valorBaixa := valorTotal;

                valorPago := DM.FDQConsContasPagarBaixavalor_pago.AsFloat +
                  valorTotal;

                valorSaldo := DM.FDQConsContasPagarBaixavalor_saldo.AsFloat -
                  valorTotal;

                quitado := 'N';

                valorTotal := 0;
              end;

              DM.FDQAuxiliar.sql.Clear;

              DM.FDQAuxiliar.sql.Add('update conta_pagar');
              DM.FDQAuxiliar.sql.Add(' set valor_pago = :valorPago,');
              if quitado = 'S' then
                DM.FDQAuxiliar.sql.Add(' data_quitacao = :dataQuitacao,');
              DM.FDQAuxiliar.sql.Add(' quitado = :quitado,');
              DM.FDQAuxiliar.sql.Add(' valor_saldo = :valorSaldo');
              DM.FDQAuxiliar.sql.Add(' where id = :Id');

              DM.FDQAuxiliar.Params.ParamByName('valorPago').AsFloat :=
                valorPago;
              if quitado = 'S' then
                DM.FDQAuxiliar.Params.ParamByName('dataQuitacao')
                  .AsDateTime := Data;
              DM.FDQAuxiliar.Params.ParamByName('quitado').AsString := quitado;
              DM.FDQAuxiliar.Params.ParamByName('valorSaldo').AsFloat :=
                valorSaldo;
              DM.FDQAuxiliar.Params.ParamByName('id').AsInteger :=
                StrToInt(idContasPagar[I]);

              DM.FDQAuxiliar.ExecSQL;

              // baixa_conta_receber
              { DM.FDQMaxIdBaixaContaPagar.Close;
                DM.FDQMaxIdBaixaContaPagar.Open();
                maxIdBaixa := DM.FDQMaxIdBaixaContaPagarmaxid.AsInteger + 1;
              }
              DM.FDQCadBaixaContaPagar.Close;
              DM.FDQCadBaixaContaPagar.Open();
              DM.FDQCadBaixaContaPagar.Append;
              // DM.FDQCadBaixaContaPagarid.AsInteger := maxIdBaixa;
              DM.FDQCadBaixaContaPagarid_conta_pagar.AsInteger :=
                StrToInt(idContasPagar[I]);
              DM.FDQCadBaixaContaPagardata.AsDateTime := Data;
              DM.FDQCadBaixaContaPagarvalor.AsFloat := valorBaixa;
              DM.FDQCadBaixaContaPagarid_forma_pag.AsInteger :=
                DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
              DM.FDQCadBaixaContaPagar.Post;
            end;
            // end;
          except
            on E: Exception do
              ShowMessage('Erro!  ' + #13#10 + E.Message);
          end;

        end;

      end;
      DM.FDConnection1.CommitRetaining;
      if valorTotal > 0 then
      begin
        ShowMessage('Troco: ' + FloatToStr(valorTotal));
      end;
      SpdBVoltarContasPagarBaixaClick(Sender);
    end;

  end;
end;

procedure TFCadContasPagar.SpdBConfirmarClick(Sender: TObject);
var
  I: Integer;
  dataVenc: TDateTime;
begin
  inherited;
  try
    if (ComboBoxForn.ItemIndex = -1) or (ComboBoxDespesa.ItemIndex = -1) or
      (EdtValorDoc.Text.IsEmpty) or (EdtValorSaldo.Text.IsEmpty) or
      (DateEditDataVenc.Text.IsEmpty) then
    begin
      ShowMessage('Operação Cancelada!' + #13#10 +
        'Algum campo Obrigatório não preenchido corretamente!');
    end
    else
    begin
      if crud = 'inserir' then
      begin
        for I := 0 to nParc - 1 do
        begin
          if I = 0 then
          begin
            DM.FDQCadContaPagar.Close;
            DM.FDQCadContaPagar.Open();
            DM.FDQCadContaPagar.Append;
            DM.FDQCadContaPagarid_fornecedor.AsInteger :=
              DM.FDQFornecedorid.AsInteger;
            DM.FDQCadContaPagarid_tipo_despesa.AsInteger :=
              DM.FDQConsDespesasid.AsInteger;
            DM.FDQCadContaPagarn_doc.AsString := EdtNumDoc.Text;
            DM.FDQCadContaPagarvalor_doc.AsFloat :=
              StrToFloat(EdtValorDoc.Text);
            if not EdtValorDesc.Text.IsEmpty then
              DM.FDQCadContaPagarvalor_descmoeda.AsFloat :=
                StrToFloat(EdtValorDesc.Text);
            if not EdtValorAcresc.Text.IsEmpty then
              DM.FDQCadContaPagarvalor_acresc.AsFloat :=
                StrToFloat(EdtValorAcresc.Text);
            if not EdtValorPago.Text.IsEmpty then
              DM.FDQCadContaPagarvalor_pago.AsFloat :=
                StrToFloat(EdtValorPago.Text);
            DM.FDQCadContaPagarvalor_saldo.AsFloat :=
              StrToFloat(EdtValorSaldo.Text);
            DM.FDQCadContaPagardata_cad.AsDateTime := Now;
            DM.FDQCadContaPagardata_venc.AsDateTime := DateEditDataVenc.Date;
            DM.FDQCadContaPagarquitado.AsString := 'N';
            DM.FDQCadContaPagar.Post;
          end
          else
          begin
            dataVenc := IncMonth(DateEditDataVenc.DateTime, I);

            DM.FDQCadContaPagar.Close;
            DM.FDQCadContaPagar.Open();
            DM.FDQCadContaPagar.Append;
            DM.FDQCadContaPagarid_fornecedor.AsInteger :=
              DM.FDQFornecedorid.AsInteger;
            DM.FDQCadContaPagarid_tipo_despesa.AsInteger :=
              DM.FDQConsDespesasid.AsInteger;
            DM.FDQCadContaPagarn_doc.AsString := EdtNumDoc.Text;
            DM.FDQCadContaPagarvalor_doc.AsFloat :=
              StrToFloat(EdtValorDoc.Text);
            if not EdtValorDesc.Text.IsEmpty then
              DM.FDQCadContaPagarvalor_descmoeda.AsFloat :=
                StrToFloat(EdtValorDesc.Text);
            if not EdtValorAcresc.Text.IsEmpty then
              DM.FDQCadContaPagarvalor_acresc.AsFloat :=
                StrToFloat(EdtValorAcresc.Text);
            if not EdtValorPago.Text.IsEmpty then
              DM.FDQCadContaPagarvalor_pago.AsFloat :=
                StrToFloat(EdtValorPago.Text);
            DM.FDQCadContaPagarvalor_saldo.AsFloat :=
              StrToFloat(EdtValorSaldo.Text);
            DM.FDQCadContaPagardata_cad.AsDateTime := Now;
            DM.FDQCadContaPagardata_venc.AsDateTime := dataVenc;
            DM.FDQCadContaPagarquitado.AsString := 'N';
            DM.FDQCadContaPagar.Post;
          end;
        end;

        DM.FDConnection1.CommitRetaining;
        LimpaCampos;
        DesabilitaCampos;
        MudarAbaModelo(TbItemListagem, Sender);
      end
      else if crud = 'editar' then
      begin
        DM.FDQFornEditContaPagar.Close;
        DM.FDQFornEditContaPagar.ParamByName('PNomeFantasia').AsString :=
          ComboBoxForn.Selected.Text;
        DM.FDQFornEditContaPagar.Open();

        DM.FDQDespesaEditContaPagar.Close;
        DM.FDQDespesaEditContaPagar.ParamByName('PDescricao').AsString :=
          ComboBoxDespesa.Selected.Text;
        DM.FDQDespesaEditContaPagar.Open();

        DM.FDQAuxiliar.sql.Clear;

        DM.FDQAuxiliar.sql.Add('update conta_pagar');
        DM.FDQAuxiliar.sql.Add(' set id_fornecedor = :IdForn,');
        DM.FDQAuxiliar.sql.Add(' id_tipo_despesa = :IdTipoDesp,');
        DM.FDQAuxiliar.sql.Add(' n_doc = :NDoc,');
        DM.FDQAuxiliar.sql.Add(' valor_doc = :VlDoc,');
        DM.FDQAuxiliar.sql.Add(' valor_descmoeda = :VlDescM,');
        DM.FDQAuxiliar.sql.Add(' valor_acresc = :VlAcresc,');
        DM.FDQAuxiliar.sql.Add(' valor_saldo = :VlSaldo,');
        if (EdtValorSaldo.Text = '0') or (EdtValorSaldo.Text = '0,00') then
        begin
          DM.FDQAuxiliar.sql.Add(' data_venc = :DataVenc,');
          DM.FDQAuxiliar.sql.Add(' data_quitacao = :DataQuit,');
        end;
        DM.FDQAuxiliar.sql.Add(' data_venc = :DataVenc');
        DM.FDQAuxiliar.sql.Add(' where id = :Id');

        DM.FDQAuxiliar.Params.ParamByName('IdForn').AsInteger :=
          DM.FDQFornEditContaPagarid.AsInteger;
        DM.FDQAuxiliar.Params.ParamByName('IdTipoDesp').AsInteger :=
          DM.FDQDespesaEditContaPagarid.AsInteger;
        DM.FDQAuxiliar.Params.ParamByName('NDoc').AsString := EdtNumDoc.Text;
        DM.FDQAuxiliar.Params.ParamByName('VlDoc').AsString := EdtValorDoc.Text;
        DM.FDQAuxiliar.Params.ParamByName('VlDescM').AsString :=
          EdtValorDesc.Text;
        DM.FDQAuxiliar.Params.ParamByName('VlAcresc').AsString :=
          EdtValorAcresc.Text;
        DM.FDQAuxiliar.Params.ParamByName('VlSaldo').AsString :=
          EdtValorSaldo.Text;
        DM.FDQAuxiliar.Params.ParamByName('DataVenc').AsDate :=
          DateEditDataVenc.Date;
        if (EdtValorSaldo.Text = '0') or (EdtValorSaldo.Text = '0,00') then
        begin
          DM.FDQAuxiliar.Params.ParamByName('DataQuit').AsDateTime := Now;
          DM.FDQAuxiliar.Params.ParamByName('Quitado').AsString := 'S';
        end;
        DM.FDQAuxiliar.Params.ParamByName('Id').AsInteger :=
          DM.FDQConsContaPagarid.AsInteger;

        DM.FDQAuxiliar.ExecSQL;
        DM.FDConnection1.CommitRetaining;

        LimpaCampos;
        DesabilitaCampos;
        MudarAbaModelo(TbItemListagem, Sender);
      end;
    end;
  except
    on E: Exception do
      ShowMessage('Erro!' + #13#10 + E.Message);
  end;
end;

procedure TFCadContasPagar.SpdBEditarClick(Sender: TObject);
begin
  inherited;
  crud := 'editar';
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
  InputBox('Qantidade de parcelas?',
    'Se for mais que 1 parcela, o usuario informa apenas o primeiro vencimento',
    '1',
    procedure(const AResult: TModalResult; const AValue: string)
    begin
      case AResult of
        { Detect which button was pushed and show a different message }
        mrOk:
          begin
            // AValue is the result of the inputbox dialog
            nParc := StrToInt(AValue);

            crud := 'inserir';
            LimpaCampos;
            HabilitaCampos;
            LblTituloEdicao.Text := 'Novo Cadastro';
            MudarAbaModelo(TbItemedicao, Sender);
          end;
        mrCancel:
          begin
          end;
      end;
    end);
end;

procedure TFCadContasPagar.SpdBVoltarContasPagarBaixaClick(Sender: TObject);
begin
  inherited;
  SetLength(saldoContasPagar, 0);
  SetLength(idContasPagar, 0);
  SetLength(idFornContasPagar, 0);
  limpaArray := 'S';

  if filtroPag = 'Forn' then
  begin
    ComboBoxFiltroFornContasPagarClosePopup(Sender);
  end
  else if filtroPag = 'VENC' then
  begin
    DateEdtFiltroVencFinalContasPagarClosePicker(Sender);
  end;

  BtnBaixarContaPagar.Visible := False;

  DM.FDQConsAvistaFormaPag.Active := False;

  SpdBConfirmaContasPagarBaixa.Visible := False;

  MudarAbaModelo(TbItemListagem, Sender);
end;

procedure TFCadContasPagar.SpdBVoltarEdicaoClick(Sender: TObject);
begin
  inherited;
  MudarAbaModelo(TbItemListagem, Sender);
end;

end.
