unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Th4 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
      procedure Caption1;
  end;

implementation

uses
  Unit1;


{ Th4 }

procedure Th4.Execute;
label
ret,letsgo;
begin
  runn1:= false;
  Unit1.Form1.edt4.text:='подготовка ...5';
  sleep(1000);
    Unit1.Form1.edt4.text:='подготовка ...4';
  sleep(1000);
    Unit1.Form1.edt4.text:='подготовка ...3';
  sleep(1000);
    Unit1.Form1.edt4.text:='подготовка ...2';
  sleep(1000);
    Unit1.Form1.edt4.text:='подготовка ...1';
  sleep(1000);
  Unit1.Form1.edt4.text:='!!!Ожидание очереди!!!';
  waiting4:=50;
//******************************************//
  ret:;
  if (runn1 = false) and (runn2 = false) and (runn3 = false) and (runn4 = false) and (runn5 = false)
  then
//******************************************//
    begin
      if (waiting4>waiting2)and (waiting4>waiting3)and(waiting4>waiting1)and(waiting4>waiting5) then goto letsgo
    else goto ret;
    letsgo:;
    runn4:= true;
    Synchronize(Caption1);
    Unit1.Form1.edt4.text:='56..';
    Sleep(600);
    Unit1.Form1.edt4.text:='50..';
    Sleep(1000);
    Unit1.Form1.edt4.text:='40..';
    Sleep(1000);
    Unit1.Form1.edt4.text:='30..';
    Sleep(1000);
    Unit1.Form1.edt4.text:='20..';
    Sleep(1000);
    Unit1.Form1.edt4.text:='10..';
    Sleep(1000);
    runn4:= false;
    Synchronize(Caption1);
    end

  else
   begin
     Sleep(100);
     goto ret;
   end;

end;
procedure Th4.Caption1;
begin
       if runn4 = true then
         begin
            Unit1.Form1.edt4.text:='работает'
         end
       else
         begin
            Unit1.Form1.edt4.text:='готово';
            waiting4:=0;
         end;


end;
end.
