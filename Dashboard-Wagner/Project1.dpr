program Project1;

uses
  Vcl.Forms,
  Dashboard in 'Dashboard.pas' {FrmDashboard},
  Menu in 'Menu.pas' {FrmMenu},
  Acoes in 'Acoes.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFrmDashboard, FrmDashboard);
  Application.CreateForm(TFrmMenu, FrmMenu);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
