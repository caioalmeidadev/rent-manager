unit FRelContrato;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMaskEdit, cxSpinEdit, cxTimeEdit,
  cxTextEdit, cxLabel, Data.DB, FireDAC.Comp.DataSet, frxClass, frxDBSet,
  FireDAC.Comp.Client, frxExportBaseDialog, frxExportPDF;

type
  TFrmRelContrato = class(TForm)
    qrContrato: TFDQuery;
    dsContrato: TDataSource;
    frxdbContrato: TfrxDBDataset;
    frxReport1: TfrxReport;
    qrContratonome_razao: TStringField;
    qrContratoendereco: TStringField;
    qrContratonu_endereco: TStringField;
    qrContratotelefone1: TStringField;
    qrContratotelefone2: TStringField;
    qrContratorg: TStringField;
    qrContratocpf_cnpj: TStringField;
    qrContratocnh: TStringField;
    qrContratomarca_veiculo: TStringField;
    qrContratocor_veiculo: TStringField;
    qrContratoplaca: TStringField;
    qrContratochassis: TStringField;
    qrContratodescricao: TStringField;
    qrContratodata_abertura: TDateField;
    qrContratodata_retorno: TDateField;
    qrContratovalor_veiculo: TBCDField;
    qrContratoobs: TMemoField;
    qrContratoid_locacao: TFDAutoIncField;
    qrContratoid_cliente: TFDAutoIncField;
    qrContratoid_veiculo: TFDAutoIncField;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    ed_cod_contrato: TcxTextEdit;
    ed_hora_retirada: TcxTimeEdit;
    cxLabel5: TcxLabel;
    ed_hora_entrega: TcxTimeEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    qrContratovl_extenso: TStringField;
    qrContratohora_retirada: TStringField;
    qrContratohora_entrega: TStringField;
    qrContratobairro: TStringField;
    frxPDFExport1: TfrxPDFExport;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure qrContratoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    constructor Create(AOwner:TComponent;xIdContrato:string);overload;
  end;

var
  FrmRelContrato: TFrmRelContrato;

implementation

{$R *.dfm}

uses FDM, FPrincipal, App.FExtenso;

constructor TFrmRelContrato.Create(AOwner: TComponent; xIdContrato: string);
begin
 inherited Create(AOwner);
 ed_cod_contrato.Text := xIdContrato;
end;

procedure TFrmRelContrato.cxButton1Click(Sender: TObject);

begin
 if ed_cod_contrato.Text = '' then
 begin
   ShowMessage('Código de Contrato Inválido!');
   Exit;
 end;

 qrContrato.Close;
 qrContrato.ParamByName('ID_').AsString := TRIM(ed_cod_contrato.Text);
 qrContrato.Open;
 if qrContrato.RecordCount = 1 then
 begin
   frxReport1.ShowReport;
 end
 else
  ShowMessage('Contrato não encontrado.');
end;

procedure TFrmRelContrato.cxButton2Click(Sender: TObject);
begin
  Close;
end;

procedure TFrmRelContrato.FormShow(Sender: TObject);
begin
 if ed_cod_contrato.Text <> '' then
   cxButton1.setFocus;

 ed_hora_retirada.Time := Now;
 ed_hora_entrega.Time  := Now;

end;

procedure TFrmRelContrato.qrContratoCalcFields(DataSet: TDataSet);
begin
 qrContratovl_extenso.AsString :=  extenso(qrContratovalor_veiculo.AsFloat);
 qrContratohora_retirada.AsString := TimeToStr(ed_hora_retirada.Time);
 qrContratohora_entrega.AsString  := TimeToStr(ed_hora_entrega.Time);
end;

end.
