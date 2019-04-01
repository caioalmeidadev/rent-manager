unit FCadUsuario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxStyles,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator, dxDateRanges,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, FireDAC.Comp.DataSet, FireDAC.Comp.Client, cxGridLevel,
  cxClasses, cxGridCustomView, cxGrid, cxGroupBox, dxBarBuiltInMenu,
  cxDBLookupComboBox, Vcl.Menus, Vcl.StdCtrls, cxButtons, Vcl.ExtCtrls,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxLabel, cxTextEdit,
  cxDBEdit, cxPC, ACBrBase, ACBrEnterTab;

type
  TFrmCadUsuario = class(TForm)
    qrUsuarios: TFDQuery;
    dsUsuarios: TDataSource;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridDBColumn1: TcxGridDBColumn;
    cxGridDBColumn2: TcxGridDBColumn;
    cxGridDBColumn3: TcxGridDBColumn;
    cxGridDBColumn7: TcxGridDBColumn;
    cxGridLevel1: TcxGridLevel;
    cxDBTextEdit1: TcxDBTextEdit;
    cxDBTextEdit2: TcxDBTextEdit;
    cxDBTextEdit3: TcxDBTextEdit;
    cxDBTextEdit4: TcxDBTextEdit;
    qrUsuariosid_usuario: TFDAutoIncField;
    qrUsuariosnome_usuario: TStringField;
    qrUsuarioslogin: TStringField;
    qrUsuariossenha: TStringField;
    qrUsuariosacesso_id: TIntegerField;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    cxLabel6: TcxLabel;
    Panel1: TPanel;
    cxLabel5: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    qrAcesso: TFDQuery;
    dsAcesso: TDataSource;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    ACBrEnterTab1: TACBrEnterTab;
    procedure FormShow(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure qrUsuariosAfterScroll(DataSet: TDataSet);
    procedure dsUsuariosStateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadUsuario: TFrmCadUsuario;

implementation

{$R *.dfm}

uses FDM, FPrincipal;

procedure TFrmCadUsuario.cxButton1Click(Sender: TObject);
begin
 qrUsuarios.Append;
 qrAcesso.Close;
 qrAcesso.ParamByName('ID_').AsString := '%';
 qrAcesso.Open;
 cxPageControl1.ActivePageIndex := 1;
 cxDBTextEdit2.SetFocus;
end;

procedure TFrmCadUsuario.cxButton2Click(Sender: TObject);
begin
 qrUsuarios.Edit;
 cxPageControl1.ActivePageIndex := 1;
 cxDBTextEdit2.SetFocus;
end;

procedure TFrmCadUsuario.cxButton4Click(Sender: TObject);
begin
  if qrUsuarios.State in [dsInsert,dsEdit] then
   qrUsuarios.Post;

  qrUsuarios.Refresh;
  cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmCadUsuario.cxButton5Click(Sender: TObject);
begin
 if qrUsuarios.State in [dsInsert,dsEdit] then
  qrUsuarios.Cancel;

 qrUsuarios.Refresh;
 cxPageControl1.ActivePageIndex := 0;
end;

procedure TFrmCadUsuario.dsUsuariosStateChange(Sender: TObject);
begin
  cxButton1.Enabled := (Sender as TDataSource).State in [dsBrowse];
  cxButton4.Enabled := (Sender as TDataSource).State in [dsEdit, dsInsert];
  cxButton5.Enabled := cxButton4.Enabled;
  cxButton2.Enabled := (cxButton1.Enabled) and not ((Sender as TDataSource).DataSet.IsEmpty);

end;

procedure TFrmCadUsuario.FormShow(Sender: TObject);
begin
  qrUsuarios.Open;
  qrAcesso.Open;
  cxPageControl1.Properties.HideTabs := True;
end;

procedure TFrmCadUsuario.qrUsuariosAfterScroll(DataSet: TDataSet);
begin
 qrAcesso.Close;
 qrAcesso.ParamByName('ID_').AsString := IntToStr(qrUsuariosacesso_id.AsInteger);
 qrAcesso.Open;
end;

end.
