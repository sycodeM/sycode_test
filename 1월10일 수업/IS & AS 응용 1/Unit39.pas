unit Unit39;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
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
var
  i:integer;
begin   // component�� ������ palette ���� ���� ��ȣ
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TEdit) then //component�� edit�̸� ����
      TEdit(Components[i]).Clear;  //��� edit Text ����
end;

end.
