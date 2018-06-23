program SrvProjetoTcc;
{$APPTYPE GUI}

uses
  Vcl.Forms,
  Web.WebReq,
  IdHTTPWebBrokerBridge,
  UMain in 'UMain.pas' {FMain},
  UMetodosGerais in 'UMetodosGerais.pas' {SrvMetodosGerais: TDSServerModule},
  UWM in 'UWM.pas' {WM: TWebModule};

{$R *.res}

begin
  if WebRequestHandler <> nil then
    WebRequestHandler.WebModuleClass := WebModuleClass;
  Application.Initialize;
  Application.CreateForm(TFMain, FMain);
  Application.Run;
end.
