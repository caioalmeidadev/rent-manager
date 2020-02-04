unit App.Funcoes;


interface
  uses Data.DB,Firedac.Comp.Client, FPrincipal,FDM;

  function SimpleQuery(xSQL:string):TFDQuery;
  function checkColuna(xTabela:string;xColuna:string):Boolean;
  function checkTabela(xBanco:string;xTabela:string):Boolean;
  function ultimo_inserido(xTabela:string):Integer;
implementation

function checkColuna(xTabela:string;xColuna:string):Boolean;
var
qryTmp:TFDQuery;
begin
  Result := simpleQuery('SELECT * FROM INFORMATION_SCHEMA.COLUMNS WHERE ' +
                        'TABLE_NAME = ''' + xTabela + ''' AND COLUMN_NAME = ''' + xColuna + ''';') = nil;
end;

function checkTabela(xBanco:string;xTabela:string):Boolean;
begin
  Result := simpleQuery('SELECT count(*) as coluna FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_SCHEMA = ''' + xBanco + ''' ' +
                        'AND TABLE_NAME = ''' + xTabela + ''';') <> nil;
end;

function SimpleQuery(xSQL:string):TFDQuery;
var
 qryTmp : TFDQuery;
begin

 try
   qryTmp            := TFDQuery.Create(nil);
   qryTmp.Connection := DM.Conn;
   qryTmp.SQL.Clear;
   qryTmp.SQL.Add(xSQL);
   QryTmp.Open;
   if qryTmp.RecordCount > 0 then
    Result := qryTmp
   else
    Result := nil;
 finally

 end;

end;

function ultimo_inserido(xTabela:string):Integer;
var
i:Integer;
begin
  i := -1;
  i := SimpleQuery('select last_insert_id() from ' + xTabela + ';' ).Fields[0].AsInteger;
  Result := i;
end;

end.
