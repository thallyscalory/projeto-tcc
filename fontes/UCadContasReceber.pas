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
    procedure SpBVoltarClick(Sender: TObject);
    procedure ComboBoxFiltroClienteContasReceberEnter(Sender: TObject);
    procedure ComboBoxFiltroClienteContasReceberClosePopup(Sender: TObject);
    procedure DateEdtFiltroVencFinalContasReceberClosePicker(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ListViewCadContasReceberItemClick(const Sender: TObject;
      const AItem: TListViewItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadContasReceber: TFCadContasReceber;

implementation

{$R *.fmx}

uses UDM, UPrincipal, UAuxiliar;

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
end;

procedure TFCadContasReceber.ListViewCadContasReceberItemClick
  (const Sender: TObject; const AItem: TListViewItem);
begin
  inherited;
  ShowMessage(IntToStr(ListViewCadContasReceber.ItemIndex));
  ShowMessage(IntToStr(ListViewCadContasReceber.Items.Count));
end;

procedure TFCadContasReceber.SpBVoltarClick(Sender: TObject);
begin
  DM.FDQConsContasReceber.Active := False;
  DM.FDQFiltroCadCLi.Active := False;
  FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
  FPrincipal.AbrirForm(TFAuxiliar);
end;

end.
