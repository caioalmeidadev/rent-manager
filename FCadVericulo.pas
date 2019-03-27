unit FCadVericulo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxBarBuiltInMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, cxContainer, cxDropDownEdit, cxCalendar, cxDBEdit,
  cxGroupBox, cxRadioGroup, cxCurrencyEdit, cxMaskEdit, cxLabel, cxTextEdit,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, Vcl.ExtCtrls, cxCheckBox,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.StdCtrls, Vcl.Menus, cxButtons;

type
  TFrmCadVeiculo = class(TForm)
    Panel1: TPanel;
    cxPageControl1: TcxPageControl;
    Panel2: TPanel;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel11: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBComboBox1: TcxDBComboBox;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBRadioGroup1: TcxDBRadioGroup;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBComboBox2: TcxDBComboBox;
    cxLabel15: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxDBComboBox3: TcxDBComboBox;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    tvPlaca: TcxGridDBColumn;
    tvStatus: TcxGridDBColumn;
    tvDescricao: TcxGridDBColumn;
    qrVeiculos: TFDQuery;
    dsVeiculos: TDataSource;
    qrVeiculosid_veiculo: TFDAutoIncField;
    qrVeiculosdescricao: TStringField;
    qrVeiculosano_veiculo: TStringField;
    qrVeiculoscor_veiculo: TStringField;
    qrVeiculosmarca_veiculo: TStringField;
    qrVeiculosplaca: TStringField;
    qrVeiculoschassis: TStringField;
    qrVeiculosvalor_veiculo: TBCDField;
    qrVeiculoskm_compra: TStringField;
    qrVeiculoskm_atual: TStringField;
    qrVeiculosdata_cadastro: TDateField;
    qrVeiculosfl_tipo_veiculo: TStringField;
    qrVeiculosfl_locacao: TStringField;
    qrVeiculosfl_status_veiculo: TStringField;
    cxLabel18: TcxLabel;
    btnNovo: TcxButton;
    cxButton2: TcxButton;
    btnCancelar: TcxButton;
    btnEditar: TcxButton;
    tvTipo: TcxGridDBColumn;
    qrVeiculosfl_combustivel: TStringField;
    cxLabel19: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    qrVeiculosvl_diaria: TBCDField;
    qrVeiculosmodelo_veiculo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);

  private
    { Private declarations }
    procedure habilitaBotoes(xEstado:Boolean);
  public
    { Public declarations }
  end;

var
  FrmCadVeiculo: TFrmCadVeiculo;

implementation

{$R *.dfm}

uses FDM;

procedure TFrmCadVeiculo.btnEditarClick(Sender: TObject);
begin
 qrVeiculos.Edit;
 cxPageControl1.ActivePageIndex := 1;
end;

procedure TFrmCadVeiculo.btnNovoClick(Sender: TObject);
begin
 qrVeiculos.Append;
 qrVeiculosdata_cadastro.AsDateTime := Now;
 qrVeiculosfl_locacao.AsString := 'N';
 cxPageControl1.ActivePageIndex := 1;
end;

procedure TFrmCadVeiculo.btnSalvarClick(Sender: TObject);
begin
 if qrVeiculos.State in [dsInsert,dsEdit] then
  qrVeiculos.Post;
 cxPageControl1.ActivePageIndex := 0;
end;



procedure TFrmCadVeiculo.FormCreate(Sender: TObject);
begin
 qrVeiculos.Close;
 qrVeiculos.Open;
 cxPageControl1.ActivePageIndex := 0;
 cxPageControl1.HideTabs := True;
end;

procedure TFrmCadVeiculo.habilitaBotoes(xEstado: Boolean);
begin
  if dsVeiculos.State = dsInsert then
   //todo

end;

end.
