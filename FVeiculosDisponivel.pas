unit FVeiculosDisponivel;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxContainer, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  cxLabel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxGridLevel, cxClasses, cxGridCustomView, cxGrid, Vcl.ExtCtrls;

type
  TFrmVeiculoDisponivel = class(TForm)
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxLabel1: TcxLabel;
    qrVeiculosDisponiveis: TFDQuery;
    dsVeiculosDisponiveis: TDataSource;
    qrVeiculosDisponiveisid_veiculo: TFDAutoIncField;
    qrVeiculosDisponiveisdescricao: TStringField;
    qrVeiculosDisponiveisplaca: TStringField;
    qrVeiculosDisponiveisfl_tipo_veiculo: TStringField;
    qrVeiculosDisponiveiskm_atual: TStringField;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView2: TcxGridDBTableView;
    cxGrid1DBTableView2Column1: TcxGridDBColumn;
    cxGrid1DBTableView2Column2: TcxGridDBColumn;
    cxGrid1DBTableView2Column3: TcxGridDBColumn;
    cxGrid1DBTableView2Column4: TcxGridDBColumn;
    cxGrid1DBTableView2Column5: TcxGridDBColumn;
    cxGrid1DBTableView2Column6: TcxGridDBColumn;
    procedure FormShow(Sender: TObject);
    procedure cxGrid1DBTableView1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    xIdVeiculo : Integer;
  end;

var
  FrmVeiculoDisponivel: TFrmVeiculoDisponivel;

implementation

{$R *.dfm}

uses FDM;

procedure TFrmVeiculoDisponivel.cxGrid1DBTableView1KeyPress(Sender: TObject;
  var Key: Char);
begin
   if Key = Char(VK_RETURN) then
 begin
  xIdVeiculo := qrVeiculosDisponiveisid_veiculo.AsInteger;
  Close;
 end;
end;

procedure TFrmVeiculoDisponivel.FormShow(Sender: TObject);
begin
 qrVeiculosDisponiveis.Open;
end;

end.
