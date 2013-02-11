unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;
  min,sec:Integer;
  mins,secs:string;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
     min:=0;
     sec:=0;

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
     min:=0;
     sec:=10;
  timer1.Enabled:=true;

end;

procedure TForm1.Label1Click(Sender: TObject);
begin

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
    Button1.Enabled:=false;
  Sec:=sec-1;
  if sec=60 then
  begin
    min:=min+1;
    sec:=0;
    end;
  if sec<10 then secs:='0'+inttostr(sec);
  if sec>9 then secs:=inttostr(sec);
  if min>10 then mins:='0'+inttostr(min);
  if min>9 then mins:=inttostr(min);
  label1.Caption:='00'+':'+secs; //mins вместо 00 для отображения минут на label
  If sec=0 then Timer1.Enabled:=False;
    Button1.Enabled:=true;
  end;

end.

