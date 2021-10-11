unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Th5 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
        procedure Caption1;
  end;

implementation

uses
  Unit1;


{ Th5 }

procedure Th5.Execute;
label
ret,letsgo;
begin
  runn1:= false;
  Unit1.Form1.edt5.text:='подготовка ...8';
  sleep(1000);
    Unit1.Form1.edt5.text:='подготовка ...7';
  sleep(1000);
    Unit1.Form1.edt5.text:='подготовка ...6';
  sleep(1000);
    Unit1.Form1.edt5.text:='подготовка ...5';
  sleep(1000);
    Unit1.Form1.edt5.text:='подготовка ...4';
  sleep(1000);
    Unit1.Form1.edt5.text:='подготовка ...3';
  sleep(1000);
    Unit1.Form1.edt5.text:='подготовка ...2';
  sleep(1000);
    Unit1.Form1.edt5.text:='подготовка ...1';
  sleep(1000);
    Unit1.Form1.edt5.text:='!!!Ожидание очереди!!!';
    waiting5:=5;
//******************************************//
  ret:;
 if (runn1 = false) and (runn2 = false) and (runn3 = false) and (runn4 = false) and (runn5 = false)
  then
//******************************************//
    begin
      if (waiting5>waiting2)and (waiting5>waiting3)and(waiting5>waiting4)and(waiting5>waiting1) then goto letsgo
    else goto ret;
    letsgo:;
    runn5:= true;
    Synchronize(Caption1);
    Unit1.Form1.edt5.text:='12..';
    Sleep(1000);
    Unit1.Form1.edt5.text:='10..';
    Sleep(1000);
    Unit1.Form1.edt5.text:='8..';
    Sleep(1000);
    Unit1.Form1.edt5.text:='6..';
    Sleep(1000);
    Unit1.Form1.edt5.text:='4..';
    Sleep(1000);
    Unit1.Form1.edt5.text:='2..';
    Sleep(1000);
    Unit1.Form1.edt5.text:='1..';
    Sleep(1000);
    runn5:= false;
    Synchronize(Caption1);
    end

  else
   begin
     Sleep(100);
     goto ret;
   end;

end;
procedure Th5.Caption1;
begin
       if runn5 = true then
         begin
            Unit1.Form1.edt5.text:='работает'
         end
       else
         begin
            Unit1.Form1.edt5.text:='готово';
            waiting5:=0;
         end;


end;
end.
