unit FRelRecibo;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Data.DB, FireDAC.Comp.DataSet, frxClass, frxDBSet, FireDAC.Comp.Client,
  dxSkinsDefaultPainters;

type
  TFrmRelRecibo = class(TForm)
    cxLabel1: TcxLabel;
    ed_cod_contrato: TcxTextEdit;
    cxButton1: TcxButton;
    cxLabel2: TcxLabel;
    cxButton2: TcxButton;
    qrLocacao: TFDQuery;
    dsLocacao: TDataSource;
    frxDBLocacao: TfrxDBDataset;
    frxReport1: TfrxReport;
    qrLocacaovl_extenso: TStringField;
    qrLocacaonome_razao: TStringField;
    qrLocacaoendereco: TStringField;
    qrLocacaonu_endereco: TStringField;
    qrLocacaovl_total: TBCDField;
    qrLocacaoplaca: TStringField;
    qrLocacaochassis: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure qrLocacaoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    procedure printReport(xID:Integer);
  public
    { Public declarations }
  constructor Create(AOwner:TComponent;xIdLocacao:Integer);overload;
  end;

var
  FrmRelRecibo: TFrmRelRecibo;

implementation

{$R *.dfm}

uses App.FExtenso, App.Funcoes, FDM, FPrincipal;

{ TFrmRelRecibo }

constructor TFrmRelRecibo.Create(AOwner: TComponent; xIdLocacao: Integer);
begin
  inherited Create(AOwner);

 if xIdLocacao > 0 then
 begin
  ed_cod_contrato.Text := IntToStr(xIdLocacao);
 end;


end;

procedure TFrmRelRecibo.cxButton1Click(Sender: TObject);
begin
  if (TRIM(ed_cod_contrato.Text) = '') then
  begin
    ShowMessage('Código de Locação Inválido');
    Exit;
  end;

  if StrToInt(ed_cod_contrato.Text) > 0 then
   printReport(StrToInt(ed_cod_contrato.Text));
end;

procedure TFrmRelRecibo.cxButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmRelRecibo.printReport(xID:Integer);
begin
    qrLocacao.Close;
    qrLocacao.ParamByName('ID_').AsInteger := xID;
    qrLocacao.Open;
    if qrLocacao.RecordCount > 0 then
    begin
       frxReport1.ShowReport;
    end
    else
     ShowMessage('Locação não encontrada!');
end;

procedure TFrmRelRecibo.qrLocacaoCalcFields(DataSet: TDataSet);
begin
 qrLocacaovl_extenso.AsString := extenso(qrLocacaovl_total.AsFloat);
end;

end.
