program Tcc;

uses
  System.StartUpCopy,
  FMX.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UCadModelo in 'UCadModelo.pas' {FCadModelo},
  UCadCli in 'UCadCli.pas' {FCadCli},
  UConsultaProduto in 'UConsultaProduto.pas' {FConsProduto},
  UInfo in 'UInfo.pas' {FInfo},
  USplash in 'USplash.pas' {FSplash},
  UContasReceberVenda in 'UContasReceberVenda.pas' {FContasReceberVenda},
  UAuxiliar in 'UAuxiliar.pas' {FAuxiliar},
  UCadContasReceber in 'UCadContasReceber.pas' {FCadContasReceber},
  UVenda1 in 'UVenda1.pas' {FVenda1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFSplash, FSplash);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.Run;
end.
