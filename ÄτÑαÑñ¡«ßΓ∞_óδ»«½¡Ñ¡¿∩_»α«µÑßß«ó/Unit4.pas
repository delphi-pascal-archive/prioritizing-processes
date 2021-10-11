unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Th3 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
        procedure Caption1;
  end;

implementation

uses
  Unit1;


{ Th3 }

procedure Th3.Execute;
label
ret,letsgo;
begin
  runn1:= false;
  Unit1.Form1.edt3.text:='подготовка ...5';
  sleep(1000);
    Unit1.Form1.edt3.text:='подготовка ...4';
  sleep(1000);
    Unit1.Form1.edt3.text:='подготовка ...3';
  sleep(1000);
    Unit1.Form1.edt3.text:='подготовка ...2';
  sleep(1000);
    Unit1.Form1.edt3.text:='подготовка ...1';
  sleep(1000);
  Unit1.Form1.edt3.text:='!!!Ожидание очереди!!!';
  waiting3:=12;
//******************************************//
  ret:;
  if (runn1 = false) and (runn2 = false) and (runn3 = false) and (runn4 = false) and (runn5 = false)
  then
//******************************************//
    begin
      if (waiting3>waiting2)and (waiting3>waiting1)and(waiting3>waiting4)and(waiting3>waiting5) then goto letsgo
    else goto ret;
    letsgo:;
    runn3:= true;
    Synchronize(Caption1);
    Unit1.Form1.edt3.text:='10..';
    Sleep(1000);
    Unit1.Form1.edt3.text:='9..';
    Sleep(1000);
    Unit1.Form1.edt3.text:='8..';
    Sleep(1000);
    Unit1.Form1.edt3.text:='7..';
    Sleep(1000);
    Unit1.Form1.edt3.text:='6..';
    Sleep(1000);
    Unit1.Form1.edt3.text:='5..';
    Sleep(1000);
    Unit1.Form1.edt3.text:='4..';
    Sleep(1000);
    Unit1.Form1.edt3.text:='3..';
    Sleep(1000);
    Unit1.Form1.edt3.text:='2..';
    Sleep(1000);
    Unit1.Form1.edt3.text:='1..';
    Sleep(1000);
    runn3:= false;
    Synchronize(Caption1);
    end

  else
   begin
     Sleep(100);
     goto ret;
   end;

end;
procedure Th3.Caption1;
begin
       if runn3 = true then
         begin
            Unit1.Form1.edt3.text:='работает'
         end
       else
         begin
            Unit1.Form1.edt3.text:='готово';
            waiting3:=0;
         end;


end;
end.
