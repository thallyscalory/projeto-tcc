unit UFuncionario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.Media,
  FMX.StdActns, FMX.MediaLibrary.Actions, IdURI, FMX.Helpers.Android,
  Androidapi.Jni.GraphicsContentViewText, Androidapi.Jni.Net,
  Androidapi.Jni.JavaTypes, Androidapi.Helpers;

type
  TFFuncionario = class(TFCadModelo)
    ShowShareSheetAction1: TShowShareSheetAction;
    procedure ShowShareSheetAction1BeforeExecute(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFuncionario: TFFuncionario;

implementation

{$R *.fmx}

uses UAuxiliar;

procedure TFFuncionario.Button2Click(Sender: TObject);
var
  uri: string;
  Intent: JIntent;
  idContato: Integer;
begin
  inherited;
  uri := 'https://www.youtube.com/watch?v=ciSNAEb5JO0';
  try
    Intent := TJIntent.JavaClass.init(TJIntent.JavaClass.ACTION_VIEW,
      TJnet_Uri.JavaClass.parse(StringToJString(TIdURI.URLEncode(uri))));
    SharedActivity.startActivity(Intent);
  except
    on E: Exception do
      ShowMessage(E.Message);
  end;

end;

procedure TFFuncionario.ShowShareSheetAction1BeforeExecute(Sender: TObject);
begin
  inherited;
  ShowShareSheetAction1.TextMessage := 'www.youtube.com.br';
end;

end.
