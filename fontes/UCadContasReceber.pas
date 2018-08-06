unit UCadContasReceber;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, MultiDetailAppearanceU,
  FMX.ListView, System.Rtti, System.Bindings.Outputs, FMX.Bind.Editors,
  Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  FMX.ListBox, FMX.DateTimeCtrls, System.UIConsts, FMX.Edit;

type
  TFCadContasReceber = class(TFCadModelo)
    ListViewCadContasReceber: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    LytFiltroClienteContasReceber: TLayout;
    Label1: TLabel;
    ComboBoxFiltroClienteContasReceber: TComboBox;
    BindSourceDB2: TBindSourceDB;
    LinkListControlToField2: TLinkListControlToField;
    LytFiltroDataVencContasReceber: TLayout;
    Label2: TLabel;
    Label3: TLabel;
    DateEdtFiltroVencInicialContasReceber: TDateEdit;
    Label4: TLabel;
    DateEdtFiltroVencFinalContasReceber: TDateEdit;
    BtnBaixaContasReceber: TButton;
    LytBaixaContasReceberEdicao: TLayout;
    ListBoxbaixaContasReceberEdicao: TListBox;
    ListBoxItem1: TListBoxItem;
    ListBoxItem2: TListBoxItem;
    ListBoxItem3: TListBoxItem;
    ListBoxItem4: TListBoxItem;
    ToolBar1: TToolBar;
    SpdBVoltarBaixaContasReceberEdicao: TSpeedButton;
    LblTituloBaixaContasReceberEdicao: TLabel;
    SpdBConfirmaBaixaContasREceberEdicao: TSpeedButton;
    LblValorBaixaContasReceberEdicao: TLabel;
    EditValorSaldo: TEdit;
    LblDescMoedaBaixaContasReceberEdicao: TLabel;
    LblValorTotalBaixaContasReceberEdicao: TLabel;
    LblTipoReceitaBaixaContasReceberEdicao: TLabel;
    EdtDesconto: TEdit;
    EdtValorReceber: TEdit;
    ListBoxItem5: TListBoxItem;
    LblAcrescimoMoedaBaixaContasReceberEdicao: TLabel;
    EdtAcrescimo: TEdit;
    ComboBoxTipoReceita: TComboBox;
    BindSourceDB3: TBindSourceDB;
    LinkListControlToField3: TLinkListControlToField;
    procedure SpBVoltarClick(Sender: TObject);
    procedure ComboBoxFiltroClienteContasReceberEnter(Sender: TObject);
    procedure ComboBoxFiltroClienteContasReceberClosePopup(Sender: TObject);
    procedure DateEdtFiltroVencFinalContasReceberClosePicker(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListViewCadContasReceberUpdateObjects(const Sender: TObject;
      const AItem: TListViewItem);
    procedure ListViewCadContasReceberItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure BtnBaixaContasReceberClick(Sender: TObject);
    procedure SpdBVoltarBaixaContasReceberEdicaoClick(Sender: TObject);
    procedure ComboBoxTipoReceitaEnter(Sender: TObject);
    procedure EdtAcrescimoTyping(Sender: TObject);
    procedure EdtDescontoTyping(Sender: TObject);
    procedure SpdBConfirmaBaixaContasREceberEdicaoClick(Sender: TObject);
  private
    saldoContasReceber, idContasReceber, idCliContasReceber: array of string;
    tamanhoArray, contadorArray, controleCheckmark: integer;
    saldoTotal: Double;
    filtro, limpaArray, cliDiferente: string;
    { Private declarations }
  public

    { Public declarations }
  end;

var
  FCadContasReceber: TFCadContasReceber;

implementation

{$R *.fmx}

uses UDM, UPrincipal, UAuxiliar;

procedure TFCadContasReceber.BtnBaixaContasReceberClick(Sender: TObject);
var
  I, J: integer;
begin
  inherited;
{$IFDEF MSWINDOWS}
  ListBoxItem1.Height := 44;
  ListBoxItem2.Height := 44;
  ListBoxItem3.Height := 44;
  ListBoxItem4.Height := 44;
  ListBoxItem5.Height := 44;
{$ENDIF}
  saldoTotal := 0;
  for I := 0 to tamanhoArray - 1 do
  begin
    if not saldoContasReceber[I].IsEmpty then
    begin
      saldoTotal := saldoTotal + StrToFloat(saldoContasReceber[I]);
    end;
  end;

  cliDiferente := 'N';
  for I := 0 to tamanhoArray - 1 do
  begin
    for J := 1 to tamanhoArray - 1 do
    begin
      if not idCliContasReceber[I].IsEmpty and not idCliContasReceber[J].IsEmpty
      then
      begin
        if idCliContasReceber[I] <> idCliContasReceber[J] then
        begin
          cliDiferente := 'S';
        end;
      end;

      if cliDiferente = 'S' then
        Break
    end;

    if cliDiferente = 'S' then
    begin
      EdtDesconto.Enabled := False;
      EdtAcrescimo.Enabled := False;

      Break
    end;
  end;
  if cliDiferente = 'N' then
  begin
    EdtDesconto.Enabled := True;
    EdtAcrescimo.Enabled := True;
  end;

  EdtDesconto.Text := EmptyStr;
  EdtAcrescimo.Text := EmptyStr;
  EditValorSaldo.Text := FloatToStr(saldoTotal);
  EdtValorReceber.Text := FloatToStr(saldoTotal);

  SpdBConfirmaBaixaContasREceberEdicao.Visible := False;

  MudarAbaModelo(TbItemedicao, Sender);
end;

procedure TFCadContasReceber.ComboBoxFiltroClienteContasReceberClosePopup
  (Sender: TObject);
begin
  inherited;
  filtro := 'CLI';

  if ComboBoxFiltroClienteContasReceber.Selected.Text = '*Todos*' then
  begin
    DM.FDQConsContasReceber.Active := False;
    DM.FDQConsContasReceber.Close;
    DM.FDQConsContasReceber.ParamByName('PCLienteContasReceber2').Value := '%';
    DM.FDQConsContasReceber.ParamByName('PCLienteContasReceber1').Value := Null;
    DM.FDQConsContasReceber.ParamByName('PDataVencInicio').Value := Null;
    DM.FDQConsContasReceber.ParamByName('PDataVencFinal').Value := Null;
    DM.FDQConsContasReceber.Open();
    DM.FDQConsContasReceber.Active := True;
  end
  else
  begin
    DM.FDQConsContasReceber.Active := False;
    DM.FDQConsContasReceber.Close;
    DM.FDQConsContasReceber.ParamByName('PCLienteContasReceber2').Value :=
      ComboBoxFiltroClienteContasReceber.Selected.Text;
    DM.FDQConsContasReceber.ParamByName('PCLienteContasReceber1').Value := Null;
    DM.FDQConsContasReceber.ParamByName('PDataVencInicio').Value := Null;
    DM.FDQConsContasReceber.ParamByName('PDataVencFinal').Value := Null;
    DM.FDQConsContasReceber.Open();
    DM.FDQConsContasReceber.Active := True;
  end;

  DateEdtFiltroVencInicialContasReceber.Date := Date;
  DateEdtFiltroVencFinalContasReceber.Date := Date;
end;

procedure TFCadContasReceber.ComboBoxFiltroClienteContasReceberEnter
  (Sender: TObject);
begin
  inherited;
  ComboBoxFiltroClienteContasReceber.Items.Clear;

  DM.FDQFiltroCadCLi.Close;
  DM.FDQFiltroCadCLi.ParamByName('PNomeCadCli').Value := '%';
  DM.FDQFiltroCadCLi.ParamByName('PCodCadCli').Value := Null;
  DM.FDQFiltroCadCLi.Open();
  DM.FDQFiltroCadCLi.Active := True;

  ComboBoxFiltroClienteContasReceber.Items.Add('*Todos*');
end;

procedure TFCadContasReceber.ComboBoxTipoReceitaEnter(Sender: TObject);
begin
  inherited;
  DM.FDQConsAvistaFormaPag.Active := False;
  DM.FDQConsAvistaFormaPag.Close;
  DM.FDQConsAvistaFormaPag.Open();
  DM.FDQConsAvistaFormaPag.Active := True;

  SpdBConfirmaBaixaContasREceberEdicao.Visible := True;
end;

procedure TFCadContasReceber.DateEdtFiltroVencFinalContasReceberClosePicker
  (Sender: TObject);
var
  dataVencInicio, dataVencFinal: TDateTime;
begin
  inherited;
  filtro := 'VENC';

  dataVencInicio := StrToDateTime(DateEdtFiltroVencInicialContasReceber.Text);
  dataVencFinal := StrToDateTime(DateEdtFiltroVencFinalContasReceber.Text);

  try
    if DateEdtFiltroVencInicialContasReceber.Date >
      DateEdtFiltroVencFinalContasReceber.Date then
    begin
      ShowMessage
        ('Processo cancelado! A data inicial não pode ser maior que a data final.');
      DateEdtFiltroVencInicialContasReceber.Date := Date;
      DateEdtFiltroVencFinalContasReceber.Date := Date;
    end
    else if ComboBoxFiltroClienteContasReceber.Selected.Text = '*Todos*' then
    begin
      DM.FDQConsContasReceber.Active := False;
      DM.FDQConsContasReceber.Close;
      DM.FDQConsContasReceber.ParamByName('PCLienteContasReceber2')
        .Value := Null;
      DM.FDQConsContasReceber.ParamByName('PCLienteContasReceber1')
        .Value := '%';
      DM.FDQConsContasReceber.ParamByName('PDataVencInicio').Value :=
        dataVencInicio;
      DM.FDQConsContasReceber.ParamByName('PDataVencFinal').Value :=
        dataVencFinal;
      DM.FDQConsContasReceber.Open();
      DM.FDQConsContasReceber.Active := True;
    end
    else
    begin
      DM.FDQConsContasReceber.Active := False;
      DM.FDQConsContasReceber.Close;
      DM.FDQConsContasReceber.ParamByName('PCLienteContasReceber2')
        .Value := Null;
      DM.FDQConsContasReceber.ParamByName('PCLienteContasReceber1').Value :=
        ComboBoxFiltroClienteContasReceber.Selected.Text;
      DM.FDQConsContasReceber.ParamByName('PDataVencInicio').Value :=
        dataVencInicio;
      DM.FDQConsContasReceber.ParamByName('PDataVencFinal').Value :=
        dataVencFinal;
      DM.FDQConsContasReceber.Open();
      DM.FDQConsContasReceber.Active := True;
    end;
  except
    on E: Exception do
      ShowMessage('Erro!' + E.Message);
  end;
end;

procedure TFCadContasReceber.EdtAcrescimoTyping(Sender: TObject);
var
  result: Double;
begin
  inherited;
  result := 0;
  if not EdtAcrescimo.Text.IsEmpty then
  begin
    result := StrToFloat(EditValorSaldo.Text) + StrToFloat(EdtAcrescimo.Text);
    EdtValorReceber.Text := FloatToStr(result);
  end
  else
  begin
    EdtValorReceber.Text := EditValorSaldo.Text;
  end;

  EdtDesconto.Text := EmptyStr;
end;

procedure TFCadContasReceber.EdtDescontoTyping(Sender: TObject);
var
  result: Double;
begin
  inherited;
  result := 0;
  if not EdtDesconto.Text.IsEmpty then
  begin
    result := StrToFloat(EditValorSaldo.Text) - StrToFloat(EdtDesconto.Text);
    EdtValorReceber.Text := FloatToStr(result);
  end
  else
  begin
    EdtValorReceber.Text := EditValorSaldo.Text;
  end;

  EdtAcrescimo.Text := EmptyStr;
end;

procedure TFCadContasReceber.FormCreate(Sender: TObject);
begin
  inherited;
  ComboBoxFiltroClienteContasReceberEnter(Sender);
  ComboBoxFiltroClienteContasReceber.ItemIndex :=
    ComboBoxFiltroClienteContasReceber.Count - 1;
  DateEdtFiltroVencInicialContasReceber.Date := Date;
  DateEdtFiltroVencFinalContasReceber.Date := Date;

  tamanhoArray := 0;
  contadorArray := 0;
  controleCheckmark := 0;
  limpaArray := 'N';
  ListViewCadContasReceber.ItemAppearanceObjects.ItemObjects.Accessory.
    Visible := False;
  ListViewCadContasReceber.ItemAppearanceObjects.ItemEditObjects.Accessory.
    Visible := False;
  BtnBaixaContasReceber.Visible := False;

  DM.FDQConsAvistaFormaPag.Active := False;
end;

procedure TFCadContasReceber.ListViewCadContasReceberItemClick
  (const Sender: TObject; const AItem: TListViewItem);
begin
  inherited;
  if limpaArray = 'S' then
  begin
    tamanhoArray := 0;
    contadorArray := 0;
    controleCheckmark := 0;
    limpaArray := 'N';
  end;

  if AItem.Detail.IsEmpty then
  begin
    AItem.Objects.AccessoryObject.Visible := True;

    controleCheckmark := controleCheckmark + 1;
    tamanhoArray := tamanhoArray + 1;
    SetLength(saldoContasReceber, tamanhoArray);
    SetLength(idContasReceber, tamanhoArray);
    SetLength(idCliContasReceber, tamanhoArray);

    saldoContasReceber[contadorArray] :=
      AItem.Data[TMultiDetailAppearanceNames.Detail3].ToString;
    idContasReceber[contadorArray] := DM.FDQConsContasReceberid.AsString;
    idCliContasReceber[contadorArray] :=
      DM.FDQConsContasReceberid_cliente.AsString;
    AItem.Detail := IntToStr(contadorArray);

    contadorArray := contadorArray + 1;

    BtnBaixaContasReceber.Visible := True;

    AItem.Objects.AccessoryObject.Visible := True;
  end
  else
  begin
    controleCheckmark := controleCheckmark - 1;

    saldoContasReceber[StrToInt(AItem.Detail)] := EmptyStr;
    idContasReceber[StrToInt(AItem.Detail)] := EmptyStr;
    idCliContasReceber[StrToInt(AItem.Detail)] := EmptyStr;
    AItem.Detail := EmptyStr;

    AItem.Objects.AccessoryObject.Visible := False;;

    if controleCheckmark = 0 then
    begin
      BtnBaixaContasReceber.Visible := False;
    end;
  end;
end;

procedure TFCadContasReceber.ListViewCadContasReceberUpdateObjects
  (const Sender: TObject; const AItem: TListViewItem);
var
  dataVenc, dataAtual: TDateTime;
  validou: string;
begin
  inherited;
  dataAtual := Date;
  validou := 'S';
  try
    dataVenc := StrToDateTime(AItem.Text);
  except
    on E: Exception do
      validou := 'N';
  end;

  if validou = 'S' then
  begin
    if dataVenc <= dataAtual then
    begin
      AItem.Objects.TextObject.TextColor := claRed;
    end;
  end;

end;

procedure TFCadContasReceber.SpBVoltarClick(Sender: TObject);
begin
  DM.FDQConsContasReceber.Active := False;
  DM.FDQFiltroCadCLi.Active := False;
  FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
  FPrincipal.AbrirForm(TFAuxiliar);
end;

procedure TFCadContasReceber.SpdBConfirmaBaixaContasREceberEdicaoClick
  (Sender: TObject);
var
  valorTotal, valorPago, valorSaldo, valorDesc, ValorAcresc: Double;
  I, maxIdBaixa, primeiro: integer;
  Data: TDateTime;
  quitado, valida: string;
begin
  inherited;
  valida := 'S';
  primeiro := 0;
  for I := 0 to tamanhoArray - 1 do
  begin
    if not saldoContasReceber[I].IsEmpty then
    begin
      Break
    end;
    primeiro := primeiro + 1;
  end;

  if (EdtValorReceber.Text.IsEmpty) or (EdtValorReceber.Text = '0') or
    (EdtValorReceber.Text = '0,00') then
  begin
    ShowMessage('Processo cancelado! Valor em branco.');
    EdtValorReceber.SetFocus;
    valida := 'N';
  end
  else if not EdtDesconto.Text.IsEmpty then
  begin
    if StrToFloat(EdtDesconto.Text) >= StrToFloat(saldoContasReceber[primeiro])
    then
    begin
      ShowMessage('Processo cancelado! Desconto maior que o saldo da conta.');
      EdtDesconto.SetFocus;
      valida := 'N';
    end;
  end;
  if valida = 'S' then
  begin
    Data := Date;
    valorTotal := StrToFloat(EdtValorReceber.Text);
    valorPago := 0;
    valorSaldo := 0;
    ValorAcresc := 0;
    valorDesc := 0;

    if cliDiferente = 'S' then
    begin
      if saldoTotal > valorTotal then
      begin
        ShowMessage
          ('Processo cancelado! Não é permitido baixa parcial com mais de 1 cliente filtrado.');
        EdtValorReceber.SetFocus;
      end
      else
      begin
        for I := 0 to tamanhoArray - 1 do
        begin
          if not idContasReceber[I].IsEmpty then
          begin
            try
              // conta_receber
              DM.FDQConsContasReceberBaixa.Close;
              DM.FDQConsContasReceberBaixa.ParamByName('PIdContaReceber').Value
                := idContasReceber[I];
              DM.FDQConsContasReceberBaixa.Open();

              valorPago := DM.FDQConsContasReceberBaixavalor_pago.AsFloat +
                (DM.FDQConsContasReceberBaixavalor_saldo.AsFloat - valorDesc);

              valorTotal := valorTotal - StrToFloat(saldoContasReceber[I]);

              DM.FDQAuxiliar.sql.Clear;

              DM.FDQAuxiliar.sql.Add('update conta_receber');
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
                StrToInt(idContasReceber[I]);

              DM.FDQAuxiliar.ExecSQL;

              // baixa_conta_receber
              DM.FDQMaxIdBaixaContaReceber.Close;
              DM.FDQMaxIdBaixaContaReceber.Open();
              maxIdBaixa := DM.FDQMaxIdBaixaContaRecebermaxId.AsInteger + 1;

              DM.FDQCadBaixaContasReceber.Close;
              DM.FDQCadBaixaContasReceber.Open();
              DM.FDQCadBaixaContasReceber.Append;
              DM.FDQCadBaixaContasReceberid.AsInteger := maxIdBaixa;
              DM.FDQCadBaixaContasReceberid_conta_receber.AsInteger :=
                StrToInt(idContasReceber[I]);
              DM.FDQCadBaixaContasReceberdata.AsDateTime := Data;
              DM.FDQCadBaixaContasRecebervalor.AsFloat :=
                StrToFloat(saldoContasReceber[I]);
              DM.FDQCadBaixaContasReceberid_forma_pag.AsInteger :=
                DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
              DM.FDQCadBaixaContasReceber.Post;
            except
              on E: Exception do
                ShowMessage('Erro!  ' + E.Message);
            end;

          end;

        end;
        DM.FDConnection1.CommitRetaining;
        if valorTotal > 0 then
        begin
          ShowMessage('Troco: ' + FloatToStr(valorTotal));
        end;
        SpdBVoltarBaixaContasReceberEdicaoClick(Sender);
      end;
    end
    else if cliDiferente = 'N' then
    begin
      for I := 0 to tamanhoArray - 1 do
      begin
        if not idContasReceber[I].IsEmpty then
        begin
          try
            // conta_receber
            DM.FDQConsContasReceberBaixa.Close;
            DM.FDQConsContasReceberBaixa.ParamByName('PIdContaReceber').Value :=
              idContasReceber[I];
            DM.FDQConsContasReceberBaixa.Open();

            if I = primeiro then
            begin
              if not EdtDesconto.Text.IsEmpty then
              begin
                valorDesc := StrToFloat(EdtDesconto.Text);

                if (valorTotal + valorDesc) >= StrToFloat(saldoContasReceber[I])
                then
                begin
                  valorPago := DM.FDQConsContasReceberBaixavalor_pago.AsFloat +
                    (StrToFloat(saldoContasReceber[I]) - valorDesc);

                  valorSaldo := 0;

                  quitado := 'S';

                  valorTotal := valorTotal -
                    (StrToFloat(saldoContasReceber[I]) - valorDesc);
                end
                else
                begin
                  valorPago := DM.FDQConsContasReceberBaixavalor_pago.AsFloat +
                    valorTotal;

                  valorSaldo := (DM.FDQConsContasReceberBaixavalor_saldo.AsFloat
                    - valorDesc) - valorTotal;

                  quitado := 'N';

                  valorTotal := 0;
                end;
                valorDesc := StrToFloat(EdtDesconto.Text) +
                  DM.FDQConsContasReceberBaixavalor_desconto.AsFloat;

                DM.FDQAuxiliar.sql.Clear;

                DM.FDQAuxiliar.sql.Add('update conta_receber');
                DM.FDQAuxiliar.sql.Add(' set valor_pago = :valorPago,');
                DM.FDQAuxiliar.sql.Add(' valor_desconto = :valorDesc,');
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
                  StrToInt(idContasReceber[I]);

                DM.FDQAuxiliar.ExecSQL;

                // baixa_conta_receber
                DM.FDQMaxIdBaixaContaReceber.Close;
                DM.FDQMaxIdBaixaContaReceber.Open();
                maxIdBaixa := DM.FDQMaxIdBaixaContaRecebermaxId.AsInteger + 1;

                DM.FDQCadBaixaContasReceber.Close;
                DM.FDQCadBaixaContasReceber.Open();
                DM.FDQCadBaixaContasReceber.Append;
                DM.FDQCadBaixaContasReceberid.AsInteger := maxIdBaixa;
                DM.FDQCadBaixaContasReceberid_conta_receber.AsInteger :=
                  StrToInt(idContasReceber[I]);
                DM.FDQCadBaixaContasReceberdata.AsDateTime := Data;
                DM.FDQCadBaixaContasRecebervalor.AsFloat := valorTotal;
                DM.FDQCadBaixaContasReceberid_forma_pag.AsInteger :=
                  DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
                DM.FDQCadBaixaContasReceber.Post;
              end
              else if not EdtAcrescimo.Text.IsEmpty then
              begin
                ValorAcresc := StrToFloat(EdtAcrescimo.Text);

                if valorTotal >=
                  StrToFloat(saldoContasReceber[I]) then
                begin
                  valorPago := DM.FDQConsContasReceberBaixavalor_pago.AsFloat +
                    (StrToFloat(saldoContasReceber[I]) + ValorAcresc);

                  valorSaldo := 0;

                  quitado := 'S';

                  valorTotal := valorTotal -
                    (StrToFloat(saldoContasReceber[I]) + ValorAcresc);
                end
                else
                begin
                  valorPago := DM.FDQConsContasReceberBaixavalor_pago.AsFloat +
                    valorTotal;

                  valorSaldo := (DM.FDQConsContasReceberBaixavalor_saldo.AsFloat
                    + ValorAcresc) - valorTotal;

                  quitado := 'N';

                  valorTotal := 0;
                end;
                ValorAcresc := StrToFloat(EdtAcrescimo.Text) +
                  DM.FDQConsContasReceberBaixavalor_juro.AsFloat;

                DM.FDQAuxiliar.sql.Clear;

                DM.FDQAuxiliar.sql.Add('update conta_receber');
                DM.FDQAuxiliar.sql.Add(' set valor_pago = :valorPago,');
                DM.FDQAuxiliar.sql.Add(' valor_juro = :valorAcresc,');
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
                  StrToInt(idContasReceber[I]);

                DM.FDQAuxiliar.ExecSQL;

                // baixa_conta_receber
                DM.FDQMaxIdBaixaContaReceber.Close;
                DM.FDQMaxIdBaixaContaReceber.Open();
                maxIdBaixa := DM.FDQMaxIdBaixaContaRecebermaxId.AsInteger + 1;

                DM.FDQCadBaixaContasReceber.Close;
                DM.FDQCadBaixaContasReceber.Open();
                DM.FDQCadBaixaContasReceber.Append;
                DM.FDQCadBaixaContasReceberid.AsInteger := maxIdBaixa;
                DM.FDQCadBaixaContasReceberid_conta_receber.AsInteger :=
                  StrToInt(idContasReceber[I]);
                DM.FDQCadBaixaContasReceberdata.AsDateTime := Data;
                DM.FDQCadBaixaContasRecebervalor.AsFloat := valorTotal;
                DM.FDQCadBaixaContasReceberid_forma_pag.AsInteger :=
                  DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
                DM.FDQCadBaixaContasReceber.Post;
              end
              else
              begin
                if valorTotal >=
                  StrToFloat(saldoContasReceber[I]) then
                begin
                  valorPago := DM.FDQConsContasReceberBaixavalor_pago.AsFloat +
                    StrToFloat(saldoContasReceber[I]);

                  valorSaldo := 0;

                  quitado := 'S';

                  valorTotal := valorTotal - StrToFloat(saldoContasReceber[I]);
                end
                else
                begin
                  valorPago := DM.FDQConsContasReceberBaixavalor_pago.AsFloat +
                    valorTotal;

                  valorSaldo := DM.FDQConsContasReceberBaixavalor_saldo.AsFloat
                    - valorTotal;

                  quitado := 'N';

                  valorTotal := 0;
                end;

                DM.FDQAuxiliar.sql.Clear;

                DM.FDQAuxiliar.sql.Add('update conta_receber');
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
                  StrToInt(idContasReceber[I]);

                DM.FDQAuxiliar.ExecSQL;

                // baixa_conta_receber
                DM.FDQMaxIdBaixaContaReceber.Close;
                DM.FDQMaxIdBaixaContaReceber.Open();
                maxIdBaixa := DM.FDQMaxIdBaixaContaRecebermaxId.AsInteger + 1;

                DM.FDQCadBaixaContasReceber.Close;
                DM.FDQCadBaixaContasReceber.Open();
                DM.FDQCadBaixaContasReceber.Append;
                DM.FDQCadBaixaContasReceberid.AsInteger := maxIdBaixa;
                DM.FDQCadBaixaContasReceberid_conta_receber.AsInteger :=
                  StrToInt(idContasReceber[I]);
                DM.FDQCadBaixaContasReceberdata.AsDateTime := Data;
                DM.FDQCadBaixaContasRecebervalor.AsFloat := valorTotal;
                DM.FDQCadBaixaContasReceberid_forma_pag.AsInteger :=
                  DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
                DM.FDQCadBaixaContasReceber.Post;
              end;
            end
            else
            begin
              if valorTotal >=
                StrToFloat(saldoContasReceber[I]) then
              begin
                valorPago := DM.FDQConsContasReceberBaixavalor_pago.AsFloat +
                  StrToFloat(saldoContasReceber[I]);

                valorSaldo := 0;

                quitado := 'S';

                valorTotal := valorTotal - StrToFloat(saldoContasReceber[I]);
              end
              else
              begin
                valorPago := DM.FDQConsContasReceberBaixavalor_pago.AsFloat +
                  valorTotal;

                valorSaldo := DM.FDQConsContasReceberBaixavalor_saldo.AsFloat -
                  valorTotal;

                quitado := 'N';

                valorTotal := 0;
              end;

              DM.FDQAuxiliar.sql.Clear;

              DM.FDQAuxiliar.sql.Add('update conta_receber');
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
                StrToInt(idContasReceber[I]);

              DM.FDQAuxiliar.ExecSQL;

              // baixa_conta_receber
              DM.FDQMaxIdBaixaContaReceber.Close;
              DM.FDQMaxIdBaixaContaReceber.Open();
              maxIdBaixa := DM.FDQMaxIdBaixaContaRecebermaxId.AsInteger + 1;

              DM.FDQCadBaixaContasReceber.Close;
              DM.FDQCadBaixaContasReceber.Open();
              DM.FDQCadBaixaContasReceber.Append;
              DM.FDQCadBaixaContasReceberid.AsInteger := maxIdBaixa;
              DM.FDQCadBaixaContasReceberid_conta_receber.AsInteger :=
                StrToInt(idContasReceber[I]);
              DM.FDQCadBaixaContasReceberdata.AsDateTime := Data;
              DM.FDQCadBaixaContasRecebervalor.AsFloat := valorTotal;
              DM.FDQCadBaixaContasReceberid_forma_pag.AsInteger :=
                DM.FDQConsAvistaFormaPagid_forma_pag.AsInteger;
              DM.FDQCadBaixaContasReceber.Post;
            end;
            // end;
          except
            on E: Exception do
              ShowMessage('Erro!  ' + E.Message);
          end;

        end;

      end;
      DM.FDConnection1.CommitRetaining;
      if valorTotal > 0 then
      begin
        ShowMessage('Troco: ' + FloatToStr(valorTotal));
      end;
      SpdBVoltarBaixaContasReceberEdicaoClick(Sender);
    end;

  end;
end;

procedure TFCadContasReceber.SpdBVoltarBaixaContasReceberEdicaoClick
  (Sender: TObject);
begin
  inherited;
  SetLength(saldoContasReceber, 0);
  SetLength(idContasReceber, 0);
  SetLength(idCliContasReceber, 0);
  limpaArray := 'S';

  if filtro = 'CLI' then
  begin
    ComboBoxFiltroClienteContasReceberClosePopup(Sender);
  end
  else if filtro = 'VENC' then
  begin
    DateEdtFiltroVencFinalContasReceberClosePicker(Sender);
  end;

  BtnBaixaContasReceber.Visible := False;

  DM.FDQConsAvistaFormaPag.Active := False;

  SpdBConfirmaBaixaContasREceberEdicao.Visible := False;

  MudarAbaModelo(TbItemListagem, Sender);
end;

end.
