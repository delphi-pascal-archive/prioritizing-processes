unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Th1 = class(TThread)
  private
    { Private declarations }
  protected
    procedure Execute; override;
    procedure Caption1;
  end;

implementation

uses
  Unit1;


{ Th1 }

procedure Th1.Execute;
label
ret,letsgo;

begin
  runn1:= false;
  Unit1.Form1.edt1.text:='подготовка ...';
  Sleep(1000);
  Unit1.Form1.edt1.text:='!!!Ожидание очереди!!!';
  waiting1:=5;
//******************************************//
  ret:;
  if (runn1 = false) and (runn2 = false) and (runn3 = false) and (runn4 = false) and (runn5 = false)
  then
         begin
    if (waiting1>waiting2)and (waiting1>waiting3)and(waiting1>waiting4)and(waiting1>waiting5) then goto letsgo
    else goto ret;
    letsgo:;
    runn1:= true;
    Synchronize(Caption1);
    Unit1.Form1.edt1.text:='5..';
    Sleep(1000);
    Unit1.Form1.edt1.text:='4..';
    Sleep(1000);
    Unit1.Form1.edt1.text:='3..';
    Sleep(1000);
    Unit1.Form1.edt1.text:='2..';
    Sleep(1000);
    Unit1.Form1.edt1.text:='1..';
    Sleep(1000);
    runn1:= false;
    Synchronize(Caption1);
             end


  else
   begin
     Sleep(100);
     goto ret;
   end;

end;
procedure Th1.Caption1;
begin
       if runn1 = true then
         begin
            Unit1.Form1.edt1.text:='работает'
         end
       else
         begin
            Unit1.Form1.edt1.text:='готово';
            waiting1:=0;
         end;


end;
end.
