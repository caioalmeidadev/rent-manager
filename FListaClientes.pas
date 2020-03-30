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
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, Vcl.ExtCtrls,
  dxSkinsDefaultPainters;

type
  TFrmListaClientes = class(TForm)
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrClientes: TFDQuery;
    dsClientes: TDataSource;
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
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    Panel2: TPanel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cb_tipo_pesquisa: TcxComboBox;
    ed_pesquisa: TcxTextEdit;
    btn_pesquisa: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1DblClick(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
    procedure btn_pesquisaClick(Sender: TObject);
    procedure cb_tipo_pesquisaKeyPress(Sender: TObject; var Key: Char);
    procedure ed_pesquisaKeyPress(Sender: TObject; var Key: Char);
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

procedure TFrmListaClientes.cb_tipo_pesquisaKeyPress(Sender: TObject;
  var Key: Char);
begin
 if Key = Char(VK_RETURN) then
  ed_pesquisa.setFocus;

 if Key = Char(VK_ESCAPE) then
  Close;
end;

procedure TFrmListaClientes.btn_pesquisaClick(Sender: TObject);
var
 xSQL : String;
begin
  xSQL := '';
  xSQL := 'select * from tb_clientes';
  if ed_pesquisa.Text <> '' then
  begin
    case cb_tipo_pesquisa.ItemIndex of
     0 : xSQL := xSQL + ' where id_cliente = ' + Trim(ed_pesquisa.Text);
     1 : xSQL := xSQL + ' where apelido_fantasia like ' + QuotedStr('%'+ed_pesquisa.Text+'%');
     2 : xSQL := xSQL + ' where cpf_cnpj like ' + QuotedStr('%'+Trim(ed_pesquisa.Text)+'%');
    end;
  end;
   xSQL := xSQL + ' order by id_cliente asc;';

  qrClientes.Close;
  qrClientes.SQL.Clear;
  qrClientes.SQL.Add(xSQL);
  qrClientes.Open;
  cxGrid1.setFocus;
end;

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

procedure TFrmListaClientes.ed_pesquisaKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = Char(VK_F3) then
 begin
   if cb_tipo_pesquisa.ItemIndex > 2 then
    cb_tipo_pesquisa.ItemIndex := 0
   else
    cb_tipo_pesquisa.ItemIndex := cb_tipo_pesquisa.ItemIndex + 1;
 end;

 if Key = Char(VK_RETURN) then
   if ed_pesquisa.Text <> '' then
    btn_pesquisaClick(Self);

 if Key = Char(VK_ESCAPE) then
  Close;

end;

procedure TFrmListaClientes.FormShow(Sender: TObject);
begin
 qrClientes.Open;
end;

end.
