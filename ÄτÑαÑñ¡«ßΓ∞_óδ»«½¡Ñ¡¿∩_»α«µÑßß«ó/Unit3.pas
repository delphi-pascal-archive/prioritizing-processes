unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Th2 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
        procedure Caption1;
  end;

implementation

uses
  Unit1;


{ Th2 }

procedure Th2.Execute;
label
ret,letsgo;
begin
  runn1:= false;
  Unit1.Form1.edt2.text:='подготовка ...2';
  sleep(1000);
  Unit1.Form1.edt2.text:='подготовка ...1';
  sleep(1000);
  Unit1.Form1.edt2.text:='!!!Ожидание очереди!!!';
  waiting2:=10;
//******************************************//
  ret:;
  if (runn1 = false) and (runn2 = false) and (runn3 = false) and (runn4 = false) and (runn5 = false)
  then
//******************************************//
    begin
      if (waiting2>waiting1)and (waiting2>waiting3)and(waiting2>waiting4)and(waiting2>waiting5) then goto letsgo
    else goto ret;
    letsgo:;
    runn2:= true;
    Synchronize(Caption1);
    Unit1.Form1.edt2.text:='8..';
    Sleep(1000);
    Unit1.Form1.edt2.text:='7..';
    Sleep(1000);
    Unit1.Form1.edt2.text:='6..';
    Sleep(1000);
    Unit1.Form1.edt2.text:='5..';
    Sleep(1000);
    Unit1.Form1.edt2.text:='4..';
    Sleep(1000);
    Unit1.Form1.edt2.text:='3..';
    Sleep(1000);
    Unit1.Form1.edt2.text:='2..';
    Sleep(1000);
    Unit1.Form1.edt2.text:='1..';
    Sleep(1000);
    runn2:= false;
    Synchronize(Caption1);
    end

  else
   begin
     Sleep(100);
     goto ret;
   end;

end;
procedure Th2.Caption1;
begin
       if runn2 = true then
         begin
            Unit1.Form1.edt2.text:='работает'
         end
       else
         begin
            Unit1.Form1.edt2.text:='готово';
            waiting2:=0;
         end;


end;
end.
