{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit untThread;

interface

uses
  classes, SysUtils, Windows, ComCtrls;

type
  TMinhaThread = class(TThread)
  private
    FTempo: integer;
    FProgressBar: TProgressBar;
  public
    constructor Create; overload;

    procedure Progress;
    procedure Execute; override;

    property Tempo: Integer read FTempo write FTempo;
    property ProgressBar: TProgressBar read FProgressBar write FProgressBar;
  end;

implementation

constructor TMinhaThread.Create;
begin
  inherited Create(True);
end;

procedure TMinhaThread.Execute;
begin
  // loop infinito
  while True do
  begin
    Sleep(FTempo);
    Synchronize(Progress);
  end;
end;

procedure TMinhaThread.Progress;
begin
  // atualiza a ProgressBar a cada iteração do método 'Execute'
  FProgressBar.StepIt;
end;

end.
