unit Unit38;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
if (Sender is TButton) then begin
   if (Sender as TButton).Caption = 'C' then // as : ~로
      Edit1.Clear               // sender를 Button으로 바꿔 줘서
   else                         // button.caption으로 사용하도록
      Edit1.Text := Edit1.Text + (Sender as TButton).Caption;
   end;
end; // 각각의 버튼의 onclick에서 공유를 해줘야 한다!!

procedure TForm1.FormShow(Sender: TObject);
begin     //초기 Edit값을 clear해주기 위함.
  Edit1.Clear;
end;

end.
