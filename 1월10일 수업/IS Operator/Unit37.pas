unit Unit37;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Label1: TLabel;
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure MyClick(Sender:TObject); // Sender = Notifyevent
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.FormShow(Sender: TObject);
begin    // 폼이 실행되었을때 실행될수있는 모든 이밴트
  Button1.OnClick := MyClick;// button 클릭시 Myclick procedure실행
  Label1.OnClick := MyClick; // label 클릭시 Myclick procedure실행
end;

procedure TForm1.MyClick(Sender: TObject);
begin
  if (Sender is TButton) then  // Notifyevent가 Button이면 ~
    ShowMessage('Button')
  else if (Sender is TLabel) then  // Notifyevent가 label이면 ~
    ShowMessage('Label');
end;

end.
