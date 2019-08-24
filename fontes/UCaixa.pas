unit UCaixa;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.ListBox, MultiDetailAppearanceU, FMX.DialogService, System.UIConsts,
  FMX.Edit, FMX.ScrollBox, FMX.Memo;

type
  TFCaixa = class(TFCadModelo)
    Layout1: TLayout;
    LytFiltroCaixa: TLayout;
    LblFiltroCaixa: TLabel;
    ComboBoxFiltroCaixa: TComboBox;
    ListViewFiltroCaixa: TListView;
    SpdBtnNovoCaixa: TSpeedButton;
    Layout2: TLayout;
    VertScrollBox1: TVertScrollBox;
    Layout3: TLayout;
    ToolBar1: TToolBar;
    Layout4: TLayout;
    Label1: TLabel;
    Label2: TLabel;
    Layout5: TLayout;
    Label3: TLabel;
    Layout6: TLayout;
    Label4: TLabel;
    LblVlAberturaCaixa: TLabel;
    Layout7: TLayout;
    Label5: TLabel;
    LblVlRecebimentosCaixa: TLabel;
    Layout8: TLayout;
    MemoVlRecebimentosCaixa: TMemo;
    Layout9: TLayout;
    Label6: TLabel;
    LblVlRetiradasCaixa: TLabel;
    Layout10: TLayout;
    MemoVlRetiradasCaixa: TMemo;
    LblCodCaixa: TLabel;
    LblDtAberturaCaixa: TLabel;
    LblDtFechamentoCaixa: TLabel;
    Label7: TLabel;
    SpdBtnVoltarInfoCaixa: TSpeedButton;
    SpdBtnNovoLancamentoCaixa: TSpeedButton;
    TbItemLancamentoCaixa: TTabItem;
    Layout11: TLayout;
    VertScrollBox2: TVertScrollBox;
    Layout12: TLayout;
    Label8: TLabel;
    ComboBoxTipoLancamentoCaixa: TComboBox;
    Layout13: TLayout;
    Label9: TLabel;
    EdtVlLancamentoCaixa: TEdit;
    Layout14: TLayout;
    Label10: TLabel;
    EdtDescricaoLancamento: TEdit;
    ToolBar2: TToolBar;
    Label11: TLabel;
    SpdBtnVoltarLancamentoCaixa: TSpeedButton;
    SpdBtnConfirmaLancamentoCaixa: TSpeedButton;
    Layout15: TLayout;
    Label12: TLabel;
    LblVlSaldoCaixa: TLabel;
    procedure ComboBoxFiltroCaixaClosePopup(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListViewFiltroCaixaItemClickEx(const Sender: TObject;
      ItemIndex: Integer; const LocalClickPos: TPointF;
      const ItemObject: TListItemDrawable);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpdBtnNovoCaixaClick(Sender: TObject);
    procedure SpdBtnVoltarInfoCaixaClick(Sender: TObject);
    procedure SpdBtnVoltarLancamentoCaixaClick(Sender: TObject);
    procedure SpdBtnNovoLancamentoCaixaClick(Sender: TObject);
    procedure SpdBtnConfirmaLancamentoCaixaClick(Sender: TObject);
  private
    { Private declarations }

    itemIndexListViewCaixa: Integer;
  public
    { Public declarations }
  end;

var
  FCaixa: TFCaixa;

implementation

{$R *.fmx}

uses FGX.Graphics, FGX.Toasts, UDM, UPrincipal;

procedure TFCaixa.ComboBoxFiltroCaixaClosePopup(Sender: TObject);
var
  dtF, dtA: TDate;
  I: Integer;
begin
  inherited;
  try
    ListViewFiltroCaixa.Items.Clear;

    case ComboBoxFiltroCaixa.ItemIndex of
      0:
        begin
          DM.FDQConsCaixa.Close;
          DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
          DM.FDQConsCaixa.Open();

          if DM.FDQConsCaixa.IsEmpty then
          begin
{$IFDEF ANDROID}
            TfgToast.Show('Não Encontrado Caixa Aberto!');
{$ENDIF}
{$IFDEF MSWINDOWS}
            ShowMessage('Não Encontrado Caixa Aberto!');
{$ENDIF}
          end;
        end;
      1:
        begin
          DM.FDQConsCaixa.Close;
          DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'N';
          DM.FDQConsCaixa.Open();

          if DM.FDQConsCaixa.IsEmpty then
          begin
{$IFDEF ANDROID}
            TfgToast.Show('Não Encontrado Caixa Fechado!');
{$ENDIF}
{$IFDEF MSWINDOWS}
            ShowMessage('Não Encontrado Caixa Fechado!');
{$ENDIF}
          end;
        end;
      2:
        begin
          DM.FDQConsCaixa.Close;
          DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := '%';
          DM.FDQConsCaixa.Open();

          if DM.FDQConsCaixa.IsEmpty then
          begin
{$IFDEF ANDROID}
            TfgToast.Show('Nenhum Caixa Encontrado!');
{$ENDIF}
{$IFDEF MSWINDOWS}
            ShowMessage('Nenhum Caixa Encontrado!');
{$ENDIF}
          end;
        end;
    end;

    if not DM.FDQConsCaixa.IsEmpty then
    begin
      I := -1;

      DM.FDQConsCaixa.First;
      while not DM.FDQConsCaixa.Eof do
      begin
        dtA := DM.FDQConsCaixadataAbertura.AsDateTime;
        dtF := DM.FDQConsCaixadataFechamento.AsDateTime;

        I := I + 1;

        ListViewFiltroCaixa.BeginUpdate;
        ListViewFiltroCaixa.Items.Add;
        ListViewFiltroCaixa.Items[I].Text := 'Caixa: ' +
          DM.FDQConsCaixaid.AsString;
        ListViewFiltroCaixa.Items[I].Purpose := TListItemPurpose.Header;
        ListViewFiltroCaixa.EndUpdate;

        I := I + 1;

        ListViewFiltroCaixa.BeginUpdate;
        ListViewFiltroCaixa.Items.Add;
        ListViewFiltroCaixa.Items[I].Text := 'Dt.A: ' + DateToStr(dtA);
        if DM.FDQConsCaixaaberto.AsString = 'N' then
          ListViewFiltroCaixa.Items[I].Text := ListViewFiltroCaixa.Items[I].Text
            + ' Dt.F: ' + DateToStr(dtF);
        ListViewFiltroCaixa.Items[I].Detail := DM.FDQConsCaixaid.AsString;
        ListViewFiltroCaixa.Items[I].Data[TMultiDetailAppearanceNames.Detail1]
          := 'Vl Abertura: ' + DM.FDQConsCaixavlAbertura.AsString +
          '  Vl Recebimento: ' + DM.FDQConsCaixavlRecebimento.AsString;
        ListViewFiltroCaixa.Items[I].Data[TMultiDetailAppearanceNames.Detail2]
          := 'Vl Retirada: ' + DM.FDQConsCaixavlRetirada.AsString;
        ListViewFiltroCaixa.Items[I].Data[TMultiDetailAppearanceNames.Detail3]
          := 'Vl Saldo: ' + DM.FDQConsCaixavlSaldo.AsString;
        ListViewFiltroCaixa.Items[I].Objects.TextObject.TextColor := claNavy;
        ListViewFiltroCaixa.EndUpdate;

        DM.FDQConsCaixa.Next;
      end;
    end;

  except
    on E: Exception do
  end;
end;

procedure TFCaixa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  inherited;
  DM.FDQConsCaixa.Close;
  DM.FDQEditCaixa.Close;
  ListViewFiltroCaixa.Items.Clear;
end;

procedure TFCaixa.FormCreate(Sender: TObject);
begin
  inherited;
  ComboBoxFiltroCaixa.ItemIndex := 0;
  ComboBoxFiltroCaixaClosePopup(Sender);
end;

procedure TFCaixa.ListViewFiltroCaixaItemClickEx(const Sender: TObject;
  ItemIndex: Integer; const LocalClickPos: TPointF;
  const ItemObject: TListItemDrawable);
begin
  inherited;
  if ItemObject is TListItemAccessory then
  begin
    itemIndexListViewCaixa := ItemIndex;

    MemoVlRecebimentosCaixa.Lines.Clear;
    MemoVlRetiradasCaixa.Lines.Clear;

    DM.FDQConsCaixa.First;
    while not DM.FDQConsCaixa.Eof do
    begin
      if DM.FDQConsCaixaid.AsString = ListViewFiltroCaixa.Items[ItemIndex].Detail
      then
      begin
        LblCodCaixa.Text := ListViewFiltroCaixa.Items[ItemIndex].Detail;
        LblDtAberturaCaixa.Text := DM.FDQConsCaixadataAbertura.AsString;
        LblDtFechamentoCaixa.Text := DM.FDQConsCaixadataFechamento.AsString;
        LblVlAberturaCaixa.Text := DM.FDQConsCaixavlAbertura.AsString;
        LblVlRecebimentosCaixa.Text := DM.FDQConsCaixavlRecebimento.AsString;
        LblVlRetiradasCaixa.Text := DM.FDQConsCaixavlRetirada.AsString;
        LblVlSaldoCaixa.Text := DM.FDQConsCaixavlSaldo.AsString;

        DM.FDQConsItemCaixa.Close;
        DM.FDQConsItemCaixa.ParamByName('PIdCaixa').Value :=
          ListViewFiltroCaixa.Items[ItemIndex].Detail;
        DM.FDQConsItemCaixa.Open();

        DM.FDQConsItemCaixa.First;
        while not DM.FDQConsItemCaixa.Eof do
        begin
          if DM.FDQConsItemCaixatipoLancamento.AsString = 'RECEBIMENTO' then
          begin
            MemoVlRecebimentosCaixa.Lines.Add
              (DM.FDQConsItemCaixadescricaoLancamento.AsString + '...R$ ' +
              DM.FDQConsItemCaixavlLancamento.AsString);
          end
          else if DM.FDQConsItemCaixatipoLancamento.AsString = 'RETIRADA' then
          begin
            MemoVlRetiradasCaixa.Lines.Add
              (DM.FDQConsItemCaixadescricaoLancamento.AsString + '...R$ ' +
              DM.FDQConsItemCaixavlLancamento.AsString);
          end;

          DM.FDQConsItemCaixa.Next;
        end;
      end;

      DM.FDQConsCaixa.Next;
    end;
    MudarAbaModelo(TbItemedicao, Sender);
  end
  else
  begin
    DM.FDQConsCaixa.First;
    while not DM.FDQConsCaixa.Eof do
    begin
      if DM.FDQConsCaixaid.AsString = ListViewFiltroCaixa.Items[ItemIndex].Detail
      then
      begin
        if DM.FDQConsCaixaaberto.AsString = 'S' then
        begin
          TDialogService.MessageDialog('Deseja Fechar o Caixa (' +
            ListViewFiltroCaixa.Items[ItemIndex].Detail + ')?',
            System.UITypes.TMsgDlgType.mtInformation,
            [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo],
            System.UITypes.TMsgDlgBtn.mbYes, 0,
            procedure(const AResult: TModalResult)
            begin
              case AResult of
                mrYES:
                  begin
                    try
                      DM.FDQEditCaixa.Close;
                      DM.FDQEditCaixa.Open('select * from caixa');
                      DM.FDQEditCaixa.SQL.Clear;
                      DM.FDQEditCaixa.SQL.Add('update caixa set');
                      DM.FDQEditCaixa.SQL.Add
                        (' dataFechamento = :dataFechamento');
                      DM.FDQEditCaixa.SQL.Add(', aberto = :aberto');
                      DM.FDQEditCaixa.SQL.Add(' where id = :id');

                      DM.FDQEditCaixa.Params.ParamByName('dataFechamento')
                        .AsDateTime := Now;
                      DM.FDQEditCaixa.Params.ParamByName('aberto')
                        .AsString := 'N';
                      DM.FDQEditCaixa.Params.ParamByName('id').AsInteger :=
                        StrToInt(ListViewFiltroCaixa.Items[ItemIndex].Detail);
                      DM.FDQEditCaixa.ExecSQL;

{$IFDEF ANDROID}
                      TfgToast.Show('Caixa (' + ListViewFiltroCaixa.Items
                        [ItemIndex].Detail + ') Fechado!');
{$ENDIF}
{$IFDEF MSWINDOWS}
                      ShowMessage('Caixa (' + ListViewFiltroCaixa.Items
                        [ItemIndex].Detail + ') Fechado!');
{$ENDIF}
                      ComboBoxFiltroCaixaClosePopup(Sender);
                    except
                      on E: Exception do
                        ShowMessage(E.Message);
                    end;
                  end;
                mrNo:
                  begin
                    // ShowMessage('You chose No');

                  end;
              end;
            end);
        end;
      end;

      DM.FDQConsCaixa.Next;
    end;

  end;

end;

procedure TFCaixa.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

procedure TFCaixa.SpdBtnConfirmaLancamentoCaixaClick(Sender: TObject);
var
  valida: Boolean;
begin
  inherited;
  try
    valida := True;

    if (EdtVlLancamentoCaixa.Text.IsEmpty) or
      (EdtDescricaoLancamento.Text.IsEmpty) then
    begin
      valida := False;
{$IFDEF ANDROID}
      TfgToast.Show('Os Campos Não Pode estar em Branco!');
{$ENDIF}
{$IFDEF MSWINDOWS}
      ShowMessage('Os Campos Não Pode estar em Branco!');
{$ENDIF}
    end;

    if valida then
    begin
      if ComboBoxTipoLancamentoCaixa.ItemIndex = 0 then
      begin
        DM.FDQConsCaixa.First;
        while not DM.FDQConsCaixa.Eof do
        begin
          if DM.FDQConsCaixaid.AsString = ListViewFiltroCaixa.Items
            [itemIndexListViewCaixa].Detail then
          begin
            // item caixa
            DM.FDQEditItemCaixa.SQL.Clear;
            DM.FDQEditItemCaixa.SQL.Add('select * from itemCaixa');
            DM.FDQEditItemCaixa.Close;
            DM.FDQEditItemCaixa.Open();
            DM.FDQEditItemCaixa.Append;
            DM.FDQEditItemCaixaidCaixa.AsInteger := DM.FDQConsCaixaid.AsInteger;
            DM.FDQEditItemCaixadataLancamento.AsDateTime := Now;
            DM.FDQEditItemCaixavlLancamento.AsFloat :=
              StrToFloat(EdtVlLancamentoCaixa.Text);
            DM.FDQEditItemCaixadescricaoLancamento.AsString :=
              EdtDescricaoLancamento.Text;
            DM.FDQEditItemCaixatipoLancamento.AsString :=
              ComboBoxTipoLancamentoCaixa.Selected.Text;
            DM.FDQEditItemCaixa.Post;

            // caixa
            DM.FDQEditCaixa.SQL.Clear;
            DM.FDQEditCaixa.SQL.Add('select * from caixa');
            DM.FDQEditCaixa.Close;
            DM.FDQEditCaixa.Open();
            DM.FDQEditCaixa.SQL.Clear;
            DM.FDQEditCaixa.SQL.Add('update caixa set');
            DM.FDQEditCaixa.SQL.Add(' vlRecebimento = :vlRecebimento');
            DM.FDQEditCaixa.SQL.Add(', vlSaldo = :vlSaldo');
            DM.FDQEditCaixa.SQL.Add(' where id = :id');

            DM.FDQEditCaixa.Params.ParamByName('vlRecebimento').AsFloat :=
              DM.FDQConsCaixavlRecebimento.AsFloat +
              StrToFloat(EdtVlLancamentoCaixa.Text);
            DM.FDQEditCaixa.Params.ParamByName('vlSaldo').AsFloat :=
              DM.FDQConsCaixavlSaldo.AsFloat +
              StrToFloat(EdtVlLancamentoCaixa.Text);
            DM.FDQEditCaixa.Params.ParamByName('id').AsInteger :=
              DM.FDQConsCaixaid.AsInteger;
            DM.FDQEditCaixa.ExecSQL;
          end;

          DM.FDQConsCaixa.Next;
        end;
      end
      else if ComboBoxTipoLancamentoCaixa.ItemIndex = 1 then
      begin
        DM.FDQConsCaixa.First;
        while not DM.FDQConsCaixa.Eof do
        begin
          if DM.FDQConsCaixaid.AsString = ListViewFiltroCaixa.Items
            [itemIndexListViewCaixa].Detail then
          begin
            // item caixa
            DM.FDQEditItemCaixa.SQL.Clear;
            DM.FDQEditItemCaixa.SQL.Add('select * from itemCaixa');
            DM.FDQEditItemCaixa.Close;
            DM.FDQEditItemCaixa.Open();
            DM.FDQEditItemCaixa.Append;
            DM.FDQEditItemCaixaidCaixa.AsInteger := DM.FDQConsCaixaid.AsInteger;
            DM.FDQEditItemCaixadataLancamento.AsDateTime := Now;
            DM.FDQEditItemCaixavlLancamento.AsFloat :=
              StrToFloat(EdtVlLancamentoCaixa.Text);
            DM.FDQEditItemCaixadescricaoLancamento.AsString :=
              EdtDescricaoLancamento.Text;
            DM.FDQEditItemCaixatipoLancamento.AsString :=
              ComboBoxTipoLancamentoCaixa.Selected.Text;
            DM.FDQEditItemCaixa.Post;

            // caixa
            DM.FDQEditCaixa.SQL.Clear;
            DM.FDQEditCaixa.SQL.Add('select * from caixa');
            DM.FDQEditCaixa.Close;
            DM.FDQEditCaixa.Open();
            DM.FDQEditCaixa.SQL.Clear;
            DM.FDQEditCaixa.SQL.Add('update caixa set');
            DM.FDQEditCaixa.SQL.Add(' vlRetirada = :vlRetirada');
            DM.FDQEditCaixa.SQL.Add(', vlSaldo = :vlSaldo');
            DM.FDQEditCaixa.SQL.Add(' where id = :id');

            DM.FDQEditCaixa.Params.ParamByName('vlRetirada').AsFloat :=
              DM.FDQConsCaixavlRetirada.AsFloat +
              StrToFloat(EdtVlLancamentoCaixa.Text);
            DM.FDQEditCaixa.Params.ParamByName('vlSaldo').AsFloat :=
              DM.FDQConsCaixavlSaldo.AsFloat -
              StrToFloat(EdtVlLancamentoCaixa.Text);
            DM.FDQEditCaixa.Params.ParamByName('id').AsInteger :=
              DM.FDQConsCaixaid.AsInteger;
            DM.FDQEditCaixa.ExecSQL;
          end;

          DM.FDQConsCaixa.Next;
        end;
      end;

      MudarAbaModelo(TbItemListagem, Sender);
      ComboBoxFiltroCaixaClosePopup(Sender);
    end;
  except
    on E: Exception do
  end;

end;

procedure TFCaixa.SpdBtnNovoCaixaClick(Sender: TObject);
begin
  inherited;
  DM.FDQConsCaixa.Close;
  DM.FDQConsCaixa.ParamByName('PCaixaAberto').Value := 'S';
  DM.FDQConsCaixa.Open();

  if not DM.FDQConsCaixa.IsEmpty then
  begin
{$IFDEF ANDROID}
    TfgToast.Show('Já Existe um Caixa Aberto!');
{$ENDIF}
{$IFDEF MSWINDOWS}
    ShowMessage('Já Existe um Caixa Aberto!');
{$ENDIF}
  end
  else
  begin
    TDialogService.MessageDialog('Deseja Abrir o Caixa?',
      System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo],
      System.UITypes.TMsgDlgBtn.mbYes, 1,

      procedure(const AResult: TModalResult)
      begin
        case AResult of
          mrYES:
            // ShowMessage('You chose Yes');
            begin
              try
                InputBox('Informe o Valor de Abertura:', '', '0,00',
                  procedure(const AResult: TModalResult; const AValue: string)
                  begin
                    case AResult of
                      { Detect which button was pushed and show a different message }
                      mrOk:
                        begin
                          // AValue is the result of the inputbox dialog
                          DM.FDQEditCaixa.Close;
                          DM.FDQEditCaixa.Open('select * from caixa');
                          DM.FDQEditCaixa.Append;
                          DM.FDQEditCaixadataAbertura.AsDateTime := Now;
                          DM.FDQEditCaixavlAbertura.AsFloat :=
                            StrToFloat(AValue);
                          DM.FDQEditCaixavlSaldo.AsFloat := StrToFloat(AValue);
                          DM.FDQEditCaixaaberto.AsString := 'S';
                          DM.FDQEditCaixa.Post;

                          ComboBoxFiltroCaixa.ItemIndex := 0;
                          ComboBoxFiltroCaixaClosePopup(Sender);
                        end;
                      mrCancel:
                        begin

                        end;
                    end;
                  end);
              except
                on E: Exception do
                  ShowMessage(E.Message);
              end;
            end;
          mrNo:
            // ShowMessage('You chose No');
          end;
        end);
      end;
    end;

    procedure TFCaixa.SpdBtnNovoLancamentoCaixaClick(Sender: TObject);
    var
      validaF: Boolean;
    begin
      inherited;
      validaF := True;

      DM.FDQConsCaixa.First;
      while not DM.FDQConsCaixa.Eof do
      begin
        if DM.FDQConsCaixaid.AsString = ListViewFiltroCaixa.Items
          [itemIndexListViewCaixa].Detail then
        begin
          if DM.FDQConsCaixaaberto.AsString = 'N' then
          begin
            validaF := False;
{$IFDEF ANDROID}
            TfgToast.Show('Caixa já Fechado!');
{$ENDIF}
{$IFDEF MSWINDOWS}
            ShowMessage('Caixa já Fechado!');
{$ENDIF}
          end;

          if validaF then
          begin
            ComboBoxTipoLancamentoCaixa.ItemIndex := 0;
            EdtVlLancamentoCaixa.Text := EmptyStr;
            EdtDescricaoLancamento.Text := EmptyStr;
            MudarAbaModelo(TbItemLancamentoCaixa, Sender);
            Break;
          end;
        end;

        DM.FDQConsCaixa.Next;
      end;
    end;

    procedure TFCaixa.SpdBtnVoltarInfoCaixaClick(Sender: TObject);
    begin
      inherited;
      MudarAbaModelo(TbItemListagem, Sender);
    end;

    procedure TFCaixa.SpdBtnVoltarLancamentoCaixaClick(Sender: TObject);
    begin
      inherited;
      MudarAbaModelo(TbItemedicao, Sender);
    end;

end.
