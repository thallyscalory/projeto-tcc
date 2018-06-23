unit UVenda;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Layouts,
  FMX.ListView.Types, FMX.ListView.Appearances, FMX.ListView.Adapters.Base,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.ListView, FMX.Objects,
  Winsoft.FireMonkey.Obr, System.Actions, FMX.ActnList, FMX.StdActns,
  FMX.MediaLibrary.Actions;

type
  TFVenda = class(TForm)
    LytBase: TLayout;
    ListView1: TListView;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    FObr1: TFObr;
    Button1: TButton;
    ActionList1: TActionList;
    TakePhotoFromCameraAction1: TTakePhotoFromCameraAction;
    ToolBar1: TToolBar;
    SpeedButton1: TSpeedButton;
    procedure TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
    procedure ListView1DeleteItem(Sender: TObject; AIndex: Integer);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ListView1ItemClick(const Sender: TObject;
      const AItem: TListViewItem);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVenda: TFVenda;

implementation

{$R *.fmx}

uses UDM, UPrincipal;

procedure TFVenda.ListView1DeleteItem(Sender: TObject; AIndex: Integer);
begin
  Label1.Text := EmptyStr;
  Label2.Text := EmptyStr;
  Label3.Text := EmptyStr;
end;

procedure TFVenda.ListView1ItemClick(const Sender: TObject;
  const AItem: TListViewItem);
var
  PDetalheProd: string;
begin
   PDetalheProd := ListView1.Items[ListView1.ItemIndex].Text;
  DM.FDQDetalheProdCodBar.Close;
  DM.FDQDetalheProdCodBar.ParamByName('PDetalheProdCodBar').Value := PDetalheProd;
  DM.FDQDetalheProdCodBar.Open();
  DM.FDQDetalheProdCodBar.Active := True;
  Label1.Text := DM.FDQDetalheProdCodBarproduto.AsString;
  Label2.Text := DM.FDQDetalheProdCodBarvrvenda.AsString;
  Label3.Text := DM.FDQDetalheProdCodBarCodigoBarra.AsString;

end;

procedure TFVenda.SpeedButton1Click(Sender: TObject);
begin
  FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
end;

procedure TFVenda.TakePhotoFromCameraAction1DidFinishTaking(Image: TBitmap);
var
  i: Integer;
  barcode: TObrSymbol;
  lista: TListViewItem;
begin
  // Image1.Bitmap.Assign(Image); => para trazer a foto na tela
  FObr1.Active := True;
  FObr1.Picture.Assign(Image);
  FObr1.Scan;
  if FObr1.BarcodeCount = 0 then
    ShowMessage('Não encontrado nenhum codigo de barras!')
  else
    for i := 0 to FObr1.BarcodeCount - 1 do
    begin
      barcode := FObr1.barcode[i];
      lista := ListView1.Items.Add;
      DM.FDQuery1.Close;
      DM.FDQuery1.ParamByName('parametro').Value := barcode.DataUtf8;
      DM.FDQuery1.Open();
      if not DM.FDQuery1.IsEmpty then
      begin
        lista.Text := DM.FDQuery1produto.AsString;
        lista.Detail := DM.FDQuery1vrvenda.AsString;
      end
      else
      begin
        ShowMessage('Nenhum Produto cadastrado com este codigo de barra!');
        lista.Text := barcode.DataUtf8; // => para pegar o codigo de barras
        lista.Detail := barcode.SymbologyName; // => para pegar o tipo do codigo de barras
      end;

    end;
end;

end.
