unit Flogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, dxGDIPlusClasses, cxImage, cxTextEdit, cxLabel,
  cxMaskEdit, cxDropDownEdit;

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
    cxLabel4: TcxLabel;
    cb_empresa: TcxComboBox;
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

// if cb_empresa.Text = '***' then
// begin
//   ShowMessage('Sistema sem cadatro de empresa, por favor entre em contato com o suporte.');
//   Exit;
// end;

 if DM.login(ed_usuario.Text,ed_senha.Text,'01') then
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

 with DM do
 begin
   qrEmpresa.Open;
   if qrEmpresa.RecordCount > 0 then
   begin
     qrEmpresa.First;
     cb_empresa.Properties.Items.Clear;
     while not qrEmpresa.Eof do
     begin
      cb_empresa.Properties.Items.Add(
      FormatFloat('00',qrEmpresaid_empresa.AsInteger) + '-' +
      qrEmpresarazao_social.AsString);
      qrEmpresa.Next;
     end;
   end
   else
    cb_empresa.Properties.Items.Add('***');
   cb_empresa.ItemIndex := 0;
  ed_usuario.SetFocus;
 end;
end;

end.
