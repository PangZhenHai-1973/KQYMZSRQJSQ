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
  if s1 = '第一针' then
  begin
    Edit1.Text := FormatDateTime('yyyy年M月d日', MyDT);
    Edit2.Text := FormatDateTime('yyyy年M月d日', MyDT + 3);
    Edit3.Text := FormatDateTime('yyyy年M月d日', MyDT + 7);
    Edit4.Text := FormatDateTime('yyyy年M月d日', MyDT + 14);
    Edit5.Text := FormatDateTime('yyyy年M月d日', MyDT + 28);
  end
  else if s1 = '第二针' then
  begin
    Edit1.Text := FormatDateTime('yyyy年M月d日', MyDT - 3);
    Edit2.Text := FormatDateTime('yyyy年M月d日', MyDT);
    Edit3.Text := FormatDateTime('yyyy年M月d日', MyDT + 4);
    Edit4.Text := FormatDateTime('yyyy年M月d日', MyDT + 11);
    Edit5.Text := FormatDateTime('yyyy年M月d日', MyDT + 25);
  end
  else if s1 = '第三针' then
  begin
    Edit1.Text := FormatDateTime('yyyy年M月d日', MyDT - 7);
    Edit2.Text := FormatDateTime('yyyy年M月d日', MyDT - 4);
    Edit3.Text := FormatDateTime('yyyy年M月d日', MyDT);
    Edit4.Text := FormatDateTime('yyyy年M月d日', MyDT + 7);
    Edit5.Text := FormatDateTime('yyyy年M月d日', MyDT + 21);
  end
  else if s1 = '第四针' then
  begin
    Edit1.Text := FormatDateTime('yyyy年M月d日', MyDT - 14);
    Edit2.Text := FormatDateTime('yyyy年M月d日', MyDT - 11);
    Edit3.Text := FormatDateTime('yyyy年M月d日', MyDT - 7);
    Edit4.Text := FormatDateTime('yyyy年M月d日', MyDT);
    Edit5.Text := FormatDateTime('yyyy年M月d日', MyDT + 14);
  end
  else if s1 = '第五针' then
  begin
    Edit1.Text := FormatDateTime('yyyy年M月d日', MyDT - 28);
    Edit2.Text := FormatDateTime('yyyy年M月d日', MyDT - 25);
    Edit3.Text := FormatDateTime('yyyy年M月d日', MyDT - 21);
    Edit4.Text := FormatDateTime('yyyy年M月d日', MyDT - 14);
    Edit5.Text := FormatDateTime('yyyy年M月d日', MyDT);
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
    Form1.Font.Name := '宋体';
  end;
  DateTimePicker1.Date := Now();
  ComboBox1.ItemIndex := 0;
  JiSuanRiQi();
end;

end.
