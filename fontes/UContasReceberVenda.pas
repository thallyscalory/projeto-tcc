unit UContasReceberVenda;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.DateTimeCtrls, FMX.Edit, FMX.ListBox, MultiDetailAppearanceU;

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
    procedure FormCreate(Sender: TObject);
    procedure ListViewCadContasReceberGesture(Sender: TObject;
      const EventInfo: TGestureEventInfo; var Handled: Boolean);
    procedure ComboBoxTipoReceitaCadContasReceberEnter(Sender: TObject);
    procedure BtnConfirmaCadContasReceberClick(Sender: TObject);
  private
    { Private declarations }
  public
    itemIndexCostasReceber: integer;
    { Public declarations }
  end;

var
  tipoR, datavenci, vlparc: array of string;
  itemCountContasReceber: integer;
  FContasReceberVenda: TFContasReceberVenda;

implementation

{$R *.fmx}

uses UCadCli, UConsultaProduto, UDM, UVenda1;

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

  Layout3.Visible := False;
  Layout2.Visible := False;
  Layout4.Visible := False;
  Layout1.Visible := False;
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
  DM.FDQConsFormaPag.Open();
  for I := 1 to DM.FDQConsFormaPag.RowsAffected do
  begin
    DM.FDQConsFormaPag.Close;
    DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := IntToStr(I);
    DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value := Null;
    DM.FDQConsFormaPag.Open();
    ComboBoxTipoReceitaCadContasReceber.Items.Add
      (DM.FDQConsFormaPagdescricao_forma_pag.AsString);
  end;
end;

procedure TFContasReceberVenda.FormCreate(Sender: TObject);
var
  I: integer;
  dataHoje, datavenc: TDateTime;
  listaContasReceber: TListViewItem;
begin
  Layout3.Visible := False;
  Layout2.Visible := False;
  Layout4.Visible := False;
  Layout1.Visible := False;
  dataHoje := Date;

  DM.FDQConsFormaPag.Close;
  DM.FDQConsFormaPag.ParamByName('PIdFormaPag').Value := Null;
  DM.FDQConsFormaPag.ParamByName('PDescricaoFormaPag').Value := tipoReceita;
  DM.FDQConsFormaPag.Open();

  ListViewCadContasReceber.Items.Clear;
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
    datavenci[I] := listaContasReceber.Text;
    vlparc[I] := listaContasReceber.Data
      [TMultiDetailAppearanceNames.Detail1].ToString;
    tipoR[I] := listaContasReceber.Data
      [TMultiDetailAppearanceNames.Detail2].ToString;
  end;

end;

procedure TFContasReceberVenda.ListViewCadContasReceberGesture(Sender: TObject;
  const EventInfo: TGestureEventInfo; var Handled: Boolean);
begin
  if EventInfo.GestureID = igiLongTap then
  begin
    itemIndexCostasReceber := ListViewCadContasReceber.ItemIndex;

    EdtDataVencCadContasReceber.Text := ListViewCadContasReceber.Items
      [itemIndexCostasReceber].Text;
    EdtValorCadContasReceber.Text := ListViewCadContasReceber.Items
      [itemIndexCostasReceber].Data
      [TMultiDetailAppearanceNames.Detail1].ToString;
    ComboBoxTipoReceitaCadContasReceber.Items.Add
      (ListViewCadContasReceber.Items[itemIndexCostasReceber].Data
      [TMultiDetailAppearanceNames.Detail2].ToString);
    ComboBoxTipoReceitaCadContasReceber.ItemIndex := 0;

    Layout1.Visible := True;
    Layout4.Visible := True;
    Layout2.Visible := True;
    Layout3.Visible := True;
  end;

end;

end.
