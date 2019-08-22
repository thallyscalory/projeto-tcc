unit UCadModelo;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.TabControl,
  FMX.Layouts, FMX.StdCtrls, FMX.Controls.Presentation, FMX.ListView.Types,
  FMX.ListView.Appearances, FMX.ListView.Adapters.Base, FMX.ListView,
  System.Actions, FMX.ActnList, FMX.VirtualKeyboard, System.Math,
  FMX.Platform, System.ImageList, FMX.ImgList, FMX.Ani, FMX.DialogService,
  System.UIConsts;

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

  const
    DoneBarHeight = 66;

    function DisplayFormatter(AValue: double; ADisplayFormar: String): String;
    function FocusedControl: TControl;
    function GetFocusedControlOffset(KeyboardRect: TRect): Single;

    procedure MudarAbaModelo(ATabItem: TTabItem; Sender: TObject);
    // procedure AbrirFormModelo(AFormClass: TComponentClass);
    procedure EsconderTeclado;
    procedure MostrarTeclado(const AControl: TFmxObject);
  end;

var
  FCadModelo: TFCadModelo;

implementation

{$R *.fmx}
{$IFDEF MSWINDOWS}

uses UDM, UPrincipal, UVenda, System.IOUtils;
{$ENDIF}
{$IFDEF ANDROID}

uses UDM, UPrincipal, UVenda, System.IOUtils;
// FGX.Graphics, FGX.Toasts;
{$ENDIF}
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

function TFCadModelo.FocusedControl: TControl;
begin
  Result := nil;
  if Assigned(Focused) and (Focused.GetObject is TControl) then
    Result := TControl(Focused.GetObject);
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
  // tbPrincipal.AnimateFloat('Position.Y', FSavedY, 0.1);
  // tbPrincipal.Align := TAlignLayout.alClient;

  if not KeyboardVisible then
    AnimateFloat('Padding.Top', 0, 0.1);
end;

procedure TFCadModelo.FormVirtualKeyboardShown(Sender: TObject;
  KeyboardVisible: Boolean; const Bounds: TRect);
var
  O: TFmxObject;
begin
  inherited;
  { ListBoxEdicaoCadCli.Align := TAlignLayout.Top;
    ListBoxEdicaoCadCli.Height := ((Self.Height) - (Self.Height * 0.50)); }
  TecladoVirtualVisible := True;
  // tbPrincipal.Align := TAlignLayout.alNone;
  // FSavedY := tbPrincipal.Position.Y;
  // tbPrincipal.AnimateFloat('Position.Y', FSavedY + GetFocusedControlOffset(Bounds), 0.1);
  if Assigned(Focused) and (Focused.GetObject is TControl) then
    if TControl(Focused).AbsoluteRect.Bottom - Padding.Top >=
      (Bounds.Top - DoneBarHeight) then
    begin
      for O in Children do
        if (O is TFloatAnimation) and
          (TFloatAnimation(O).PropertyName = 'Padding.Top') then
          TFloatAnimation(O).StopAtCurrent;
      AnimateFloat('Padding.Top', Bounds.Top - DoneBarHeight - TControl(Focused)
        .AbsoluteRect.Bottom + Padding.Top, 0.1)
    end
    else
  else
    AnimateFloat('Padding.Top', 0, 0.1);
end;

function TFCadModelo.GetFocusedControlOffset(KeyboardRect: TRect): Single;
var
  Control: TControl;
  ControlPos: TPointF;
  KeyboardTop: Single;
begin
  Result := 0;
  KeyboardTop := Height - (KeyboardRect.Bottom - KeyboardRect.Top) - 66;
  // At least, should be. 66 is the height of the keyboard "done" bar
  Control := FocusedControl;
  if Assigned(Control) then
  begin
    ControlPos := Control.LocalToAbsolute(PointF(0, 0));
    Result := KeyboardTop - ControlPos.Y + Control.Height + 2;
    if Result >= 0 then
      Result := 0;
  end;
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
