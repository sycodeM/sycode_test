unit Unit11;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  THuman=Class
    procedure voice; virtual;
  end;
  TMan=Class(THuman)
    procedure voice; override;
  End;
  TWoman=class(THuman)
    procedure voice; override;
  end;

  TForm1 = class(TForm)
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
  private
    { Private declarations }
    Human:THuman;   // virtual Ŭ������ �������ָ� �ȴ�.
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ THuman }

procedure THuman.voice;
begin
   ShowMessage('Human');
end;

{ TMan }

procedure TMan.voice;
begin
  inherited;  // ��� �޾ұ� ������ ����
  ShowMessage('Man');
end;

{ TWoman }

procedure TWoman.voice;
begin
  inherited;  // ��� �޾ұ� ������ ����
   ShowMessage('Woman');
end;

procedure TForm1.RadioButton1Click(Sender: TObject);
begin
  Human := THuman.Create; //������ ���� ����� ��
  Human.voice;            // ���� �̸����� �����ִ�.
  Human.Free;
end;

procedure TForm1.RadioButton2Click(Sender: TObject);
begin
  Human := Tman.Create; //������ ���� ����� ��
  Human.voice;          // ���� �̸����� �����ִ�.
  Human.Free;
end;

procedure TForm1.RadioButton3Click(Sender: TObject);
begin
  Human := TWoman.Create; //������ ���� ����� ��
  Human.voice;            // ���� �̸����� �����ִ�.
  Human.Free;
end;

end.
