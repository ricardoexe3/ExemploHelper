unit View.FrmEstudos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB;

  Type SetOpen = class helper for TADOQuery
   procedure SetOpen(SQL : string);
  end;

type
  TFrmEstudoDelphi = class(TForm)
    GroupBox1: TGroupBox;
    BtnTeste: TBitBtn;
    BtnCarregaDados: TBitBtn;
    DBGrid1: TDBGrid;
    Connect: TADOConnection;
    QryDados: TADOQuery;
    DsDados: TDataSource;
    procedure BtnCarregaDadosClick(Sender: TObject);
    procedure BtnTesteClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEstudoDelphi: TFrmEstudoDelphi;

implementation

{$R *.dfm}
procedure TFrmEstudoDelphi.BtnCarregaDadosClick(Sender: TObject);
begin
 QryDados.Close;
 QryDados.SQL.Clear;
 QryDados.SQL.Text := 'Select * From Clientes';
 QryDados.Open;
 QryDados.First;
end;
{ SetOpen }
procedure SetOpen.SetOpen(SQL: string);
begin
 Self.Close;
 Self.SQL.Clear;
 Self.SQL.Text := SQL;
 Self.Open;
 Self.First;
end;

procedure TFrmEstudoDelphi.BtnTesteClick(Sender: TObject);
begin
 QryDados.SetOpen('Select Nome From Clientes');
end;

end.
