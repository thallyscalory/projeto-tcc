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
  FMX.ListBox, FMX.DateTimeCtrls, System.UIConsts;

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
  private
    { Private declarations }
  public
    saldoContasReceber, idContasReceber: array of string;
    tamanhoArray, contadorArray, controleCheckmark: integer;
    { Public declarations }
  end;

var
  FCadContasReceber: TFCadContasReceber;

implementation

{$R *.fmx}

uses UDM, UPrincipal, UAuxiliar;

procedure TFCadContasReceber.BtnBaixaContasReceberClick(Sender: TObject);
begin
  inherited;
{$IFDEF MSWINDOWS}
  ListBoxItem1.Height := 44;
  ListBoxItem2.Height := 44;
  ListBoxItem3.Height := 44;
  ListBoxItem4.Height := 44;
{$ENDIF}

  MudarAbaModelo(TbItemedicao, Sender);
end;

procedure TFCadContasReceber.ComboBoxFiltroClienteContasReceberClosePopup
  (Sender: TObject);
begin
  inherited;
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

procedure TFCadContasReceber.DateEdtFiltroVencFinalContasReceberClosePicker
  (Sender: TObject);
var
  dataVencInicio, dataVencFinal: TDateTime;
begin
  inherited;
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
  ListViewCadContasReceber.ItemAppearanceObjects.ItemObjects.Accessory.
    Visible := False;
  ListViewCadContasReceber.ItemAppearanceObjects.ItemEditObjects.Accessory.
    Visible := False;
  BtnBaixaContasReceber.Visible := False;
end;

procedure TFCadContasReceber.ListViewCadContasReceberItemClick
  (const Sender: TObject; const AItem: TListViewItem);
begin
  inherited;
  if AItem.Detail.IsEmpty then
  begin
    AItem.Objects.AccessoryObject.Visible := True;

    controleCheckmark := controleCheckmark + 1;
    tamanhoArray := tamanhoArray + 1;
    SetLength(saldoContasReceber, tamanhoArray);
    SetLength(idContasReceber, tamanhoArray);

    saldoContasReceber[contadorArray] :=
      AItem.Data[TMultiDetailAppearanceNames.Detail3].ToString;
    idContasReceber[contadorArray] := DM.FDQConsContasReceberid.AsString;
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

procedure TFCadContasReceber.SpdBVoltarBaixaContasReceberEdicaoClick
  (Sender: TObject);
begin
  inherited;
  MudarAbaModelo(TbItemListagem, Sender);
end;

end.
