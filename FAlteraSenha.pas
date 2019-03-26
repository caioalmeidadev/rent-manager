unit FAlteraSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel;

type
  TFrmAlteraSenha = class(TForm)
    cxLabel1: TcxLabel;
    ed_senha_atual: TcxTextEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    ed_nova_senha: TcxTextEdit;
    ed_confirma_senha: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAlteraSenha: TFrmAlteraSenha;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmAlteraSenha.cxButton1Click(Sender: TObject);
begin
 if ed_senha_atual.Text = '' then
 begin
   ShowMessage('O Campo da senha atual está em branco.');
   exit;
 end;

 if ed_nova_senha.Text = '' then
 begin
   ShowMessage('O Campo da nova senha está em branco.');
   exit;
 end;

 if ed_confirma_senha.Text = '' then
 begin
   ShowMessage('O Campo da confirmação da nova senha está em branco.');
   exit;
 end;

 if ed_nova_senha.Text <> ed_confirma_senha.Text then
 begin
   ShowMessage('A senha nova está diferente da confirmação da senha.');
   Exit;
 end;

 if DM.qrUsuariosenha.AsString <> ed_senha_atual.Text then
  ShowMessage('Senha atual do usuário incorreta')
 else
 begin
   dm.qrUsuario.Edit;
   dm.qrUsuariosenha.AsString := ed_nova_senha.Text;
   dm.qrUsuario.Post;
   dm.qrUsuario.Refresh;
   ShowMessage('Senha Alterada.');
   Close;
 end;

end;

procedure TFrmAlteraSenha.cxButton2Click(Sender: TObject);
begin
 Close;
end;

end.
