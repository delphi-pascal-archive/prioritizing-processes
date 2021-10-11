unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Unit2, Unit3, Unit4, Unit5, Unit6;

type
  TForm1 = class(TForm)
    lbl1: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    lbl2: TLabel;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    edt9: TEdit;
    edt10: TEdit;
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  waiting1:integer;
  waiting2:integer;
  waiting3:integer;
  waiting4:integer;
  waiting5:integer;
  runn1:Boolean;
  runn2:Boolean;
  runn3:Boolean;
  runn4:Boolean;
  runn5:Boolean;
  Form1: TForm1;
  i, j, n, max:Integer;
  pr:Array[0..4] of Integer=(5, 10, 12, 50, 5);

implementation


{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
label
p0,p1,p2,p3,p4,exitt;
var
  t1:Th1;
  t2:Th2;
  t3:Th3;
  t4:Th4;
  t5:Th5;
begin
  edt6.Text:='5';
  edt7.Text:='10';
  edt8.Text:='12';
  edt9.Text:='50';
  edt10.Text:='5';
  waiting1:=0;
  waiting2:=0;
  waiting3:=0;
  waiting4:=0;
  waiting5:=0;
   max:= pr[0];
   n:= 0;
   for i:=0 to 5 do
   begin
       if pr[i]>max then
         begin
           max:=pr[i];
           n:=i;
         end;
   end;


    if max<0 then goto exitt;
    if n = 0 then goto p0;
    if n = 1 then goto p1;
    if n = 2 then goto p2;
    if n = 3 then goto p3;
    if n = 4 then goto p4;

    p0:;
         T1:=Th1.Create(false);
         T1.FreeOnTerminate:=true;
         pr[0]:= -1;

   max:= pr[0];
   n:= 0;
   for i:=0 to 5 do
   begin
       if pr[i]>max then
         begin
           max:=pr[i];
           n:=i;
         end;
     end;

    if max<0 then goto exitt;
    if n = 0 then goto p0;
    if n = 1 then goto p1;
    if n = 2 then goto p2;
    if n = 3 then goto p3;
    if n = 4 then goto p4;

    p1:;

         T2:=Th2.Create(false);
         T2.FreeOnTerminate:=true;
         pr[1]:= -1;

   max:=pr[0];
   n:=0;
   for i:=0 to 5 do
   begin
       if pr[i]>max then
         begin
           max:=pr[i];
           n:=i;
         end;
     end;

    if max<0 then goto exitt;
    if n = 0 then goto p0;
    if n = 1 then goto p1;
    if n = 2 then goto p2;
    if n = 3 then goto p3;
    if n = 4 then goto p4;

    p2:;

         T3:=Th3.Create(false);
         T3.FreeOnTerminate:=true;
         pr[2]:= -1;

   max:= pr[0];
   n:= 0;
   for i:=0 to 5 do
   begin
       if pr[i]>max then
         begin
           max:=pr[i];
           n:=i;
         end;
     end;

    if max<0 then goto exitt;
    if n = 0 then goto p0;
    if n = 1 then goto p1;
    if n = 2 then goto p2;
    if n = 3 then goto p3;
    if n = 4 then goto p4;

    p3:;

         T4:=Th4.Create(false);
         T4.FreeOnTerminate:=true;
         pr[3]:= -1;

   max:= pr[0];
   n:= 0;
   for i:=0 to 5 do
   begin
       if pr[i]>max then
         begin
           max:= pr[i];
           n:= i;
         end;
     end;

    if max<0 then goto exitt;
    if n = 0 then goto p0;
    if n = 1 then goto p1;
    if n = 2 then goto p2;
    if n = 3 then goto p3;
    if n = 4 then goto p4;
    p4:;

         T5:=Th5.Create(false);
         T5.FreeOnTerminate:=true;
         pr[4]:= -1;


   max:= pr[0];
   n:= 0;
   for i:=0 to 5 do
   begin
       if pr[i]>max then
         begin
           max:= pr[i];
           n:= i;
         end;
     end;

    if max<0 then goto exitt;
    if n = 0 then goto p0;
    if n = 1 then goto p1;
    if n = 2 then goto p2;
    if n = 3 then goto p3;
    if n = 4 then goto p4;


   exitt:;

end;

end.
