unit FCadEstado;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxContainer, Vcl.Menus, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Vcl.StdCtrls, cxButtons, cxLabel, cxTextEdit, cxDBEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls;

type
  TFrmCadEstado = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    qrEstado: TFDQuery;
    dsEstado: TDataSource;
    qrEstadoid_estado: TFDAutoIncField;
    qrEstadonome: TStringField;
    qrEstadouf: TStringField;
    qrEstadoobs: TStringField;
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
  FrmCadEstado: TFrmCadEstado;

implementation

{$R *.dfm}

uses FPrincipal,FDM;

procedure TFrmCadEstado.cxButton1Click(Sender: TObject);
begin
 qrEstado.Append;
end;

procedure TFrmCadEstado.cxButton2Click(Sender: TObject);
begin
 if qrEstado.State in [dsInsert,dsEdit] then
  qrEstado.Post;
 qrEstado.Refresh;
end;

procedure TFrmCadEstado.cxButton3Click(Sender: TObject);
begin
 if qrEstado.State in [dsInsert,dsEdit] then
  qrEstado.Cancel;
end;



procedure TFrmCadEstado.FormShow(Sender: TObject);
begin
 qrEstado.Open;
end;

end.
