program Proj;

uses
  Vcl.Forms,
  View.FrmEstudos in 'View.FrmEstudos.pas' {FrmEstudoDelphi};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmEstudoDelphi, FrmEstudoDelphi);
  Application.Run;
end.
