program hw;

uses
  FastMM4,
  Forms,
  SynCommons, SynLog, SynLZ,
  uhw in 'uhw.pas' {frmhw};

begin
  Application.Initialize;
  with TSynLog.Family do
  begin
    Level := LOG_VERBOSE;
    PerThreadLog := ptOneFilePerThread;
    EchoToConsole := LOG_VERBOSE;
  end;
  Application.CreateForm(Tfrmhw, frmhw);
  Application.Run;
end.
