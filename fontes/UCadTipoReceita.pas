unit UCadTipoReceita;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts;

type
  TFCadTipoReceita = class(TFCadModelo)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadTipoReceita: TFCadTipoReceita;

implementation

{$R *.fmx}

uses UDM, UPrincipal;

end.