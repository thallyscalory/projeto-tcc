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
  UVenda1 in 'UVenda1.pas' {FVenda1},
  UCadFornecedor in 'UCadFornecedor.pas' {FCadFornecedor},
  UCadContasPagar in 'UCadContasPagar.pas' {FCadContasPagar},
  UAgenda in 'UAgenda.pas' {FAgenda},
  UCadDespesa in 'UCadDespesa.pas' {FCadDespesa},
  UCadTipoReceita in 'UCadTipoReceita.pas' {FCadTipoReceita},
  Androidapi.JNI.Toasts in 'Library\Androidapi.JNI.Toasts.pas',
  FGX.Asserts in 'Library\FGX.Asserts.pas',
  FGX.Consts in 'Library\FGX.Consts.pas',
  FGX.Graphics in 'Library\FGX.Graphics.pas',
  FGX.Helpers.Android in 'Library\FGX.Helpers.Android.pas',
  FGX.Helpers in 'Library\FGX.Helpers.pas',
  FGX.Toasts.Android in 'Library\FGX.Toasts.Android.pas',
  FGX.Toasts in 'Library\FGX.Toasts.pas',
  UCaixa in 'UCaixa.pas' {FCaixa},
  UFuncionario in 'UFuncionario.pas' {FFuncionario};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFSplash, FSplash);
  Application.CreateForm(TFPrincipal, FPrincipal);
  Application.CreateForm(TFFuncionario, FFuncionario);
  Application.Run;
end.
