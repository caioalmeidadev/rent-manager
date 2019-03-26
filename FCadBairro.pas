unit FCadBairro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  cxTextEdit, cxDBEdit, cxLabel, Vcl.ExtCtrls;

type
  TFrmCadBairro = class(TForm)
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrBairro: TFDQuery;
    dsBairro: TDataSource;
    dsMunicipio: TDataSource;
    qrMunicipio: TFDQuery;
    qrBairroid_bairro: TFDAutoIncField;
    qrBairronome: TStringField;
    qrBairroobs: TStringField;
    qrBairrocep: TStringField;
    qrBairromunicipio_id: TIntegerField;
    qrMunicipioid_municipio: TFDAutoIncField;
    qrMunicipionome: TStringField;
    qrMunicipioestado_id: TIntegerField;
    qrMunicipiosigla: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadBairro: TFrmCadBairro;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmCadBairro.cxButton1Click(Sender: TObject);
begin
 qrBairro.Append;
end;

procedure TFrmCadBairro.cxButton2Click(Sender: TObject);
begin
 try
 if qrBairro.State in [dsInsert,dsEdit] then
  qrBairro.Post;
 ShowMessage('Bairro cadastrado com sucesso!');
 except
   ShowMessage('Ocorreu um erro ao cadastrar.');
 end;
 qrBairro.Refresh;
end;

procedure TFrmCadBairro.cxButton3Click(Sender: TObject);
begin
  if qrBairro.State in [dsInsert,dsEdit] then
   qrBairro.Cancel;
end;

procedure TFrmCadBairro.FormShow(Sender: TObject);
begin
  qrBairro.Open;
  qrMunicipio.Open;
end;

end.
