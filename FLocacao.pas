unit FLocacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Vcl.Menus,
  Vcl.ComCtrls, dxCore, cxDateUtils, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxMemo, cxDropDownEdit, cxCalendar,
  cxCurrencyEdit, cxTextEdit, cxLabel, cxMaskEdit, cxButtonEdit, Vcl.StdCtrls,
  cxButtons, cxGroupBox,DateUtils;

type
  TFrmLocacao = class(TForm)
    Cliente: TcxGroupBox;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxGroupBox3: TcxGroupBox;
    btnNovo: TcxButton;
    ed_cod_cliente: TcxButtonEdit;
    ed_cod_veiculo: TcxButtonEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    ed_nome_cliente: TcxTextEdit;
    ed_doc: TcxTextEdit;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    ed_desc_veiculo: TcxTextEdit;
    ed_placa: TcxTextEdit;
    ed_km_inicial: TcxTextEdit;
    ed_vl_diaria: TcxCurrencyEdit;
    cxLabel10: TcxLabel;
    ed_data_locacao: TcxDateEdit;
    ed_data_prev_retorno: TcxDateEdit;
    ed_cod_locacao: TcxTextEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    ed_fone: TcxTextEdit;
    cxLabel15: TcxLabel;
    ed_obs: TcxMemo;
    cxLabel16: TcxLabel;
    ed_vl_total: TcxCurrencyEdit;
    cxLabel17: TcxLabel;
    ed_qtde_dias: TcxTextEdit;
    btnSalvar: TcxButton;
    btnCancelar: TcxButton;
    qrLocacao: TFDQuery;
    qrCliente: TFDQuery;
    qrVeiculo: TFDQuery;
    procedure novaLocacao;
    procedure btnNovoClick(Sender: TObject);
    procedure ed_cod_veiculoPropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ed_cod_veiculoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_clientePropertiesButtonClick(Sender: TObject;
      AButtonIndex: Integer);
    procedure ed_cod_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure ed_data_prev_retornoExit(Sender: TObject);
    procedure ed_qtde_diasPropertiesChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure ed_vl_diariaPropertiesChange(Sender: TObject);
    procedure limparControles;
    procedure btnCancelarClick(Sender: TObject);
    procedure ed_data_prev_retornoPropertiesChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLocacao: TFrmLocacao;

implementation

{$R *.dfm}

uses FVeiculosDisponivel, App.Funcoes, FListaClientes, FDM, FPrincipal,
  FRelContrato, FRelRecibo;


procedure TFrmLocacao.btnNovoClick(Sender: TObject);
begin
 novaLocacao;
 btnNovo.Enabled := False;
 btnsalvar.Enabled := True;
 btnCancelar.Enabled := True;
end;

procedure TFrmLocacao.btnSalvarClick(Sender: TObject);
var
iCliente,iVeiculo:Integer;
begin

  iCliente := StrToIntDef(ed_cod_cliente.Text,0);

  if iCliente <= 0 then
  begin
    ShowMessage('Cliente não selecionado.');
    ed_cod_cliente.SetFocus;
    Exit
  end;

  iVeiculo := StrToIntDef(ed_cod_veiculo.Text,0);
  if iVeiculo <= 0 then
  begin
    ShowMessage('Veículo não selecionado');
    ed_cod_veiculo.SetFocus;
    Exit;
  end;

  qrLocacao.Close;
  qrLocacao.SQL.Clear;
  qrLocacao.SQL.Add('select * from tb_locacao where id_locacao=0');
  qrLocacao.Open;

  try
    qrLocacao.Append;
    qrLocacao.FieldByName('data_abertura').AsDateTime := ed_data_locacao.Date;
    qrLocacao.FieldByName('data_retorno').AsDateTime  := ed_data_prev_retorno.Date;
    qrLocacao.FieldByName('fl_situacao').AsInteger    := 0; //ABERTA;
    qrLocacao.FieldByName('cliente_id').AsInteger     := iCliente;
    qrLocacao.FieldByName('cliente_fone').AsString    := ed_fone.Text;
    qrLocacao.FieldByName('veiculo_id').AsInteger     := iVeiculo;
    qrLocacao.FieldByName('km_abertura').AsString     := ed_km_inicial.Text;
    qrLocacao.FieldByName('vl_diaria').AsFloat        := ed_vl_diaria.Value;
    qrLocacao.FieldByName('vl_total').AsFloat         := ed_vl_total.Value;
    qrLocacao.FieldByName('obs').AsString             := ed_obs.Lines.Text;
    qrLocacao.Post;
    qrLocacao.Last;


    DM.sp_altera_status_veiculo.Prepare;
    DM.sp_altera_status_veiculo.ParamByName('id_veiculo_att').AsInteger := iVeiculo;
    DM.sp_altera_status_veiculo.ParamByName('fl_loc').AsString  := 'S';
    DM.sp_altera_status_veiculo.ExecProc;

    limparControles;

    ShowMessage('Locação Gravada com sucesso!');

    if MessageDlg('Deseja imprimir o contrato dessa locação?',mtConfirmation,[mbYes,mbNo],0,mbYes) = mrYes then
    begin
      if not Assigned(FrmRelContrato) then
       FrmRelContrato := TFrmRelContrato.Create(Self,IntToStr(qrLocacao.FieldByName('id_locacao').AsInteger));
      FrmRelContrato.ShowModal;
      FreeAndNil(FrmRelContrato);
    end;

     if MessageDlg('Deseja imprimir o recibo dessa locação?',mtConfirmation,[mbYes,mbNo],0,mbYes) = mrYes then
    begin
      if not Assigned(FrmRelRecibo) then
       FrmRelRecibo := TFrmRelRecibo.Create(Self,qrLocacao.FieldByName('id_locacao').AsInteger);
      FrmRelRecibo.Show;
      FreeAndNil(FrmRelRecibo);
    end;

  except
     ShowMessage('Occoreu um erro ao gravar a locação.');
  end;

  btnNovo.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;


end;

procedure TFrmLocacao.btnCancelarClick(Sender: TObject);
begin
 limparControles;
 btnNovo.Enabled := True;
  btnSalvar.Enabled := False;
  btnCancelar.Enabled := False;


end;

procedure TFrmLocacao.ed_cod_clienteKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = Char(VK_RETURN) then
 begin
   if ed_cod_cliente.Text <> '' then
   begin
     qrCliente.Close;
     qrCliente := SimpleQuery('select * from tb_clientes where id_cliente = ' + ed_cod_cliente.Text);
     if qrCliente <> nil then
     begin
       ed_nome_cliente.Text := qrCliente.FieldByName('nome_razao').AsString;
       ed_doc.Text := qrCliente.FieldByName('cpf_cnpj').AsString;
       ed_fone.Text := qrCliente.FieldByName('telefone2').AsString;

       ed_cod_veiculo.SetFocus;
     end
     else
      ed_cod_veiculo.SetFocus;
   end;
 end;
end;

procedure TFrmLocacao.ed_cod_clientePropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 if not Assigned(FrmListaClientes) then
  FrmListaClientes := TFrmListaClientes.Create(nil);
 FrmListaClientes.ShowModal;
 ed_cod_cliente.Text := IntToStr(FrmListaClientes.xIdCliente);
 FreeAndNil(FrmListaClientes);
end;

procedure TFrmLocacao.ed_cod_veiculoKeyPress(Sender: TObject; var Key: Char);
begin
 if Key = Char(VK_RETURN) then
 begin
  if ed_cod_veiculo.Text <> '' then
  begin

   qrVeiculo := SimpleQuery('select * from tb_veiculos where fl_locacao = ''N'' and id_veiculo = ' + ed_cod_veiculo.Text);
   if qrVeiculo <> nil then
   begin
     ed_desc_veiculo.Text := qrVeiculo.FieldByName('descricao').AsString;
     ed_placa.Text        := qrVeiculo.FieldByName('placa').AsString;
     ed_km_inicial.Text   := qrVeiculo.FieldByName('km_atual').AsString;
     ed_vl_diaria.Value   := qrVeiculo.FieldByName('vl_diaria').AsFloat;

     ed_obs.SetFocus;
   end
   else
    ShowMessage('Este veículonão esta disponivél para locação!');
  end
  else
    ed_obs.SetFocus;

 end;
end;

procedure TFrmLocacao.ed_cod_veiculoPropertiesButtonClick(Sender: TObject;
  AButtonIndex: Integer);
begin
 if not Assigned(FrmVeiculoDisponivel) then
  FrmVeiculoDisponivel := TFrmVeiculoDisponivel.Create(nil);
 FrmVeiculoDisponivel.ShowModal;
 ed_cod_veiculo.Text := IntToStr(FrmVeiculoDisponivel.xIdVeiculo);
 FreeAndNil(FrmVeiculoDisponivel);
end;

procedure TFrmLocacao.ed_data_prev_retornoExit(Sender: TObject);
begin
 ed_qtde_dias.Text := IntToStr(DaysBetween(ed_data_locacao.Date,ed_data_prev_retorno.Date));
end;

procedure TFrmLocacao.ed_data_prev_retornoPropertiesChange(Sender: TObject);
begin
 ed_qtde_dias.Text := IntToStr(DaysBetween(ed_data_locacao.Date,ed_data_prev_retorno.Date));
end;

procedure TFrmLocacao.ed_qtde_diasPropertiesChange(Sender: TObject);
begin
 if (ed_qtde_dias.Text <> '0') and (ed_vl_diaria.Value > 0) then
  ed_vl_total.Value := ed_vl_diaria.Value * StrToInt(ed_qtde_dias.Text);
end;

procedure TFrmLocacao.ed_vl_diariaPropertiesChange(Sender: TObject);
begin
  if (ed_vl_diaria.Value > 0) then
  ed_vl_total.Value := ed_vl_diaria.Value * StrToInt(ed_qtde_dias.Text);
end;

procedure TFrmLocacao.limparControles;
var
i:Integer;
begin
  for i := 0 to ComponentCount - 1 do
  begin
    if Components[i] is TcxTextEdit then
     TcxTextEdit(Components[i]).Text := '';

    if Components[i] is TcxCurrencyEdit then
     TcxCurrencyEdit(Components[i]).Value := 0;

    if Components[i] is TcxDateEdit then
     TcxDateEdit(Components[i]).Date := Now;
  end;

   ed_obs.Lines.Text := '';
end;

procedure TFrmLocacao.novaLocacao;
begin

 ed_cod_locacao.Text       := '-1';
 ed_data_locacao.Date      := Now;
 ed_data_prev_retorno.Date := Now;

 ed_data_prev_retorno.SetFocus;
end;

end.
