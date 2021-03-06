unit Unit12;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type

  THuman = Class
    procedure voice; virtual; abstract; //구현(ctrl+shifr+c)부분을
                                         // 만들어 주지 않아도 됨
  end;

  TMan = Class(THuman)
    procedure voice; override;
    procedure eat; virtual;     // override 된것이 아니기 떄문에
  End;                            // 선언을 다시 해줘야 함

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    Human:THuman;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TMan }

procedure TMan.eat;   // 구현 (abstract 안된 TMan은 구현해야함)
begin
  ShowMessage('Please HotDog~');
end;

procedure TMan.voice;
begin
  inherited;
  ShowMessage('Ha~Ha~');
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Human := TMan.Create;
  Human.voice;
  // Human.eat;  <- 사용 할 수 없다. virtual 이기 때문에
  Human.Free;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  Man:TMan;
begin
  Man := TMan.Create;
  Man.eat;
  Man.Free;
end;

end.
