unit FCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, dxSkinsCore, cxControls, cxContainer,
  cxEdit, dxBarBuiltInMenu, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, cxPC, cxLabel, Vcl.StdCtrls,
  cxButtons, Vcl.ExtCtrls, cxCheckBox, cxDBEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCtrls, cxTextEdit;

type
  TFrmCadCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnNovo: TcxButton;
    bttnSalvar: TcxButton;
    btnCancelar: TcxButton;
    btnEditar: TcxButton;
    cxLabel18: TcxLabel;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrCliente: TFDQuery;
    dsCliente: TDataSource;
    cxDBTextEdit1: TcxDBTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxPageControl2: TcxPageControl;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxLabel6: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDBTextEdit11: TcxDBTextEdit;
    cxLabel14: TcxLabel;
    cxDBTextEdit12: TcxDBTextEdit;
    cxLabel15: TcxLabel;
    cxDBTextEdit13: TcxDBTextEdit;
    cxDBTextEdit14: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxLabel1: TcxLabel;
    cxDBTextEdit15: TcxDBTextEdit;
    DBRadioGroup1: TDBRadioGroup;
    cxDBTextEdit19: TcxDBTextEdit;
    cxLabel20: TcxLabel;
    cxDBTextEdit20: TcxDBTextEdit;
    cxLabel21: TcxLabel;
    cxDBTextEdit21: TcxDBTextEdit;
    cxLabel22: TcxLabel;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxDBCheckBox1: TcxDBCheckBox;
    cxDBTextEdit16: TcxDBTextEdit;
    cxLabel16: TcxLabel;
    cxDBTextEdit18: TcxDBTextEdit;
    cxLabel19: TcxLabel;
    qrClienteid_cliente: TFDAutoIncField;
    qrClientenome_razao: TStringField;
    qrClienteapelido_fantasia: TStringField;
    qrClientetelefone1: TStringField;
    qrClientetelefone2: TStringField;
    qrClientecpf_cnpj: TStringField;
    qrClientefl_tipo_pessoa: TStringField;
    qrClienterg: TStringField;
    qrClienterg_uf: TStringField;
    qrClienterg_orgao_emisor: TStringField;
    qrClientecnh: TStringField;
    qrClienteref_nome_1: TStringField;
    qrClienteref_contato_1: TStringField;
    qrClienteref_nome_2: TStringField;
    qrClienteref_contato_2: TStringField;
    qrClienteendereco: TStringField;
    qrClientenu_endereco: TStringField;
    qrClientecep: TStringField;
    qrClienteobs: TStringField;
    qrClientefl_status: TStringField;
    qrClienteestado_id: TIntegerField;
    qrClientemunicipio_id: TIntegerField;
    qrClientebairro_id: TIntegerField;
    qrClienteinsc_est: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    qrEstado: TFDQuery;
    qrMunicipio: TFDQuery;
    qrBairro: TFDQuery;
    dsEstado: TDataSource;
    dsMunicipio: TDataSource;
    dsBairro: TDataSource;
    qrEstadoid_estado: TFDAutoIncField;
    qrEstadonome: TStringField;
    qrEstadouf: TStringField;
    qrEstadoobs: TStringField;
    qrBairroid_bairro: TFDAutoIncField;
    qrBairronome: TStringField;
    qrBairroobs: TStringField;
    qrBairrocep: TStringField;
    qrBairromunicipio_id: TIntegerField;
    qrMunicipioid_municipio: TIntegerField;
    qrMunicipionome: TStringField;
    qrMunicipioestado_id: TIntegerField;
    qrMunicipiosigla: TStringField;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure bttnSalvarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cxDBTextEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit19KeyPress(Sender: TObject; var Key: Char);
    procedure cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure DBLookupComboBox2CloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadCliente: TFrmCadCliente;

implementation

{$R *.dfm}

uses FDM;

procedure TFrmCadCliente.btnCancelarClick(Sender: TObject);
begin
 if qrCliente.State in [dsInsert,dsEdit] then
  qrCliente.Cancel;
 qrCliente.Refresh;
 cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmCadCliente.btnEditarClick(Sender: TObject);
begin
 qrCliente.Edit;
 qrEstado.Open;
 qrMunicipio.Close;
 qrMunicipio.ParamByName('id_estado').AsInteger := qrEstadoid_estado.AsInteger;
 qrMunicipio.Open;
 qrBairro.Close;
  qrBairro.ParamByName('id_municipio').AsInteger := qrMunicipioid_municipio.AsInteger;
  qrBairro.Open;
 cxPageControl1.ActivePageIndex := 1;
end;

procedure TFrmCadCliente.btnNovoClick(Sender: TObject);
begin
 qrCliente.Append;
 qrEstado.Close;
 qrEstado.Open;

 cxPageControl1.ActivePageIndex := 1;
end;

procedure TFrmCadCliente.bttnSalvarClick(Sender: TObject);
begin
 if qrCliente.State in [dsInsert,dsEdit] then
  qrCliente.Post;
 cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmCadCliente.cxDBTextEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['A'..'Z']) or (Key in ['a'..'z'])  then
   Key := #0;
end;

procedure TFrmCadCliente.cxDBTextEdit19KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['A'..'Z']) or (Key in ['a'..'z'])  then
   Key := #0;
end;

procedure TFrmCadCliente.cxDBTextEdit20KeyPress(Sender: TObject; var Key: Char);
begin
 if (Key in ['A'..'Z']) or (Key in ['a'..'z'])  then
  Key := #0;
end;

procedure TFrmCadCliente.cxDBTextEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['A'..'Z']) or (Key in ['a'..'z'])  then
   Key := #0;
end;

procedure TFrmCadCliente.cxDBTextEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if (Key in ['A'..'Z']) or (Key in ['a'..'z'])  then
   Key := #0;
end;

procedure TFrmCadCliente.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  if qrCliente.State in [dsInsert,dsEdit] then
 begin
   qrMunicipio.Close;
   qrMunicipio.ParamByName('id_estado').AsInteger := qrEstadoid_estado.AsInteger;
   qrMunicipio.Open;
 end;
end;

procedure TFrmCadCliente.DBLookupComboBox2CloseUp(Sender: TObject);
begin
  if qrCliente.State in [dsInsert,dsEdit] then
 begin
  qrBairro.Close;
  qrBairro.ParamByName('id_municipio').AsInteger := qrMunicipioid_municipio.AsInteger;
  qrBairro.Open;
 end;
end;

procedure TFrmCadCliente.FormCreate(Sender: TObject);
begin
  qrBairro.Close;
  qrMunicipio.Close;
  qrEstado.Close;
  qrCliente.Close;

  qrCliente.Open;
  qrEstado.Open;
  qrMunicipio.Open;
  qrBairro.Open;
end;

procedure TFrmCadCliente.FormShow(Sender: TObject);
begin
 cxPageControl1.Properties.HideTabs := True;
end;

end.
