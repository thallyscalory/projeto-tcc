unit UCm;

interface

uses
  System.SysUtils, System.Classes, Proxy, Datasnap.DSClientRest;

type
  TCM = class(TDataModule)
    DSRestConnection1: TDSRestConnection;
  private
    FInstanceOwner: Boolean;
    FSrvMetodosGeraisClient: TSrvMetodosGeraisClient;
    function GetSrvMetodosGeraisClient: TSrvMetodosGeraisClient;
    { Private declarations }
  public
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
    property InstanceOwner: Boolean read FInstanceOwner write FInstanceOwner;
    property SrvMetodosGeraisClient: TSrvMetodosGeraisClient read GetSrvMetodosGeraisClient write FSrvMetodosGeraisClient;

end;

var
  CM: TCM;

implementation

{%CLASSGROUP 'FMX.Controls.TControl'}

uses UPrincipal;

{$R *.dfm}

constructor TCM.Create(AOwner: TComponent);
begin
  inherited;
  FInstanceOwner := True;
end;

destructor TCM.Destroy;
begin
  FSrvMetodosGeraisClient.Free;
  inherited;
end;

function TCM.GetSrvMetodosGeraisClient: TSrvMetodosGeraisClient;
begin
  if FSrvMetodosGeraisClient = nil then
    FSrvMetodosGeraisClient:= TSrvMetodosGeraisClient.Create(DSRestConnection1, FInstanceOwner);
  Result := FSrvMetodosGeraisClient;
end;

end.
