unit FAcessoUsuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxContainer, cxLabel, cxCheckBox, cxDBEdit, cxGroupBox, Vcl.ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Vcl.Menus, FireDAC.Comp.DataSet, Vcl.StdCtrls, cxButtons, FireDAC.Comp.Client,
  cxTextEdit, cxTL, cxMaskEdit, cxTLdxBarBuiltInMenu, cxInplaceContainer,
  cxDBTL, cxTLData, cxCurrencyEdit, ACBrBase, ACBrEnterTab;

type
  TFrmAcessoUsuarios = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel1: TPanel;
    cxGroupBox1: TcxGroupBox;
    qrAcessos: TFDQuery;
    dsAcessos: TDataSource;
    cxGrid1DBTableView1id_acesso: TcxGridDBColumn;
    cxGrid1DBTableView1nome_acesso: TcxGridDBColumn;
    btnNovo: TcxButton;
    btnGravar: TcxButton;
    cxLabel1: TcxLabel;
    qrAcessosid_acesso: TFDAutoIncField;
    qrAcessosnome_acesso: TStringField;
    qrAcessoscad_usuario: TStringField;
    qrAcessoscad_veiculo: TStringField;
    qrAcessoscad_cliente: TStringField;
    qrAcessoscad_bairro: TStringField;
    qrAcessoscad_municipio: TStringField;
    qrAcessoscad_estado: TStringField;
    qrAcessosnova_locacao: TStringField;
    qrAcessoscancela_locacao: TStringField;
    qrAcessosfinaliza_locacao: TStringField;
    qrAcessosrel_clientes: TStringField;
    qrAcessosrel_recibo: TStringField;
    qrAcessosrel_contrato: TStringField;
    qrAcessosconfig: TStringField;
    qrAcessoscad_empresa: TStringField;
    qrAcessoscad_parametros: TStringField;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cxGroupBox4: TcxGroupBox;
    cxDBCheckBox3: TcxDBCheckBox;
    cxDBCheckBox4: TcxDBCheckBox;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBCheckBox5: TcxDBCheckBox;
    cxDBCheckBox2: TcxDBCheckBox;
    cxDBCheckBox6: TcxDBCheckBox;
    cxDBCheckBox9: TcxDBCheckBox;
    cxDBCheckBox8: TcxDBCheckBox;
    cxDBCheckBox13: TcxDBCheckBox;
    cxLabel3: TcxLabel;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxGroupBox5: TcxGroupBox;
    cxDBCheckBox14: TcxDBCheckBox;
    cxDBCheckBox7: TcxDBCheckBox;
    cxDBCheckBox10: TcxDBCheckBox;
    cxDBCheckBox11: TcxDBCheckBox;
    cxDBCheckBox12: TcxDBCheckBox;
    cxDBCheckBox15: TcxDBCheckBox;
    cxDBCheckBox16: TcxDBCheckBox;
    cxDBCheckBox17: TcxDBCheckBox;
    cxDBCheckBox18: TcxDBCheckBox;
    qrAcessoscad_acesso_usuario: TStringField;
    qrAcessosrel_veiculos: TStringField;
    qrAcessosrel_locacoes: TStringField;
    qrAcessosdar_desconto_locacao: TStringField;
    qrAcessosprc_desconto_locacao: TBCDField;
    ACBrEnterTab1: TACBrEnterTab;
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAcessoUsuarios: TFrmAcessoUsuarios;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmAcessoUsuarios.btnGravarClick(Sender: TObject);
begin
 if qrAcessos.State in [dsInsert,dsEdit] then
  qrAcessos.Post;
 qrAcessos.Refresh;
end;

procedure TFrmAcessoUsuarios.btnNovoClick(Sender: TObject);
begin
 qrAcessos.Append;
 cxDBTextEdit1.SetFocus;
end;

procedure TFrmAcessoUsuarios.FormShow(Sender: TObject);
begin
 qrAcessos.Open;
end;

end.
