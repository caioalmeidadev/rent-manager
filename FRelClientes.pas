unit FRelClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLabel, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client, frxClass,
  frxDBSet;

type
  TFrmRelClientes = class(TForm)
    frxReport1: TfrxReport;
    frxdbClientes: TfrxDBDataset;
    qrClientes: TFDQuery;
    dsClientes: TDataSource;
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
    qrClientesestado: TStringField;
    qrClientesuf: TStringField;
    qrClientesmunicipio: TStringField;
    qrClientesbairro: TStringField;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cbStatus: TcxComboBox;
    cxLabel3: TcxLabel;
    cbOrdem: TcxComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelClientes: TFrmRelClientes;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmRelClientes.cxButton1Click(Sender: TObject);
begin

 try
   with qrClientes do
   begin
     SQL.Clear;
     SQL.Add('select * from vw_clientes');
     case cbStatus.ItemIndex of
      1 : SQL.Add(' where fl_status = ''A'' ');
      2 : SQL.Add(' where fl_status = ''B''');
     end;

     case cbOrdem.ItemIndex of
      0 : SQL.Add(' order by id_cliente asc');
      1 : SQL.Add(' order by nome_razao asc');
     end;
     Open;
     if RecordCount > 0 then
      frxReport1.ShowReport
     else
      ShowMessage('Não existe clientes cadastrados');

   end;

 finally

 end;
end;

procedure TFrmRelClientes.cxButton2Click(Sender: TObject);
begin
 Close;
end;

end.
