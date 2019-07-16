program ExemploLogin;

uses
  Forms,
  SysUtils,
  Controls,
  UnitPrincipal in 'UnitPrincipal.pas' {FrmPrincipal},
  UnitSplash in 'UnitSplash.pas' {FrmSplash},
  UnitLogin in 'UnitLogin.pas' {FrmLogin},
  UnitFormulario1 in 'UnitFormulario1.pas' {FrmFormulario1},
  UnitFormulario2 in 'UnitFormulario2.pas' {FrmFormulario2};

{$R *.res}

begin
  FrmSplash := TFrmSplash.Create(nil); // cria a tela de SplashScreen
  FrmSplash.Show; // exibe a tela
  FrmSplash.Update; // atualiza a tela

  Sleep(3000); // mant�m a tela aberta por 3 segundos
  FrmSplash.Close; // fecha a tela

  FrmLogin := TFrmLogin.Create(nil); // cria o formul�rio de login
  if FrmLogin.ShowModal = mrOk then // exibe e verifica se o login foi feito corretamente
  begin
    FreeAndNil(FrmLogin); // fecha e libera o formul�rio de login
    Application.Initialize; // inicializa a aplica��o
    Application.MainFormOnTaskbar := True;
    Application.CreateForm(TFrmPrincipal, FrmPrincipal); // cria o formul�rio principal
    Application.Run; // executa a aplica��o
  end;
end.
