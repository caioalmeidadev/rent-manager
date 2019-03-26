unit FLocLocacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.StdCtrls, cxButtons, cxTextEdit, cxLabel;

type
  TFrmLocLocacao = class(TForm)
    cxLabel1: TcxLabel;
    ed_cod_locacao: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
    function buscaLocacao(xIdLocacao:string):Integer;
    function locacaoExiste(xIdLoc:string): Boolean;
  public
    { Public declarations }
    xIdLocacao:Integer;
  end;

var
  FrmLocLocacao: TFrmLocLocacao;

implementation

{$R *.dfm}

uses App.Funcoes, FDM, FPrincipal;

{ TFrmLocLocacao }

function TFrmLocLocacao.buscaLocacao(xIdLocacao: string): Integer;
begin
 if locacaoExiste(xIdLocacao) then
  Result := StrToInt(xIdLocacao)
 else
  Result := -1;
end;

procedure TFrmLocLocacao.cxButton1Click(Sender: TObject);
begin
 if buscaLocacao(TRIM(ed_cod_locacao.Text)) > 0 then
 begin
  xIdLocacao := StrToInt(ed_cod_locacao.Text);
  Close;
 end
 else
 begin
   ShowMessage('Locação não encontrada');
   ed_cod_locacao.SelectAll;
   ed_cod_locacao.SetFocus;
 end;

end;

procedure TFrmLocLocacao.cxButton2Click(Sender: TObject);
begin
 Close;
end;

procedure TFrmLocLocacao.FormShow(Sender: TObject);
begin
 xIdLocacao := -1;
 ed_cod_locacao.SetFocus;
end;

function TFrmLocLocacao.locacaoExiste(xIdLoc: string): Boolean;
begin
  Result := SimpleQuery('select id_locacao from tb_locacao where id_locacao = ' + xIdLoc) <> nil;
end;

end.
