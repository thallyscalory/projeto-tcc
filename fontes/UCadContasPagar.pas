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
  FMX.Platform;

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
    procedure ComboBoxFiltroFornContasPagarEnter(Sender: TObject);
    procedure ComboBoxFiltroFornContasPagarClosePopup(Sender: TObject);
    procedure SpBVoltarClick(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure DateEdtFiltroVencFinalContasPagarClosePicker(Sender: TObject);
  private
    filtro: string;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadContasPagar: TFCadContasPagar;

implementation

{$R *.fmx}

uses UDM, UPrincipal;

procedure TFCadContasPagar.ComboBoxFiltroFornContasPagarClosePopup
  (Sender: TObject);
begin
  inherited;
  filtro := 'forn';

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

procedure TFCadContasPagar.DateEdtFiltroVencFinalContasPagarClosePicker
  (Sender: TObject);
var
  dataVencInicio, dataVencFinal: TDateTime;
begin
  inherited;
  filtro := 'VENC';

  dataVencInicio := DateEdtFiltroVencInicialContasPagar.DateTime;
  dataVencFinal := DateEdtFiltroVencFinalContasPagar.DateTime;

  if dataVencInicio > dataVencFinal then
  begin
    ShowMessage('Processo Cancelado!' + #13#10 +
      'A data inicial não pode ser maior que a data final.');
  end;

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

procedure TFCadContasPagar.SpBVoltarClick(Sender: TObject);
begin
  inherited;
  DM.FDQConsContaPagar.Active := False;
  DM.FDQConsFornecedor.Active := False;
  Close;
end;

end.
