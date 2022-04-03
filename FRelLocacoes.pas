unit FRelLocacoes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxGroupBox, cxLabel, Vcl.ExtCtrls, Vcl.ComCtrls,
  dxCore, cxDateUtils, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, frxClass,
  frxExportBaseDialog, frxExportPDF, frxDBSet, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, cxButtons, cxCalendar,DateUtils,
  dxSkinsDefaultPainters;

type
  TFrmRelLocacoes = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxGroupBox1: TcxGroupBox;
    cb_tp_veiculo: TcxComboBox;
    cxGroupBox3: TcxGroupBox;
    cb_tp_status: TcxComboBox;
    cxGroupBox5: TcxGroupBox;
    ed_dt_inicial: TcxDateEdit;
    ed_dt_final: TcxDateEdit;
    cxButton1: TcxButton;
    qrLocacoes: TFDQuery;
    dsLocacoes: TDataSource;
    frxDBLocacoes: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    qrLocacoesdescricao: TStringField;
    qrLocacoescor_veiculo: TStringField;
    qrLocacoesplaca: TStringField;
    qrLocacoesfl_tipo_veiculo: TStringField;
    qrLocacoesnome_razao: TStringField;
    qrLocacoesid_locacao: TFDAutoIncField;
    qrLocacoesdata_abertura: TDateField;
    qrLocacoesdata_retorno: TDateField;
    qrLocacoesfl_situacao: TIntegerField;
    qrLocacoescliente_id: TIntegerField;
    qrLocacoescliente_fone: TStringField;
    qrLocacoesveiculo_id: TIntegerField;
    qrLocacoeskm_abertura: TStringField;
    qrLocacoeskm_fechamento: TStringField;
    qrLocacoesvl_diaria: TBCDField;
    qrLocacoesvl_desconto: TBCDField;
    qrLocacoesvl_subtotal: TBCDField;
    qrLocacoesvl_total: TBCDField;
    qrLocacoesobs: TMemoField;
    qrLocacoespc_desconto: TBCDField;
    qrLocacoesqtde_dias: TIntegerField;
    procedure cxButton1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qrLocacoesCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelLocacoes: TFrmRelLocacoes;

implementation

uses
  App.Funcoes, FDM, FPrincipal;

{$R *.dfm}

procedure TFrmRelLocacoes.cxButton1Click(Sender: TObject);
begin
 qrLocacoes.Close;
 qrLocacoes.SQL.Clear;
 qrLocacoes.SQL.Add('select v.descricao,v.cor_veiculo,v.placa,v.fl_tipo_veiculo, c.nome_razao,l.* from tb_locacao as l, tb_veiculos as v,'+
                    ' tb_clientes as c where v.id_veiculo = l.veiculo_id and c.id_cliente = l.cliente_id ');
 qrLocacoes.SQL.Add(' and l.data_abertura between :DT_ABERTURA_I and :DT_ABETURA_F ');
 case cb_tp_veiculo.ItemIndex of
  0 : qrLocacoes.SQL.Add(' ');
  1 : qrLocacoes.SQL.Add(' and v.fl_tipo_veiculo like ''MOTO%''');
  2 : qrLocacoes.SQL.Add(' and v.fl_tipo_veiculo = ''CARRO''');
 end;

 case cb_tp_status.ItemIndex of
  0 : qrLocacoes.SQL.Add(' ');
  1 : qrLocacoes.SQL.Add(' and l.fl_situacao=0');
  2 : qrLocacoes.SQL.Add(' and l.fl_situacao=2');
  3 : qrLocacoes.SQL.Add(' and l.fl_situacao=1');
 end;

  qrLocacoes.ParamByName('DT_ABERTURA_I').AsDate  := ed_dt_inicial.Date;
  qrLocacoes.ParamByName('DT_ABETURA_F').AsDate   := ed_dt_final.Date;

  qrLocacoes.Open;
  frxReport1.ShowReport;
end;

procedure TFrmRelLocacoes.FormShow(Sender: TObject);
begin
 ed_dt_inicial.Date := dxGetStartDateOfMonth(Now);
 ed_dt_final.Date   := dxGetEndDateOfMonth(Now,true);
 cb_tp_veiculo.SetFocus;
end;

procedure TFrmRelLocacoes.qrLocacoesCalcFields(DataSet: TDataSet);
begin
qrLocacoesqtde_dias.AsInteger := DaysBetween(qrLocacoesdata_abertura.AsDateTime,qrLocacoesdata_retorno.AsDateTime);
end;

end.
