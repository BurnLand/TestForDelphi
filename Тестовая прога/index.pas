unit index;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DBXMsSQL, DB, ExtCtrls, StdCtrls, ADODB,  FMTBcd,  ActnList,
  Menus;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    ADOConnection1: TADOConnection;
    Button2: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Panel1: TPanel;
    N2: TMenuItem;
    N3: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure ADOConnection1ConnectComplete(Connection: TADOConnection;
      const Error: Error; var EventStatus: TEventStatus);
    procedure Button2Click(Sender: TObject);
    procedure ADOConnection1Disconnect(Connection: TADOConnection;
      var EventStatus: TEventStatus);
    procedure N1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.ADOConnection1ConnectComplete(Connection: TADOConnection;
  const Error: Error; var EventStatus: TEventStatus);
begin
  Label1.Caption:= 'Подключение успешно';
end;

procedure TForm1.ADOConnection1Disconnect(Connection: TADOConnection;
  var EventStatus: TEventStatus);
begin
  Label1.Caption:= 'Отключено';
  if Form1.N3.Checked then ADOConnection1.Connected:= True;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  ADOConnection1.Connected:= True;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  ADOConnection1.Connected:= False;
end;

procedure TForm1.N1Click(Sender: TObject);
begin
  Close;
end;

end.
