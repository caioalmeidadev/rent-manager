unit FListaClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxContainer, cxLabel, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid;

type
  TFrmListaClientes = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrClientes: TFDQuery;
    dsClientes: TDataSource;
    cxLabel1: TcxLabel;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    qrClientesid_cliente: TFDAutoIncField;
    qrClientesnome_razao: TStringField;
    qrClientesapelido_fantasia: TStringField;
    qrClientestelefone1: TStringField;
    qrClientestelefone2: TStringField;
    qrClientescpf_cnpj: TStringField;
    qrClientesfl_tipo_pessoa: TStringField;
    qrClientesrg: TStringField;
    qrClientesrg_uf: TStringField;
    qrClientesrg_orgao_emisor: TStringField;
    qrClientescnh: TStringField;
    qrClientesref_nome_1: TStringField;
    qrClientesref_contato_1: TStringField;
    qrClientesref_nome_2: TStringField;
    qrClientesref_contato_2: TStringField;
    qrClientesendereco: TStringField;
    qrClientesnu_endereco: TStringField;
    qrClientescep: TStringField;
    qrClientesobs: TStringField;
    qrClientesfl_status: TStringField;
    qrClientesestado_id: TIntegerField;
    qrClientesmunicipio_id: TIntegerField;
    qrClientesbairro_id: TIntegerField;
    qrClientesinsc_est: TStringField;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    xIdCliente : Integer;
  end;

var
  FrmListaClientes: TFrmListaClientes;

implementation

{$R *.dfm}

uses FDM;

procedure TFrmListaClientes.cxGrid1DBTableView1DblClick(Sender: TObject);
begin
  xIdCliente := qrClientesid_cliente.AsInteger;
   Close;
end;

procedure TFrmListaClientes.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = Char(VK_RETURN) then
 begin
   xIdCliente := qrClientesid_cliente.AsInteger;
   Close;
 end;
end;

procedure TFrmListaClientes.FormShow(Sender: TObject);
begin
 qrClientes.Open;
end;

end.