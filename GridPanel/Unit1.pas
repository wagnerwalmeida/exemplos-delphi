unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, AdvEdit;

type
  TForm1 = class(TForm)
    FlowPanel1: TFlowPanel;
    GridPanel1: TGridPanel;
    AdvEdit1: TAdvEdit;
    AdvEdit2: TAdvEdit;
    AdvEdit3: TAdvEdit;
    AdvEdit4: TAdvEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
