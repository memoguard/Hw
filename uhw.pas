unit uhw;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  SynCommons, SynLog, SynLZ,
  Dialogs, StdCtrls, Buttons;

type
  Tfrmhw = class(TForm)
    bitbtnHW: TBitBtn;
    btException: TButton;
    procedure bitbtnHWClick(Sender: TObject);
    procedure btExceptionClick(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  frmhw: Tfrmhw;

implementation

{$R *.dfm}
{$R 'hw_version.res'}
{$R 'hw_icon.res'}

procedure Tfrmhw.bitbtnHWClick(Sender: TObject);
var
  synlogger:iSynlog;
begin
  synlogger:=TSynLog.Enter(Self,'bitbtnHWClick',True);
  Try
  ShowMessage('Bonjour le nouveau monde !!!');
  except
    on E: Exception do
    begin
      synlogger.log(sllException,E.Message);
    end;
  End;
end;

procedure Tfrmhw.btExceptionClick(Sender: TObject);
var
  c:Currency;
  synlogger:iSynlog;
  a, b : Integer;
begin
  synlogger:=TSynLog.Enter(Self,'btExceptionClick',True);
  Try
    synlogger.Log(sllInfo,'Preparing somme kind of division');
    a:=1;
    b:=0;
    c:=(a/b);
    Self.Caption:=CurrToStr(c);
  except
    on E: Exception do
    begin
      synlogger.log(sllException,E.Message);
    end;
  End;
end;

end.
