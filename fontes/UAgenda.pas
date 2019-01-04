unit UAgenda;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.ListView, FMX.DateTimeCtrls, FMX.Controls.Presentation, FMX.StdCtrls,
  FMX.Layouts, MultiDetailAppearanceU, System.Rtti, System.Bindings.Outputs,
  FMX.Bind.Editors, Data.Bind.EngExt, FMX.Bind.DBEngExt, Data.Bind.Components,
  Data.Bind.DBScope, System.Notification, FMX.ScrollBox, FMX.Memo,
  System.Actions, FMX.ActnList, FMX.ListBox, FMX.VirtualKeyboard, System.Math,
  FMX.Platform;

type
  TFAgenda = class(TForm)
    TabControl1: TTabControl;
    TbItemPesquisa: TTabItem;
    TbItemEdicao: TTabItem;
    LytFiltroDataVencContasReceber: TLayout;
    Label2: TLabel;
    Label3: TLabel;
    DateEdtFiltroVencInicialContasReceber: TDateEdit;
    Label4: TLabel;
    DateEdtFiltroVencFinalContasReceber: TDateEdit;
    ListView1: TListView;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkListControlToField1: TLinkListControlToField;
    NotificationCenter1: TNotificationCenter;
    ToolBar1: TToolBar;
    Label1: TLabel;
    SpdBNovo: TSpeedButton;
    Label5: TLabel;
    Memo1: TMemo;
    ToolBar2: TToolBar;
    Layout1: TLayout;
    DateEdit1: TDateEdit;
    TimeEdit1: TTimeEdit;
    Label6: TLabel;
    Label7: TLabel;
    SpdBEditarEdicao: TSpeedButton;
    SpdBConfirmarEdicao: TSpeedButton;
    SpdBVoltarEdicao: TSpeedButton;
    ActionList1: TActionList;
    ActMudarAba: TChangeTabAction;
    Label8: TLabel;
    ComboBoxStatus: TComboBox;
    SpdBVoltarPesquisa: TSpeedButton;
    procedure DateEdtFiltroVencFinalContasReceberClosePicker(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpdBNovoClick(Sender: TObject);
    procedure SpdBConfirmarEdicaoClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure SpdBEditarEdicaoClick(Sender: TObject);
    procedure SpdBVoltarEdicaoClick(Sender: TObject);
    procedure ListView1Gesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ListView1ItemClickEx(const Sender: TObject; ItemIndex: Integer;
      const LocalClickPos: TPointF; const ItemObject: TListItemDrawable);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpdBVoltarPesquisaClick(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure TimeEdit1Enter(Sender: TObject);
    procedure ComboBoxStatusEnter(Sender: TObject);
    procedure Memo1Exit(Sender: TObject);
    procedure DateEdtFiltroVencInicialContasReceberClosePicker(Sender: TObject);
    procedure Memo1Click(Sender: TObject);
  private
    crud: string;
    TecladoVirtualVisible: Boolean;
    { Private declarations }

    procedure MudarAba(ATabItem: TTabItem; Sender: TObject);
    procedure HabilitaCampos;
    procedure DesabilitaCampos;
    procedure LimpaCampos;
    procedure EsconderTeclado;
    procedure MostrarTeclado(const AControl: TFmxObject);

  public
    { Public declarations }
  end;

var
  FAgenda: TFAgenda;

implementation

{$R *.fmx}

uses UDM, UPrincipal, FGX.Toasts, FGX.Graphics;

procedure TFAgenda.Button1Click(Sender: TObject);
begin
  NotificationCenter1.CancelNotification('MinhaNotificacao');
end;

procedure TFAgenda.ComboBoxStatusEnter(Sender: TObject);
begin
  TecladoVirtualVisible := False;
end;

procedure TFAgenda.DateEdit1Enter(Sender: TObject);
begin
  TecladoVirtualVisible := False;
end;

procedure TFAgenda.DateEdtFiltroVencFinalContasReceberClosePicker
  (Sender: TObject);
var
  dataVencInicio, dataVencFinal: TDateTime;
begin
  dataVencInicio := DateEdtFiltroVencInicialContasReceber.Date +
    StrToTime('00:00:00');
  dataVencFinal := DateEdtFiltroVencFinalContasReceber.Date +
    StrToTime('23:59:00');

  try
    if dataVencInicio > dataVencFinal then
    begin
      ShowMessage('Processo cancelado!' + #13#10 +
        'A data inicial não pode ser maior que a data final.');
      DateEdtFiltroVencInicialContasReceber.Date := Date;
      DateEdtFiltroVencFinalContasReceber.Date := Date;
    end
    else
    begin
      DM.FDQConsAgenda.Active := False;
      DM.FDQConsAgenda.Close;
      DM.FDQConsAgenda.ParamByName('PDataVencInicio').Value := dataVencInicio;
      DM.FDQConsAgenda.ParamByName('PDataVencFinal').Value := dataVencFinal;
      DM.FDQConsAgenda.Open();
      DM.FDQConsAgenda.Active := True;
    end;
  except
    on E: Exception do
      ShowMessage('Erro!' + #13#10 + E.Message);
  end;
end;

procedure TFAgenda.DateEdtFiltroVencInicialContasReceberClosePicker
  (Sender: TObject);
begin
  DateEdtFiltroVencFinalContasReceberClosePicker(Sender);
end;

procedure TFAgenda.DesabilitaCampos;
begin
  SpdBEditarEdicao.Visible := True;
  SpdBConfirmarEdicao.Visible := False;
  Memo1.ReadOnly := True;
  DateEdit1.Enabled := False;
  TimeEdit1.Enabled := False;
  ComboBoxStatus.Enabled := False;
end;

procedure TFAgenda.EsconderTeclado;
var
  keyboard: IFMXVirtualKeyboardService;
begin
  TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService,
    IInterface(keyboard));
  if (keyboard <> nil) then
    keyboard.HideVirtualKeyboard;
end;

procedure TFAgenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM.FDQConsAgenda.Active := False;
end;

procedure TFAgenda.FormCreate(Sender: TObject);
begin
  TabControl1.ActiveTab := TbItemPesquisa;
  TabControl1.TabPosition := TTabPosition.None;
  DateEdtFiltroVencInicialContasReceber.Date := 0;
  DateEdtFiltroVencFinalContasReceberClosePicker(Sender);

end;

procedure TFAgenda.FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
  Shift: TShiftState);
var
  keyboard: IFMXVirtualKeyboardService;
begin
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
      if TabControl1.ActiveTab = TbItemEdicao then
      begin
        SpdBVoltarEdicaoClick(Sender);
      end
      else if TabControl1.ActiveTab = TbItemPesquisa then
      begin
        Close;
      end;
    end;
  end;
end;

procedure TFAgenda.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TecladoVirtualVisible := False;
end;

procedure TFAgenda.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TecladoVirtualVisible := True;
end;

procedure TFAgenda.HabilitaCampos;
begin
  SpdBEditarEdicao.Visible := False;
  SpdBConfirmarEdicao.Visible := True;
  Memo1.ReadOnly := False;
  DateEdit1.Enabled := True;
  TimeEdit1.Enabled := True;
  ComboBoxStatus.Enabled := True;
end;

procedure TFAgenda.LimpaCampos;
begin
  Memo1.Lines.Clear;
  DateEdit1.Date := Date;
  TimeEdit1.Time := Time;
  ComboBoxStatus.ItemIndex := 0;
end;

procedure TFAgenda.ListView1Gesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if EventInfo.GestureID = igiLongTap then
  begin
    MessageDlg('Resolvido?', System.UITypes.TMsgDlgType.mtInformation,
      [System.UITypes.TMsgDlgBtn.mbYes, System.UITypes.TMsgDlgBtn.mbNo], 0,
      procedure(const AResult: System.UITypes.TModalResult)
      begin
        case AResult of
          mrYES:
            begin
              // caso sim
              try
                DM.FDQAuxiliar.SQL.Clear;
                DM.FDQAuxiliar.SQL.Add('update agendamento');
                DM.FDQAuxiliar.SQL.Add(' set data_resolv = :DataResolv,');
                DM.FDQAuxiliar.SQL.Add(' status = :Status');
                DM.FDQAuxiliar.SQL.Add(' where id = :Id');
                DM.FDQAuxiliar.Params.ParamByName('DataResolv')
                  .AsDateTime := Now;
                DM.FDQAuxiliar.Params.ParamByName('Status').AsString := 'R';
                DM.FDQAuxiliar.Params.ParamByName('Id').AsInteger :=
                  DM.FDQConsAgendaid.AsInteger;
                DM.FDQAuxiliar.ExecSQL;

                DM.FDConnection1.CommitRetaining;

                NotificationCenter1.CancelNotification
                  (DM.FDQConsAgendaid.AsString);

                DateEdtFiltroVencFinalContasReceberClosePicker(Sender);
              except
                on E: Exception do
                begin
                  DM.FDConnection1.RollbackRetaining;
                  ShowMessage('Erro!' + #13#10 + E.Message);
                end;
              end;
            end;
          mrNo:
            begin
              // caso não
            end;
        end;
      end);
  end;
end;

procedure TFAgenda.ListView1ItemClickEx(const Sender: TObject;
ItemIndex: Integer; const LocalClickPos: TPointF;
const ItemObject: TListItemDrawable);
begin
  if ItemObject is TListItemAccessory then
  begin
    Label7.Text := 'Detalhes';
    DesabilitaCampos;
    LimpaCampos;

    Memo1.Text := DM.FDQConsAgendamensagem.AsString;
    DateEdit1.Date := DM.FDQConsAgendadata_agend.AsDateTime;
    TimeEdit1.Time := DM.FDQConsAgendadata_agend.AsDateTime;
    if DM.FDQConsAgendastatus.AsString = 'A' then
      ComboBoxStatus.ItemIndex := 0
    else if DM.FDQConsAgendastatus.AsString = 'R' then
      ComboBoxStatus.ItemIndex := 1;

    MudarAba(TbItemEdicao, Sender);
  end;
end;

procedure TFAgenda.Memo1Click(Sender: TObject);
begin
  MostrarTeclado(Memo1);
end;

procedure TFAgenda.Memo1Exit(Sender: TObject);
begin
  EsconderTeclado;
end;

procedure TFAgenda.MostrarTeclado(const AControl: TFmxObject);
var
  keyboard: IFMXVirtualKeyboardService;
begin
  TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService,
    IInterface(keyboard));
  if (keyboard <> nil) then
    keyboard.ShowVirtualKeyboard(AControl);
end;

procedure TFAgenda.MudarAba(ATabItem: TTabItem; Sender: TObject);
begin
  ActMudarAba.Tab := ATabItem;
  ActMudarAba.ExecuteTarget(Sender);
end;

procedure TFAgenda.SpdBConfirmarEdicaoClick(Sender: TObject);
var
  MyNotification: TNotification;
  dataAgendada, dataCad: TDateTime;
  id: Integer;
  status: string;
begin
  EsconderTeclado;
  dataAgendada := DateEdit1.Date + TimeEdit1.Time;
  dataCad := Now;

  if ComboBoxStatus.ItemIndex = 0 then
    status := 'A'
  else if ComboBoxStatus.ItemIndex = 1 then
    status := 'R';

  DM.FDQConsValidAgenda.Close;
  DM.FDQConsValidAgenda.ParamByName('PDateAgend').Value := dataAgendada;
  DM.FDQConsValidAgenda.Open();
  if (not DM.FDQConsValidAgenda.IsEmpty) and (ComboBoxStatus.ItemIndex = 0) then
  begin
    ShowMessage('Processo Cancelado! ' + #13#10 +
      'Já existe compromisso agendado nesta data.');
  end
  else
  begin
    try
      if crud = 'inserir' then
      begin
        DM.FDQMaxIdAgenda.Close;
        DM.FDQMaxIdAgenda.Open();
        id := DM.FDQMaxIdAgendamaxid.AsInteger + 1;

        DM.FDQCadAgenda.Close;
        DM.FDQCadAgenda.Open();
        DM.FDQCadAgenda.Append;
        DM.FDQCadAgendamensagem.AsString := Memo1.Text;
        DM.FDQCadAgendadata_cad.AsDateTime := dataCad;
        DM.FDQCadAgendadata_agend.AsDateTime := dataAgendada;
        if status = 'R' then
          DM.FDQCadAgendadata_resolv.AsDateTime := dataCad;
        DM.FDQCadAgendastatus.AsString := status;
        DM.FDQCadAgenda.Post;

        MyNotification := NotificationCenter1.CreateNotification;
        try
          MyNotification.Name := IntToStr(id);
          MyNotification.Title := 'Lembrete!';
          MyNotification.AlertBody := Memo1.Text;
          MyNotification.FireDate := dataAgendada;

          // para repetir a notificacao
          // MyNotification.RepeatInterval := TRepeatInterval.Minute;

          NotificationCenter1.ScheduleNotification(MyNotification);
        finally
          MyNotification.DisposeOf;
        end;

        DM.FDConnection1.CommitRetaining;
        LimpaCampos;
        DateEdtFiltroVencFinalContasReceberClosePicker(Sender);

        TfgToast.Show('Compromisso agendado com sucesso!');

        MudarAba(TbItemPesquisa, Sender);
      end
      else if crud = 'editar' then
      begin
        DM.FDQAuxiliar.SQL.Clear;
        DM.FDQAuxiliar.SQL.Add('update agendamento');
        DM.FDQAuxiliar.SQL.Add(' set mensagem = :Mensagem,');
        DM.FDQAuxiliar.SQL.Add(' data_agend = :DataAgend,');
        if status = 'R' then
          DM.FDQAuxiliar.SQL.Add(' data_resolv = :DataResolv,');
        DM.FDQAuxiliar.SQL.Add(' status = :Status');
        DM.FDQAuxiliar.SQL.Add(' where id = :Id');

        DM.FDQAuxiliar.Params.ParamByName('Mensagem').AsString := Memo1.Text;
        DM.FDQAuxiliar.Params.ParamByName('DataAgend').AsDateTime :=
          dataAgendada;
        if status = 'R' then
          DM.FDQAuxiliar.Params.ParamByName('DataResolv').AsDateTime := Now;
        DM.FDQAuxiliar.Params.ParamByName('Status').AsString := status;
        DM.FDQAuxiliar.Params.ParamByName('Id').AsInteger :=
          DM.FDQConsAgendaid.AsInteger;
        DM.FDQAuxiliar.ExecSQL;

        NotificationCenter1.CancelNotification(DM.FDQConsAgendaid.AsString);

        if status = 'A' then
        begin
          MyNotification := NotificationCenter1.CreateNotification;
          try
            MyNotification.Name := DM.FDQConsAgendaid.AsString;
            MyNotification.Title := 'Lembrete!';
            MyNotification.AlertBody := Memo1.Text;
            MyNotification.FireDate := dataAgendada;

            // para repetir a notificacao
            // MyNotification.RepeatInterval := TRepeatInterval.Minute;

            NotificationCenter1.ScheduleNotification(MyNotification);
          finally
            MyNotification.DisposeOf;
          end;
        end;

        DM.FDConnection1.CommitRetaining;
        LimpaCampos;
        DateEdtFiltroVencFinalContasReceberClosePicker(Sender);
        MudarAba(TbItemPesquisa, Sender);
      end;
    except
      on E: Exception do
      begin
        DM.FDConnection1.RollbackRetaining;
        ShowMessage('Erro!' + #13#10 + E.Message);
      end;
    end;
  end;
end;

procedure TFAgenda.SpdBEditarEdicaoClick(Sender: TObject);
begin
  Label7.Text := 'Editando';
  crud := 'editar';
  HabilitaCampos;
end;

procedure TFAgenda.SpdBNovoClick(Sender: TObject);
begin
  crud := 'inserir';
  Label7.Text := 'Cadastro';
  LimpaCampos;
  HabilitaCampos;
  MudarAba(TbItemEdicao, Sender);
end;

procedure TFAgenda.SpdBVoltarEdicaoClick(Sender: TObject);
begin
  LimpaCampos;
  MudarAba(TbItemPesquisa, Sender);
end;

procedure TFAgenda.SpdBVoltarPesquisaClick(Sender: TObject);
begin
  Close;
end;

procedure TFAgenda.TimeEdit1Enter(Sender: TObject);
begin
  TecladoVirtualVisible := False;
end;

end.
