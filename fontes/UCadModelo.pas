unit UCadModelo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  System.Actions, FMX.ActnList, FMX.VirtualKeyboard, System.Math,
  FMX.Platform, System.ImageList, FMX.ImgList;

type
  TFCadModelo = class(TForm)
    LytBase: TLayout;
    ActionList1: TActionList;
    ActMudarAba: TChangeTabAction;
    TbControlCadModelo: TTabControl;
    TbItemListagem: TTabItem;
    ToolBarsuperior: TToolBar;
    LblTitulo: TLabel;
    SpBVoltar: TSpeedButton;
    TbItemedicao: TTabItem;
    ImageList1: TImageList;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyUp(Sender: TObject; var Key: Word; var KeyChar: Char;
      Shift: TShiftState);
    procedure FormVirtualKeyboardShown(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
    procedure FormVirtualKeyboardHidden(Sender: TObject;
      KeyboardVisible: Boolean; const Bounds: TRect);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    FActiveForm: TForm;

    function DisplayFormatter(AValue: double; ADisplayFormar: String): String;
    procedure MudarAbaModelo(ATabItem: TTabItem; Sender: TObject);
    // procedure AbrirFormModelo(AFormClass: TComponentClass);
    procedure EsconderTeclado;
    procedure MostrarTeclado(const AControl: TFmxObject);
  end;

var
  FCadModelo: TFCadModelo;

implementation

{$R *.fmx}

uses UDM, UPrincipal, UVenda;

{ procedure TFCadModelo.AbrirFormModelo(AFormClass: TComponentClass);
  var
  LayoutBase, BotaoMenu: TComponent;
  begin
  if Assigned(FActiveForm) then
  begin
  if FActiveForm.ClassType = AFormClass then
  Exit
  else
  begin
  FActiveForm.DisposeOf;
  FActiveForm := nil;
  end;
  end;
  Application.CreateForm(AFormClass, FActiveForm);
  LayoutBase := FActiveForm.FindComponent('LytBase');
  if Assigned(LayoutBase) then
  LytApoio.AddObject(TLayout(LayoutBase));
  end; }

function TFCadModelo.DisplayFormatter(AValue: double;
  ADisplayFormar: String): String;
begin
  Result := FormatFloat(ADisplayFormar, AValue);
end;

procedure TFCadModelo.EsconderTeclado;
var
  keyboard: IFMXVirtualKeyboardService;
begin
  TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService,
    IInterface(keyboard));
  if (keyboard <> nil) then
    keyboard.HideVirtualKeyboard;
end;

procedure TFCadModelo.FormCreate(Sender: TObject);
begin
  TbControlCadModelo.ActiveTab := TbItemListagem;
  TbControlCadModelo.TabPosition := TTabPosition.None;
end;

procedure TFCadModelo.FormKeyUp(Sender: TObject; var Key: Word;
  var KeyChar: Char; Shift: TShiftState);
{ var
  keyboard: IFMXVirtualKeyboardService; }
begin
  { if Key = vkHardwareBack then
    begin
    Key := 0;
    if TecladoVirtualVisible then
    begin
    if TPlatformServices.Current.SupportsPlatformService
    (IFMXVirtualKeyboardService, keyboard) then
    begin
    if TVirtualKeyBoardState.Visible in keyboard.GetVirtualKeyBoardState
    then
    begin
    keyboard.HideVirtualKeyboard;
    end;
    end;
    end
    else
    FPrincipal.MudarAba(FPrincipal.TbItemMenu, Sender);
    end; }
end;

procedure TFCadModelo.FormVirtualKeyboardHidden(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TecladoVirtualVisible := False;
end;

procedure TFCadModelo.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
begin
  TecladoVirtualVisible := True;
end;

procedure TFCadModelo.MostrarTeclado(const AControl: TFmxObject);
var
  keyboard: IFMXVirtualKeyboardService;
begin
  TPlatformServices.Current.SupportsPlatformService(IFMXVirtualKeyboardService,
    IInterface(keyboard));
  if (keyboard <> nil) then
    keyboard.ShowVirtualKeyboard(AControl);
end;

procedure TFCadModelo.MudarAbaModelo(ATabItem: TTabItem; Sender: TObject);
begin
  ActMudarAba.Tab := ATabItem;
  ActMudarAba.ExecuteTarget(Sender);
end;

end.
