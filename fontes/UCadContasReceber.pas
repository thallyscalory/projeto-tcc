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
  FMX.ListBox;

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
    procedure SpBVoltarClick(Sender: TObject);
    procedure ComboBoxFiltroClienteContasReceberEnter(Sender: TObject);
    procedure ComboBoxFiltroClienteContasReceberClosePopup(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadContasReceber: TFCadContasReceber;

implementation

{$R *.fmx}

uses UDM, UPrincipal;

procedure TFCadContasReceber.ComboBoxFiltroClienteContasReceberClosePopup
  (Sender: TObject);
begin
  inherited;
  DM.FDQConsContasReceber.Active := False;
  DM.FDQConsContasReceber.Close;
  DM.FDQConsContasReceber.ParamByName('PCLienteContasReceber').Value :=
    ComboBoxFiltroClienteContasReceber.Selected.Text;
  DM.FDQConsContasReceber.Open();
  DM.FDQConsContasReceber.Active := True;
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

  { DM.FDQFiltroCadCLi.First;
    while not DM.FDQFiltroCadCLi.Eof do
    begin
    ComboBoxFiltroClienteContasReceber.Items.Add
    (DM.FDQFiltroCadCLinome_cli.AsString);

    DM.FDQFiltroCadCLi.Next
    end; }

end;

procedure TFCadContasReceber.SpBVoltarClick(Sender: TObject);
begin
  DM.FDQConsContasReceber.Active := False;
  DM.FDQFiltroCadCLi.Active := False;
  FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
end;

end.
