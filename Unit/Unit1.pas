(* Checking Mail by Apuromafo *)

unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, System.RegularExpressions;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    // procedure Button2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  var
    Form1: TForm1;

    // si creo no publico se definen como ExpresionMail1, ExpresionMail2,ExpresionMail3 :String;
  const
    ExpresionMail1 = '^((?>[a-zA-Z\d!#$%&''*+\-/=?^_`{|}~]+\x20*' +
      '|"((?=[\x01-\x7f])[^"\\]|\\[\x01-\x7f])*"\' +
      'x20*)*(?<angle><))?((?!\.)(?>\.?[a-zA-Z\d!' +
      '#$%&''*+\-/=?^_`{|}~]+)+|"((?=[\x01-\x7f])' +
      '[^"\\]|\\[\x01-\x7f])*")@(((?!-)[a-zA-Z\d\' +
      '-]+(?<!-)\.)+[a-zA-Z]{2,}|\[(((?(?<!\[)\.)' +
      '(25[0-5]|2[0-4]\d|[01]?\d?\d)){4}|[a-zA-Z\' +
      'd\-]*[a-zA-Z\d]:((?=[\x01-\x7f])[^\\\[\]]|' +
      '\\[\x01-\x7f])+)\])(?(angle)>)$';
    // Fuente Foro Delphi ->https://www.clubdelphi.com/foros/showthread.php?t=21741
    ExpresionMail2 = '[\w\d\-\.]+@[\w\d\-]+(\.[\w\d\-]+)+';
    // Fuente http://regexpstudio.com/es/demos.html
    ExpresionMail3 =
      '\[\_a-zA-Z\\d\\-\\.\]+@\[\_a-zA-Z\\d\\-\]+(\\.\[\_a-zA-Z\\d\\-\]+)+';

  end;

implementation

{$R *.DFM}

procedure TForm1.Button1Click(Sender: TObject);
begin

  begin
    // Fuente Google  ->https://sourceforge.net/p/radstudiodemos/code/HEAD/tree/branches/RADStudio_Berlin/Object%20Pascal/RTL/RegExpression/fmx/Main.pas#l19

    // podemos usar ExpresionMail1 o bien ExpresionMail1 o bien ExpresionMail1
    if not TRegEx.IsMatch(Edit1.Text, ExpresionMail1) then
    begin
      Label1.Caption := 'La dirección de email no es válida';
      Edit1.SetFocus;
    end
    else
    begin
      Label1.Caption := 'La dirección de email es válida';
    end;

  end;

end;
// a futuro espero usar un poco el Tregex.matches...
// procedure TForm1.Button2Click(Sender: TObject);
// m :integer;
// begin
// f/oreach (Match m in TRegEx.Matches(Edit2.Text, ExpresionMail3))
// messagebox(

// end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Application.Terminate;
  Halt;
end;

end.
