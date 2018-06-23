unit USplash;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.Layouts;

type
  TFSplash = class(TForm)
    Layout1: TLayout;
    Rectangle1: TRectangle;
    Image1: TImage;
    Timer1: TTimer;
    procedure Timer1Timer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1Paint(Sender: TObject; Canvas: TCanvas;
      const ARect: TRectF);
  private
    FInitialized: Boolean;

    procedure CarregaFormPrinc;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FSplash: TFSplash;

implementation

{$R *.fmx}

uses UPrincipal;

procedure TFSplash.CarregaFormPrinc;
var
  Frm: TForm;
begin
  //Frm := TFPrincipal.Create(Application);
  FPrincipal.Show;
  Application.MainForm := FPrincipal;
  Close; // fecha o form splash;
end;

procedure TFSplash.FormCreate(Sender: TObject);
begin
  Timer1.Enabled := False;
  Timer1.Interval := 1500;
end;

procedure TFSplash.Image1Paint(Sender: TObject; Canvas: TCanvas;
  const ARect: TRectF);
begin
  Timer1.Enabled := not FInitialized;
end;

procedure TFSplash.Timer1Timer(Sender: TObject);
begin
  Timer1.Enabled := False;
  if not FInitialized then
  begin
    FInitialized := True;
    CarregaFormPrinc;
  end;

end;

end.
