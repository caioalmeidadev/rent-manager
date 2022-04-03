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
  cxButtons, Vcl.ComCtrls, dxCore, cxDateUtils, cxGroupBox,
  dxSkinsDefaultPainters;

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
    Código: TcxLabel;
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
    ed_km_retorno: TcxTextEdit;
    cxLabel2: TcxLabel;
    qrLocacoesid_locacao: TIntegerField;
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
    qrLocacoesveiculo_id: TIntegerField;
    qrLocacoescliente_id: TIntegerField;
    qrLocacoesqtde_dias: TIntegerField;
    cxGroupBox1: TcxGroupBox;
    ed_filtro_inicio: TcxDateEdit;
    cxLabel15: TcxLabel;
    ed_filtro_fim: TcxDateEdit;
    btn_filtrar: TcxButton;
    procedure FormShow(Sender: TObject);
    procedure qrLocacoesAfterScroll(DataSet: TDataSet);

    procedure cxDBDateEdit2PropertiesChange(Sender: TObject);
    procedure ed_qtde_diasPropertiesChange(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure qrLocacoesCalcFields(DataSet: TDataSet);
    procedure busca_locacoes(xDT_INICIO:TDateTime;xDT_FIM:TDateTime);
    procedure btn_filtrarClick(Sender: TObject);
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

procedure TFrmRetorno.btn_filtrarClick(Sender: TObject);
begin
 busca_locacoes(ed_filtro_inicio.Date,ed_filtro_fim.Date);
end;

procedure TFrmRetorno.busca_locacoes(xDT_INICIO, xDT_FIM: TDateTime);
begin
  qrVeiculo.Close;
  qrCliente.Close;
  qrLocacoes.Close;
  qrLocacoes.ParamByName('DT_INICIO_').AsDate := xDT_INICIO;
  qrLocacoes.ParamByName('DT_FINAL_').AsDate  := xDT_FIM;
  qrLocacoes.Open;
  qrCliente.Open;
  qrVeiculo.Open;
end;

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

 if (ed_km_retorno.Text = '') and (StrToInt(ed_km_retorno.Text) > 0) then
 begin
   ShowMessage('O KM de retorno do veículo está zerado.');
   ed_km_retorno.SetFocus;
   Exit;
 end;

 try
   with DM do
   begin


    qrTemp.Close;
    qrTemp.SQL.Clear;
    qrTemp.SQL.Add('update tb_locacao set fl_situacao = 2 where id_locacao = :id');
    qrTemp.ParamByName('id').AsInteger := qrLocacoesid_locacao.AsInteger;
    qrTemp.ExecSQL;

    qrTemp.Close;
    qrTemp.SQL.Clear;
    qrTemp.SQL.Add('update tb_veiculos set fl_locacao = :fl_loc, km_atual = :km where id_veiculo = :id');
    qrTemp.ParamByName('id').AsInteger    := qrLocacoesveiculo_id.AsInteger;
    qrTemp.ParamByName('km').AsString     := Trim(ed_km_retorno.Text);
    qrTemp.ParamByName('fl_loc').AsString := 'N';
    qrTemp.ExecSQL;


    qrTemp.Close;
    qrTemp.SQL.Clear;
    qrTemp.SQL.Add('insert into tb_contas_receber (vl_total,vl_recebido,dt_pagamento,id_locacao)values(:total,:recebido,:pgto,:id)');
    qrTemp.ParamByName('id').AsInteger        := qrLocacoesid_locacao.AsInteger;
    qrTemp.ParamByName('total').AsFloat       := qrLocacoesvl_total.AsFloat;
    qrTemp.ParamByName('recebido').AsFloat    := qrLocacoesvl_total.AsFloat;
    qrTemp.ParamByName('pgto').AsDate         := Now;
    qrTemp.ExecSQL;

    qrTemp.Close;
   end;

   ShowMessage('Locação finalizada com sucesso!');
   qrLocacoes.Refresh;
   cxPageControl1.ActivePageIndex := 0;
 except
   ShowMessage('Ocorreu um erro ao finalizar a locação');
 end;
end;

procedure TFrmRetorno.cxButton5Click(Sender: TObject);
begin
 case qrLocacoesfl_situacao.AsInteger of

  0 : begin
       cxPageControl1.ActivePageIndex := 1;
       qrLocacoes.Edit;
      end;
  1 : ShowMessage('Locação Cancelada!');

  2 : ShowMessage('Locação já finalizada!');
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
 cxButton6.Visible := DM.qrUsuarioAcesso.FieldByName('cancela_locacao').AsString = 'X';

 ed_filtro_inicio.Date := NOW;
 ed_filtro_fim.Date    := NOW;

 busca_locacoes(NOW,NOW);
 cxPageControl1.HideTabs := True;
 cxPageControl1.ActivePageIndex := 0;

end;

procedure TFrmRetorno.qrLocacoesAfterScroll(DataSet: TDataSet);
begin
   ed_qtde_dias.Text := qrLocacoesqtde_dias.AsString;
end;

procedure TFrmRetorno.qrLocacoesCalcFields(DataSet: TDataSet);
begin
 //if (cxPageControl1.ActivePageIndex = 1) and (qrLocacoes.State in [dsEdit,dsInsert]) then
  qrLocacoesqtde_dias.AsVariant := DaysBetween(qrLocacoesdata_retorno.AsDateTime,qrLocacoesdata_abertura.AsDateTime);
end;

end.
