unit FRelVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, frxClass,
  frxDBSet, FireDAC.Comp.Client, Vcl.StdCtrls, cxButtons, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxGroupBox, cxLabel, Vcl.ExtCtrls;

type
  TFrmRelVeiculo = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    cb_tp_veiculo: TcxComboBox;
    cb_tp_situacao: TcxComboBox;
    cb_tp_status: TcxComboBox;
    btn_imprimir: TcxButton;
    btn_cancelar: TcxButton;
    qrVeiculos: TFDQuery;
    dsVeiculos: TDataSource;
    frxDBVeiculos: TfrxDBDataset;
    frxReport1: TfrxReport;
    qrVeiculosid_veiculo: TFDAutoIncField;
    qrVeiculosdescricao: TStringField;
    qrVeiculosfl_combustivel: TStringField;
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
    qrVeiculosvl_diaria: TBCDField;
    qrVeiculosmodelo_veiculo: TStringField;
    procedure btn_imprimirClick(Sender: TObject);
    procedure btn_cancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelVeiculo: TFrmRelVeiculo;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmRelVeiculo.btn_cancelarClick(Sender: TObject);
begin
 Close;
end;

procedure TFrmRelVeiculo.btn_imprimirClick(Sender: TObject);
var
xSQL  : String;
begin
  xSQL := 'select * from tb_veiculos where id_veiculo > 0';
  case cb_tp_veiculo.ItemIndex of
    0 : xSQL := xSQL + '';
    1 : xSQL := xSQL + ' and fl_tipo_veiculo=''CARRO''';
    2 : xSQL := xSQL + ' and fl_tipo_veiculo=''MOTOCICLETA''';
  end;

  case cb_tp_status.ItemIndex of
    0 : xSQL := xSQL + '';
    1 : xSQL := xSQL + ' and fl_locacao=''S''';
    2 : xSQL := xSQL + ' and fl_locacao=''N''';
  end;

  case cb_tp_situacao.ItemIndex of
    0 : xSQL := xSQL + '';
    1 : xSQL := xSQL + ' and fl_status_veiculo = ''NOVO''';
    2 : xSQL := xSQL + ' and fl_status_veiculo = ''SEMINOVO''';
    3 : xSQL := xSQL + ' and fl_status_veiculo = ''USADO''';
    4 : xSQL := xSQL + ' and fl_status_veiculo = ''SUCATA''';
    5 : xSQL := xSQL + ' and fl_status_veiculo = ''VENDIDO''';
    6 : xSQL := xSQL + ' and fl_status_veiculo <> ''INATIVO''';
    7 : xSQL := xSQL + ' and fl_status_veiculo = ''INATIVO''';
  end;

  xSQL := xSQL + ' order by id_veiculo asc;';

  qrVeiculos.Close;
  qrVeiculos.SQL.Clear;
  qrVeiculos.SQL.Text := xSQL;
  qrVeiculos.Open;
  frxReport1.ShowReport;
end;


end.
