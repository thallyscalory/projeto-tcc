program TesteConexao;

uses
  System.StartUpCopy,
  FMX.Forms,
  UMainTesteConex in 'UMainTesteConex.pas' {Form1},
  Proxy in 'Proxy.pas',
  UCm in 'UCm.pas' {CM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TCM, CM);
  Application.Run;
end.
