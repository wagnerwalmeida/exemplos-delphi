unit Dashboard;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Menu, Vcl.Menus, Vcl.ExtCtrls,
  System.Actions, Vcl.ActnList, Vcl.StdCtrls;

type
  TFrmDashboard = class(TFrmMenu)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmDashboard: TFrmDashboard;

implementation

{$R *.dfm}

end.