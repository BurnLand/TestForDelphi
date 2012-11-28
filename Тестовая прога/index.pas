unit index;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, WideStrings, DBXMsSQL, DB, SqlExpr, FMTBcd, ADODB, StdCtrls, DataModule;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
  DataModule.DataModule1.ADOQuery1.SQL.Clear;
  DataModule.DataModule1.ADOQuery1.SQL.Add('SELECT hdr_MaterialPicking.TargetLocationName FROM hdr_MaterialPicking');
  DataModule.DataModule1.ADOQuery1.Active;
  if DataModule.DataModule1.ADOQuery1.RecordCount > 0 then Label1.Caption:= IntToStr(DataModule.DataModule1.ADOQuery1.RecordCount);

end;

end.
