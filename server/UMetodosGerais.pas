unit UMetodosGerais;

interface

uses System.SysUtils, System.Classes, System.Json,
    DataSnap.DSProviderDataModuleAdapter,
    Datasnap.DSServer, Datasnap.DSAuth;

type
  TSrvMetodosGerais = class(TDSServerModule)
  private
    { Private declarations }
  public
    { Public declarations }
    function EchoString(Value: string): string;
    function ReverseString(Value: string): string;
    function Concatenar(Avalor1 , Avalor2: string): string;
  end;

implementation


{$R *.dfm}


uses System.StrUtils;

function TSrvMetodosGerais.Concatenar(Avalor1, Avalor2: string): string;
begin
  Result := Avalor1 + ' ' + Avalor2;
end;

function TSrvMetodosGerais.EchoString(Value: string): string;
begin
  Result := Value;
end;

function TSrvMetodosGerais.ReverseString(Value: string): string;
begin
  Result := System.StrUtils.ReverseString(Value);
end;

end.

