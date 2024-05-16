unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    DateTimePicker1: TDateTimePicker;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure DateTimePicker1Change(Sender: TObject);
    procedure JiSuanRiQi();
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.JiSuanRiQi();
var
  s1: string;
  MyDT: TDate;
begin
  MyDT := DateTimePicker1.Date;
  s1 := ComboBox1.Text;
  if s1 = '��һ��' then
  begin
    Edit1.Text := FormatDateTime('yyyy��M��d��', MyDT);
    Edit2.Text := FormatDateTime('yyyy��M��d��', MyDT + 3);
    Edit3.Text := FormatDateTime('yyyy��M��d��', MyDT + 7);
    Edit4.Text := FormatDateTime('yyyy��M��d��', MyDT + 14);
    Edit5.Text := FormatDateTime('yyyy��M��d��', MyDT + 28);
  end
  else if s1 = '�ڶ���' then
  begin
    Edit1.Text := FormatDateTime('yyyy��M��d��', MyDT - 3);
    Edit2.Text := FormatDateTime('yyyy��M��d��', MyDT);
    Edit3.Text := FormatDateTime('yyyy��M��d��', MyDT + 4);
    Edit4.Text := FormatDateTime('yyyy��M��d��', MyDT + 11);
    Edit5.Text := FormatDateTime('yyyy��M��d��', MyDT + 25);
  end
  else if s1 = '������' then
  begin
    Edit1.Text := FormatDateTime('yyyy��M��d��', MyDT - 7);
    Edit2.Text := FormatDateTime('yyyy��M��d��', MyDT - 4);
    Edit3.Text := FormatDateTime('yyyy��M��d��', MyDT);
    Edit4.Text := FormatDateTime('yyyy��M��d��', MyDT + 7);
    Edit5.Text := FormatDateTime('yyyy��M��d��', MyDT + 21);
  end
  else if s1 = '������' then
  begin
    Edit1.Text := FormatDateTime('yyyy��M��d��', MyDT - 14);
    Edit2.Text := FormatDateTime('yyyy��M��d��', MyDT - 11);
    Edit3.Text := FormatDateTime('yyyy��M��d��', MyDT - 7);
    Edit4.Text := FormatDateTime('yyyy��M��d��', MyDT);
    Edit5.Text := FormatDateTime('yyyy��M��d��', MyDT + 14);
  end
  else if s1 = '������' then
  begin
    Edit1.Text := FormatDateTime('yyyy��M��d��', MyDT - 28);
    Edit2.Text := FormatDateTime('yyyy��M��d��', MyDT - 25);
    Edit3.Text := FormatDateTime('yyyy��M��d��', MyDT - 21);
    Edit4.Text := FormatDateTime('yyyy��M��d��', MyDT - 14);
    Edit5.Text := FormatDateTime('yyyy��M��d��', MyDT);
  end;
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  JiSuanRiQi();
end;

procedure TForm1.DateTimePicker1Change(Sender: TObject);
begin
  JiSuanRiQi();
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  SysDpi: Integer;
begin
  SysDpi := GetDeviceCaps(GetDC(0), LOGPIXELSX);
  if SysDpi = 96 then
  begin
    Form1.Font.Name := '����';
  end;
  DateTimePicker1.Date := Now();
  ComboBox1.ItemIndex := 0;
  JiSuanRiQi();
end;

end.
