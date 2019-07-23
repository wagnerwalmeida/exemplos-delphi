unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, RzPanel, System.Threading,
  Data.Win.ADODB, Data.DB, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type TMyTask = class(TTask)
   public
      TFrm: TComponentClass;
      Frm: TForm;
      function Run(Sender: TObject; Event: TNotifyEvent): ITask; override;
end;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
   Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

   TTask.Run( procedure
   var
      Panel: TRzPanel;
   begin

      Panel := TRzPanel.Create( Self );

      with Panel do begin

         Visible  := True;
         Color    := clLime;
         Top      := 0;
         Left     := 0;
         Width    := 120;
         Height   := 120;

      end;

      Sleep( 8000 );

      TThread.Synchronize( nil, procedure
      begin

         Panel.Parent   := Self;

      end );

   end );

end;

procedure TForm1.Button2Click(Sender: TObject);
var
   Panel: TRzPanel;
begin

   Panel := TRzPanel.Create( Self );

   with Panel do begin

      Visible  := True;
      Color    := clLime;
      Top      := 0;
      Left     := 500;
      Width    := 120;
      Height   := 120;

   end;

   Sleep( 8000 );

   Panel.Parent   := Self;

end;

procedure TForm1.Button3Click(Sender: TObject);
var
   Task: TMyTask;
begin

   Task := TMyTask.Create;

   Task.Frm    := Form2;
   Task.TFrm   := TForm2;

   //

end;

end.
