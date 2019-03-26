unit FCadMunicipio;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxDBLookupComboBox, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.StdCtrls, cxButtons,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxTextEdit,
  cxDBEdit, cxLabel, Vcl.ExtCtrls;

type
  TFrmCadMunicipio = class(TForm)
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
    qrMunicipio: TFDQuery;
    dsMunicipio: TDataSource;
    dsEstado: TDataSource;
    qrEstado: TFDQuery;
    qrMunicipioid_municipio: TIntegerField;
    qrMunicipionome: TStringField;
    qrMunicipioestado_id: TIntegerField;
    qrMunicipiosigla: TStringField;
    qrEstadoid_estado: TFDAutoIncField;
    qrEstadonome: TStringField;
    qrEstadouf: TStringField;
    qrEstadoobs: TStringField;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadMunicipio: TFrmCadMunicipio;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmCadMunicipio.cxButton1Click(Sender: TObject);
begin
 qrMunicipio.Append;
end;

procedure TFrmCadMunicipio.cxButton2Click(Sender: TObject);
begin
 if qrMunicipio.State in [dsInsert,dsEdit] then
  qrMunicipio.Post;
 qrMunicipio.Refresh;
end;

procedure TFrmCadMunicipio.cxButton3Click(Sender: TObject);
begin
 if qrMunicipio.State in [dsInsert,dsEdit] then
  qrMunicipio.Cancel
end;

procedure TFrmCadMunicipio.FormShow(Sender: TObject);
begin
 qrMunicipio.Open;
 qrEstado.Open;
end;

end.
