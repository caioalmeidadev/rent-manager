unit FParametros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxImage, cxDBEdit,
  Vcl.Menus, Vcl.StdCtrls, cxButtons, cxLabel,Data.DB;

type
  TFrmParametros = class(TForm)
    cxDBImage1: TcxDBImage;
    cxLabel1: TcxLabel;
    btnSalvar: TcxButton;
    cxDBImage2: TcxDBImage;
    cxLabel2: TcxLabel;
    btnCancelar: TcxButton;
    cxButton1: TcxButton;
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmParametros: TFrmParametros;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmParametros.btnCancelarClick(Sender: TObject);
begin
 if DM.qrParametros.State in [dsInsert,dsEdit] then
  DM.qrParametros.Cancel;
 DM.qrParametros.Refresh;
end;

procedure TFrmParametros.btnSalvarClick(Sender: TObject);
begin
 if DM.qrParametros.State in [dsInsert,dsEdit] then
  DM.qrParametros.Post;
 DM.qrParametros.Refresh;

end;

procedure TFrmParametros.cxButton1Click(Sender: TObject);
begin
 DM.qrParametros.Edit;
end;

end.
