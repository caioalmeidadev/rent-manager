unit FRetorno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, dxSkinsCore, dxBarBuiltInMenu,
  cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters, cxContainer,
  cxEdit, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxDateRanges, cxDataControllerConditionalFormattingRulesManagerDialog,
  Data.DB, cxDBData, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxDropDownEdit, cxMaskEdit,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel, cxClasses,
  cxGridCustomView, cxGrid, cxPC, cxLabel, Vcl.ExtCtrls, cxTextEdit, cxMemo,
  cxDBEdit, cxCurrencyEdit, cxCalendar,DateUtils, Vcl.Menus, Vcl.StdCtrls,
  cxButtons;

type
  TFrmRetorno = class(TForm)
    cxPageControl1: TcxPageControl;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    qrLocacoes: TFDQuery;
    dsLocacoes: TDataSource;
    cxGrid1DBTableView1Column1: TcxGridDBColumn;
    cxGrid1DBTableView1Column2: TcxGridDBColumn;
    cxGrid1DBTableView1Column3: TcxGridDBColumn;
    cxGrid1DBTableView1Column4: TcxGridDBColumn;
    cxGrid1DBTableView1Column5: TcxGridDBColumn;
    cxGrid1DBTableView1Column6: TcxGridDBColumn;
    cxGrid1DBTableView1Column7: TcxGridDBColumn;
    cxGrid1DBTableView1Column8: TcxGridDBColumn;
    qrLocacoesid_locacao: TFDAutoIncField;
    qrLocacoesdata_abertura: TDateField;
    qrLocacoesdata_retorno: TDateField;
    qrLocacoescliente_fone: TStringField;
    qrLocacoesvl_diaria: TBCDField;
    qrLocacoesvl_total: TBCDField;
    qrLocacoeskm_abertura: TStringField;
    qrLocacoeskm_fechamento: TStringField;
    qrLocacoesobs: TMemoField;
    qrLocacoesfl_situacao: TIntegerField;
    qrLocacoesfl_situacao_nome: TStringField;
    qrLocacoesplaca: TStringField;
    qrLocacoesveiculo_descricao: TStringField;
    qrLocacoescliente_nome: TStringField;
    C�digo: TcxLabel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBTextEdit4: TcxDBTextEdit;
    cxLabel5: TcxLabel;
    cxDBTextEdit5: TcxDBTextEdit;
    cxLabel6: TcxLabel;
    cxDBDateEdit1: TcxDBDateEdit;
    cxDBCurrencyEdit1: TcxDBCurrencyEdit;
    cxDBDateEdit2: TcxDBDateEdit;
    cxLabel7: TcxLabel;
    cxDBCurrencyEdit2: TcxDBCurrencyEdit;
    cxDBTextEdit6: TcxDBTextEdit;
    cxLabel8: TcxLabel;
    cxDBTextEdit7: TcxDBTextEdit;
    cxLabel9: TcxLabel;
    cxDBTextEdit8: TcxDBTextEdit;
    cxLabel10: TcxLabel;
    cxDBMemo1: TcxDBMemo;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    qrLocacoesveiculo_id: TIntegerField;
    qrLocacoescliente_id: TIntegerField;
    qrLocacoesqtde_dias: TLargeintField;
    qrCliente: TFDQuery;
    qrVeiculo: TFDQuery;
    dsCliente: TDataSource;
    dsVeiculo: TDataSource;
    ed_qtde_dias: TcxTextEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure qrLocacoesAfterScroll(DataSet: TDataSet);

    procedure cxDBDateEdit2PropertiesChange(Sender: TObject);
    procedure ed_qtde_diasPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRetorno: TFrmRetorno;

implementation

{$R *.dfm}

uses FDM, FPrincipal, FDevolucao;

procedure TFrmRetorno.cxButton1Click(Sender: TObject);
begin
  if qrLocacoes.State in [dsEdit,dsInsert] then
    qrLocacoes.Post;
  qrLocacoes.Refresh;
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmRetorno.cxButton2Click(Sender: TObject);
begin
 if qrLocacoes.State in [dsEdit,dsInsert] then
  qrLocacoes.Cancel;
 cxPageControl1.ActivePageIndex := 0;

end;

procedure TFrmRetorno.cxButton3Click(Sender: TObject);
begin
 try
   with DM do
   begin
    sp_finaliza_locacao.Prepare;
    sp_finaliza_locacao.ParamByName('vl_total_').AsBCD  := qrLocacoesvl_total.AsFloat;
    sp_finaliza_locacao.ParamByName('vl_pago').AsBCD    := qrLocacoesvl_total.AsFloat;
    sp_finaliza_locacao.ParamByName('id_loc').AsInteger := qrLocacoesid_locacao.AsInteger;
    sp_finaliza_locacao.ExecProc;

    sp_altera_status_veiculo.Prepare;
    sp_altera_status_veiculo.ParamByName('id_veiculo_att').AsInteger := qrLocacoesveiculo_id.AsInteger;
    sp_altera_status_veiculo.ParamByName('fl_loc').AsString          := 'N';
    sp_altera_status_veiculo.ExecProc;

   end;

   ShowMessage('Loca��o finalizada com sucesso!');
   qrLocacoes.Refresh;
 except
   ShowMessage('Ocorreu um erro ao finalizar a loca��o');
 end;
end;

procedure TFrmRetorno.cxButton5Click(Sender: TObject);
begin
 case qrLocacoesfl_situacao.AsInteger of

  0 : begin
       cxPageControl1.ActivePageIndex := 1;
       qrLocacoes.Edit;
      end;
  1 : ShowMessage('Loca��o Cancelada!');

  2 : ShowMessage('Loca��o j� finalizada!');
 end;
end;

procedure TFrmRetorno.cxButton6Click(Sender: TObject);
begin
 if qrLocacoesfl_situacao.AsInteger = 0 then
 begin
  if not Assigned(FrmDevolucao) then
   FrmDevolucao := TFrmDevolucao.Create(Self,qrLocacoesid_locacao.AsInteger);
  FrmDevolucao.ShowModal;
  qrLocacoes.Refresh;
  FreeAndNil(FrmDevolucao);
 end;
end;

procedure TFrmRetorno.cxDBDateEdit2PropertiesChange(Sender: TObject);
begin
 if qrLocacoes.State in [dsEdit,dsInsert] then
   if cxDBDateEdit2.Date <>  qrLocacoesdata_retorno.AsDateTime then
     ed_qtde_dias.Text := IntToStr(DaysBetween(qrLocacoesdata_abertura.AsDateTime,cxDBDateEdit2.Date));
end;

procedure TFrmRetorno.ed_qtde_diasPropertiesChange(Sender: TObject);
begin
 if qrLocacoes.State in [dsInsert,dsEdit] then
  qrLocacoesvl_total.AsFloat := qrLocacoesvl_diaria.AsFloat * StrToInt(ed_qtde_dias.Text);
end;

procedure TFrmRetorno.FormShow(Sender: TObject);
begin
 qrLocacoes.Open;
 qrCliente.Open;
 qrVeiculo.Open;
end;

procedure TFrmRetorno.qrLocacoesAfterScroll(DataSet: TDataSet);
begin
   ed_qtde_dias.Text := qrLocacoesqtde_dias.AsString;
end;

end.