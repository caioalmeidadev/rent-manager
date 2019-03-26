unit FCadEmpresa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxMaskEdit, cxDBEdit, cxTextEdit, cxLabel,
  Vcl.ExtCtrls,Data.DB;

type
  TFrmCadEmpresa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxDBTextEdit3: TcxDBTextEdit;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel7: TcxLabel;
    cxDBMaskEdit1: TcxDBMaskEdit;
    cxDBMaskEdit2: TcxDBMaskEdit;
    cxDBMaskEdit3: TcxDBMaskEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxDBTextEdit8: TcxDBTextEdit;
    cxDBTextEdit9: TcxDBTextEdit;
    cxDBTextEdit10: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    btnEditar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadEmpresa: TFrmCadEmpresa;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmCadEmpresa.btnCancelarClick(Sender: TObject);
begin
  if DM.qrEmpresa.State in [dsInsert,dsEdit] then
    DM.qrEmpresa.Cancel;
  DM.qrEmpresa.Refresh;
end;

procedure TFrmCadEmpresa.btnEditarClick(Sender: TObject);
begin
  DM.qrEmpresa.Edit;
end;

procedure TFrmCadEmpresa.btnSalvarClick(Sender: TObject);
begin
 if DM.qrEmpresa.State in [dsInsert,dsEdit] then
  DM.qrEmpresa.Post;
 DM.qrEmpresa.Refresh;
end;

procedure TFrmCadEmpresa.FormShow(Sender: TObject);
begin
 DM.qrEmpresa.Open;
end;

end.
