unit UMainTesteConex;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    LblResultSrv: TLabel;
    RadioButton3: TRadioButton;
    Label2: TLabel;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

uses UCm;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if RadioButton1.IsChecked then // EchoString
    LblResultSrv.Text := CM.SrvMetodosGeraisClient.EchoString(Edit1.Text)
  else if RadioButton2.IsChecked then
    LblResultSrv.Text := CM.SrvMetodosGeraisClient.ReverseString(Edit1.Text)
  else if RadioButton3.IsChecked then
        LblResultSrv.Text := CM.SrvMetodosGeraisClient.Concatenar(Edit1.Text, Edit2.Text)
end;

end.
