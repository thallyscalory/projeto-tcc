unit UContasReceberVenda;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.DateTimeCtrls, FMX.Edit, FMX.ListBox, MultiDetailAppearanceU,
  FMX.VirtualKeyboard, FMX.Platform;

type
  TFContasReceberVenda = class(TForm)
    LytBase: TLayout;
    ListViewCadContasReceber: TListView;
    Layout1: TLayout;
    BtnConfirmaCadContasReceber: TButton;
    Layout2: TLayout;
    EdtValorCadContasReceber: TEdit;
    LblValorCadContasReceber: TLabel;
    Layout3: TLayout;
    LblDataVencCadContasReceber: TLabel;
    EdtDataVencCadContasReceber: TDateEdit;
    Layout4: TLayout;
    LblTipoReceitaCadContasReceber: TLabel;
    ComboBoxTipoReceitaCadContasReceber: TComboBox;
    LytGeralEdicaoContasReceber: TLayout;
    procedure FormCreate(Sender: TObject);
    procedure ListViewCadContasReceberGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ComboBoxTipoReceitaCadContasReceberEnter(Sender: TObject);
    procedure BtnConfirmaCadContasReceberClick(Sender: TObject);
    procedure ListViewCadContasReceberItemClick(const Sender: TObject;
      const AItem: TListViewItem);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure EdtValorCadContasReceberClick(Sender: TObject);
  private
    { Private declarations }
  public
    itemIndexCostasReceber: integer;

    procedure MostrarTeclado(const AControl: TFmxObject);
    { Public declarations }
  end;

var
  tipoR, datavenci, vlparc: array of string;
  itemCountContasReceber: integer;
  FContasReceberVenda: TFContasReceberVenda;

implementation

{$R *.fmx}

uses UCadCli, UConsultaProduto, UDM, UVenda1, UPrincipal;

procedure TFContasReceberVenda.BtnConfirmaCadContasReceberClick
  (Sender: TObject);
begin
  ListViewCadContasReceber.BeginUpdate;
  ListViewCadContasReceber.Items[itemIndexCostasReceber].Text :=
    EdtDataVencCadContasReceber.Text;
  ListViewCadContasReceber.Items[itemIndexCostasReceber].Data
    [TMultiDetailAppearanceNames.Detail1] := EdtValorCadContasReceber.Text;
  ListViewCadContasReceber.Items[itemIndexCostasReceber].Data
    [TMultiDetailAppearanceNames.Detail2] :=
    ComboBoxTipoReceitaCadContasReceber.Selected.Text;
  ListViewCadContasReceber.EndUpdate;

  datavenci[itemIndexCostasReceber] := EdtDataVencCadContasReceber.Text;
  vlparc[itemIndexCostasReceber] := EdtValorCadContasReceber.Text;
  tipoR[itemIndexCostasReceber] := ComboBoxTipoReceitaCadContasReceber.
    Selected.Text;

  LytGeralEdicaoContasReceber.Visible := False;
end;

procedure TFContasReceberVenda.ComboBoxTipoReceitaCadContasReceberEnter
  (Sender: TObject);
var
  I: integer;
begin
  ComboBoxTipoReceitaCadContasReceber.Items.Clear;
  DM.FDQConsFormaPag.Close;
  DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := '%';
  DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value := Null;
  DM.FDQConsFormaPag.ParamByName('PStatusFormaPag').Value := 'A';
  DM.FDQConsFormaPag.Open();

  DM.FDQConsFormaPag.First;
  while not DM.FDQConsFormaPag.Eof do
  begin
    ComboBoxTipoReceitaCadContasReceber.Items.Add
      (DM.FDQConsFormaPagdescricao_forma_pag.AsString);

    DM.FDQConsFormaPag.Next;
  end;
end;

procedure TFContasReceberVenda.EdtValorCadContasReceberClick(Sender: TObject);
begin
  MostrarTeclado(EdtValorCadContasReceber);
end;

procedure TFContasReceberVenda.FormCreate(Sender: TObject);
var
  I: integer;
  dataHoje, datavenc: TDateTime;
  listaContasReceber: TListViewItem;
begin
  LytGeralEdicaoContasReceber.Visible := False;
  dataHoje := Date;

  DM.FDQConsFormaPag.Close;
  DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
  DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value := tipoReceita;
  DM.FDQConsFormaPag.Open();

  ListViewCadContasReceber.Items.Clear;

  if vendaEntrada = 'S' then
  begin
    ListViewCadContasReceber.BeginUpdate;
    listaContasReceber := ListViewCadContasReceber.Items.Add;
    listaContasReceber.Text := DateTimeToStr(dataHoje);
    listaContasReceber.Data[TMultiDetailAppearanceNames.Detail1] := vlParcela;
    listaContasReceber.Data[TMultiDetailAppearanceNames.Detail2] := 'dinheiro';
    ListViewCadContasReceber.EndUpdate;

    vendaEntrada := 'N';

    numParcela := numParcela - 1;
  end;

  for I := 1 to numParcela do
  begin
    if DM.FDQConsFormaPagavista_forma_pag.AsString = 'S' then
    begin
      ListViewCadContasReceber.BeginUpdate;
      listaContasReceber := ListViewCadContasReceber.Items.Add;
      listaContasReceber.Text := DateTimeToStr(dataHoje);
      listaContasReceber.Data[TMultiDetailAppearanceNames.Detail1] := vlParcela;
      listaContasReceber.Data[TMultiDetailAppearanceNames.Detail2] :=
        tipoReceita;
      ListViewCadContasReceber.EndUpdate;
    end
    else
    begin
      datavenc := IncMonth(dataHoje, I);

      ListViewCadContasReceber.BeginUpdate;
      listaContasReceber := ListViewCadContasReceber.Items.Add;
      listaContasReceber.Text := DateTimeToStr(datavenc);
      listaContasReceber.Data[TMultiDetailAppearanceNames.Detail1] := vlParcela;
      listaContasReceber.Data[TMultiDetailAppearanceNames.Detail2] :=
        tipoReceita;
      ListViewCadContasReceber.EndUpdate;

    end;
  end;

  itemCountContasReceber := ListViewCadContasReceber.ItemCount;

  SetLength(tipoR, ListViewCadContasReceber.ItemCount);
  SetLength(vlparc, ListViewCadContasReceber.ItemCount);
  SetLength(datavenci, ListViewCadContasReceber.ItemCount);

  for I := 0 to ListViewCadContasReceber.ItemCount - 1 do
  begin
    datavenci[I] := ListViewCadContasReceber.Items[I].Text;
    vlparc[I] := ListViewCadContasReceber.Items[I].Data
      [TMultiDetailAppearanceNames.Detail1].ToString;
    tipoR[I] := ListViewCadContasReceber.Items[I].Data
      [TMultiDetailAppearanceNames.Detail2].ToString;
  end;

end;

procedure TFContasReceberVenda.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TecladoVirtualVisible := False;
end;

procedure TFContasReceberVenda.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TecladoVirtualVisible := True;
end;

procedure TFContasReceberVenda.ListViewCadContasReceberGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  { if EventInfo.GestureID = igiLongTap then
    begin
    itemIndexCostasReceber := ListViewCadContasReceber.ItemIndex;

    EdtDataVencCadContasReceber.Text := ListViewCadContasReceber.Items
    [itemIndexCostasReceber].Text;
    EdtValorCadContasReceber.Text := ListViewCadContasReceber.Items
    [itemIndexCostasReceber].Data
    [TMultiDetailAppearanceNames.Detail1].ToString;

    ComboBoxTipoReceitaCadContasReceber.Items.Clear;
    ComboBoxTipoReceitaCadContasReceber.Items.Add
    (ListViewCadContasReceber.Items[itemIndexCostasReceber].Data
    [TMultiDetailAppearanceNames.Detail2].ToString);
    ComboBoxTipoReceitaCadContasReceber.ItemIndex := 0;

    LytGeralEdicaoContasReceber.Visible := True;
    end; }

end;

procedure TFContasReceberVenda.ListViewCadContasReceberItemClick
  (const Sender: TObject; const AItem: TListViewItem);
begin
  itemIndexCostasReceber := ListViewCadContasReceber.ItemIndex;

  EdtDataVencCadContasReceber.Text := ListViewCadContasReceber.Items
    [itemIndexCostasReceber].Text;
  EdtValorCadContasReceber.Text := ListViewCadContasReceber.Items
    [itemIndexCostasReceber].Data[TMultiDetailAppearanceNames.Detail1].ToString;

  ComboBoxTipoReceitaCadContasReceber.Items.Clear;
  ComboBoxTipoReceitaCadContasReceber.Items.Add
    (ListViewCadContasReceber.Items[itemIndexCostasReceber].Data
    [TMultiDetailAppearanceNames.Detail2].ToString);
  ComboBoxTipoReceitaCadContasReceber.ItemIndex := 0;

  LytGeralEdicaoContasReceber.Visible := True;
end;

procedure TFContasReceberVenda.MostrarTeclado(const AControl: TFmxObject);
var
  keyboard: IFMXVirtualKeyboardService;
begin
  TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService,
    IInterface(keyboard));
  if (keyboard <> nil) then
    keyboard.ShowVirtualKeyboard(AControl);
end;

end.
