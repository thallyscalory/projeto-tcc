unit UCadFornecedor;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, 
  FMX.Types, FMX.Graphics, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.StdCtrls,
  UCadModelo, System.ImageList, FMX.ImgList, System.Actions, FMX.ActnList,
  FMX.TabControl, FMX.Controls.Presentation, FMX.Layouts, FMX.ScrollBox,
  FMX.Memo, FMX.ListBox, FMX.Edit;

type
  TFCadFornecedor = class(TFCadModelo)
    ToolBar1: TToolBar;
    ListBoxEdicaoCadCli: TListBox;
    ListBoxItem1: TListBoxItem;
    EdtNomeCli: TEdit;
    EdtBNomeCli: TEditButton;
    LblNomeForn: TLabel;
    ListBoxItem2: TListBoxItem;
    ComboBoxTipoPessoaCli: TComboBox;
    LblTipoPessoaForn: TLabel;
    ListBoxItem3: TListBoxItem;
    EdtCpfCli: TEdit;
    EdtBCpfCli: TEditButton;
    LblCpfCli: TLabel;
    ListBoxItem4: TListBoxItem;
    EdtRgCli: TEdit;
    EdtBRgCli: TEditButton;
    LblRgCli: TLabel;
    ListBoxItem5: TListBoxItem;
    EdtApelidoCli: TEdit;
    EdtBApelidoCli: TEditButton;
    LblApelidoCli: TLabel;
    ListBoxItem6: TListBoxItem;
    EdtFoneCli: TEdit;
    EdtBFoneCli: TEditButton;
    LblFoneCli: TLabel;
    ListBoxItem7: TListBoxItem;
    EdtEnderecoCli: TEdit;
    EdtBEndCli: TEditButton;
    LblEndCli: TLabel;
    ListBoxItem8: TListBoxItem;
    EdtNumCli: TEdit;
    EdtBNumCli: TEditButton;
    LblNumCli: TLabel;
    ListBoxItem9: TListBoxItem;
    EdtCompCli: TEdit;
    EdtBCompCli: TEditButton;
    LblCompCli: TLabel;
    ListBoxItem10: TListBoxItem;
    EdtBairroCli: TEdit;
    EdtBBairroCli: TEditButton;
    LblBairroCli: TLabel;
    ListBoxItem11: TListBoxItem;
    EdtCepCli: TEdit;
    EdtBCepCli: TEditButton;
    LblCepCli: TLabel;
    ListBoxItem12: TListBoxItem;
    EdtCidadeCli: TEdit;
    EdtBCidadeCli: TEditButton;
    Cidade: TLabel;
    ListBoxItem13: TListBoxItem;
    EdtUfCli: TEdit;
    EdtBUfCli: TEditButton;
    LblUfCli: TLabel;
    ListBoxItem14: TListBoxItem;
    EdtEmailCli: TEdit;
    EdtBEmailCli: TEditButton;
    LblEmailCli: TLabel;
    ListBoxItem15: TListBoxItem;
    LblLiberaAprazoCli: TLabel;
    RadioBLiberaAprazoS: TRadioButton;
    RadioBLiberaAprazoN: TRadioButton;
    ListBoxItem16: TListBoxItem;
    LblObsCli: TLabel;
    MemoObsCadCli: TMemo;
    ListBoxItem17: TListBoxItem;
    EdtDataCadCli: TEdit;
    SpdBVoltarEdicaoCadFornecedor: TSpeedButton;
    LblTituloEdicaoCadFornecedor: TLabel;
    SpdBConfirmaEdicaoCadFornecedor: TSpeedButton;
    SpdBEditarEdicaoCadFornecedor: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCadFornecedor: TFCadFornecedor;

implementation

{$R *.fmx}

end.
