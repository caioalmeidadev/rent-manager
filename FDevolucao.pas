unit FDevolucao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxMaskEdit,
  cxDropDownEdit, cxCalendar, cxDBEdit, cxCurrencyEdit, cxTextEdit, cxLabel,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.Menus, Vcl.StdCtrls, cxButtons, cxMemo,
  Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TFrmDevolucao = class(TForm)
    cxLabel1: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    cxDBTextEdit5: TcxDBTextEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    qrCancelar: TFDQuery;
    dsCancelar: TDataSource;
    qrCancelarid_locacao: TFDAutoIncField;
    qrCancelardata_abertura: TDateField;
    qrCancelardata_retorno: TDateField;
    qrCancelarfl_situacao: TIntegerField;
    qrCancelarcliente_id: TIntegerField;
    qrCancelarcliente_fone: TStringField;
    qrCancelarveiculo_id: TIntegerField;
    qrCancelarkm_abertura: TStringField;
    qrCancelarkm_fechamento: TStringField;
    qrCancelarvl_diaria: TBCDField;
    qrCancelarvl_desconto: TBCDField;
    qrCancelarvl_subtotal: TBCDField;
    qrCancelarvl_total: TBCDField;
    qrCancelarobs: TMemoField;
    cxDBMemo1: TcxDBMemo;
    cxButton1: TcxButton;
    cxLabel12: TcxLabel;
    cxButton2: TcxButton;
    ed_motivo_dev: TcxTextEdit;
    qrCancelarnome_cliente: TStringField;
    qrCancelarnome_veiculo: TStringField;
    qrCancelarplaca: TStringField;
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
//    constructor Create(AOwner:TComponent);overload;override;
    constructor Create(AOwner:TComponent;xIdLocacao:Integer);overload;
  end;

var
  FrmDevolucao: TFrmDevolucao;

implementation

{$R *.dfm}

uses FDM, FPrincipal, FLocLocacao;

{ TFrmDevolucao }

constructor TFrmDevolucao.Create(AOwner: TComponent; xIdLocacao: Integer);
begin
 inherited Create(AOwner);

 if xIdLocacao = -1 then
 begin
    if not Assigned(FrmLocLocacao) then
     FrmLocLocacao := TFrmLocLocacao.Create(Self);
    FrmLocLocacao.ShowModal;
    xIdLocacao := FrmLocLocacao.xIdLocacao;
    FreeAndNil(FrmLocLocacao);
 end;

 if xIdLocacao > 0 then
 begin
  qrCancelar.Close;
  qrCancelar.ParamByName('ID_').AsInteger := xIdLocacao;
  qrCancelar.Open;
  cxButton2.Visible := True;
 end
 else
  Close;

end;

procedure TFrmDevolucao.cxButton1Click(Sender: TObject);
begin
 if ed_motivo_dev.Text = '' then
 begin
   ShowMessage('O motivo do cancelamento não pode ficar em branco.');
   Exit;
 end;

 try
  with DM do
  begin
    sp_devolucao.Prepare;
    sp_devolucao.ParamByName('id_loc').AsInteger           := qrCancelarid_locacao.AsInteger;
    sp_devolucao.ParamByName('mot_cancelamento').AsString  := ed_motivo_dev.Text;
    sp_devolucao.ExecProc;
  end;

  ShowMessage('Devolução realizada com sucesso!');
  Close;
 except
  ShowMessage('Ocorreu um erro!');
 end;

end;

procedure TFrmDevolucao.cxButton2Click(Sender: TObject);
begin
 Close;
end;

end.
