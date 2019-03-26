unit Flogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, cxImage, cxTextEdit, cxLabel;

type
  TFrmLogin = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    ed_usuario: TcxTextEdit;
    ed_senha: TcxTextEdit;
    img_login: TcxImage;
    btnSair: TcxButton;
    btnAcessar: TcxButton;
    procedure btnSairClick(Sender: TObject);
    procedure ed_usuarioKeyPress(Sender: TObject; var Key: Char);
    procedure ed_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure btnAcessarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmLogin.btnAcessarClick(Sender: TObject);
begin
 if ed_usuario.Text = '' then
 begin
   ShowMessage('Usuário em branco. Preencha o campo corretamente.');
   ed_usuario.SelectAll;
   ed_usuario.SetFocus;
   Exit;
 end;

 if ed_senha.Text = '' then
 begin
   ShowMessage('Senha em branco. Preencha o campo corretamente.');
   ed_senha.SelectAll;
   ed_senha.SetFocus;
   Exit;
 end;

 if DM.login(ed_usuario.Text,ed_senha.Text) then
 begin
   FrmPrincipal.USUARIO_LOGADO := True;
   Close;
 end
 else
 begin
   ShowMessage('Usuário ou Senha incorretos!');
   ed_senha.SetFocus;
 end;

end;

procedure TFrmLogin.btnSairClick(Sender: TObject);
begin
 Application.Terminate;
end;

procedure TFrmLogin.ed_senhaKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = Char(VK_RETURN) then
  btnAcessar.SetFocus;
end;

procedure TFrmLogin.ed_usuarioKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = Char(VK_RETURN) then
   ed_senha.SetFocus;
  if Key = Char(VK_ESCAPE) then
   Application.Terminate;
end;

procedure TFrmLogin.FormShow(Sender: TObject);
begin
 ed_usuario.SetFocus;
end;

end.
