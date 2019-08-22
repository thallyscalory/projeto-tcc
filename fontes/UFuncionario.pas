unit UFuncionario;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.Media,
  FMX.StdActns, FMX.MediaLibrary.Actions, IdURI;

type
  TFFuncionario = class(TFCadModelo)
    ShowShareSheetAction1: TShowShareSheetAction;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFuncionario: TFFuncionario;

implementation

{$R *.fmx}

uses UAuxiliar;

end.
