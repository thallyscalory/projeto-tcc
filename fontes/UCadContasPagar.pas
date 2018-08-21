unit UCadContasPagar;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  FMX.ListBox, FMX.DateTimeCtrls;

type
  TFCadContasPagar = class(TFCadModelo)
    VertScrollBox1: TVertScrollBox;
    ToolBar1: TToolBar;
    TabItemBaixa: TTabItem;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadContasPagar: TFCadContasPagar;

implementation

{$R *.fmx}

uses UDM, UPrincipal;

end.
