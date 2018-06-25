program Tcc;

uses
  System.StartUpCopy,
  FMX.Forms,
  UPrincipal in 'UPrincipal.pas' {FPrincipal},
  UDM in 'UDM.pas' {DM: TDataModule},
  UVenda in 'UVenda.pas' {FVenda},
  UCadModelo in 'UCadModelo.pas' {FCadModelo},
  UCadCli in 'UCadCli.pas' {FCadCli},
  UConsultaProduto in 'UConsultaProduto.pas' {FConsProduto},
  UInfo in 'UInfo.pas' {FInfo},
  UVenda1 in 'UVenda1.pas' {FVenda1},
  USplash in 'USplash.pas' {FSplash};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFSplash, FSplash);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFVenda1, FVenda1);
  Application.Run;
end.
