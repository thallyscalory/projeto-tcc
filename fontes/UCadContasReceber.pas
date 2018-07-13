unit UCadContasReceber;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView;

type
  TFCadContasReceber = class(TForm)
    LytBase: TLayout;
    ListViewCadContasReceber: TListView;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadContasReceber: TFCadContasReceber;

implementation

{$R *.fmx}

uses UCadCli, UConsultaProduto, UDM, UVenda1;

procedure TFCadContasReceber.FormCreate(Sender: TObject);
var
  I: integer;
  dataHoje, dataVenc: TDateTime;
  listaContasReceber: TListViewItem;
begin
  dataHoje := Date;

  ListViewCadContasReceber.Items.Clear;
  for I := 1 to numParcela do
  begin
    dataVenc := IncMonth(dataHoje, I);

    ListViewCadContasReceber.BeginUpdate;
    listaContasReceber := ListViewCadContasReceber.Items.Add;
    listaContasReceber.Text := DateTimeToStr(dataVenc);
    listaContasReceber.Detail := vlParcela;
    ListViewCadContasReceber.EndUpdate;
  end;
end;

end.
