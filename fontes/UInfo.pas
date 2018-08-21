unit UInfo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Layouts, FMX.Objects, FMX.ScrollBox, FMX.Memo;

type
  TFInfo = class(TForm)
    LytBase: TLayout;
    ToolBar1: TToolBar;
    Label1: TLabel;
    Image1: TImage;
    SpBVoltar: TSpeedButton;
    Memo1: TMemo;
    procedure SpBVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FInfo: TFInfo;

implementation

{$R *.fmx}

uses UPrincipal;

procedure TFInfo.SpBVoltarClick(Sender: TObject);
begin
Close;
end;

end.
