{ Este exemplo foi baixado no site www.andrecelestino.com
  Passe por lá a qualquer momento para conferir os novos artigos! :)
  contato@andrecelestino.com }
  
unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    TreeView1: TTreeView;
    TreeView2: TTreeView;
    Label1: TLabel;
    Label2: TLabel;
    procedure TreeView2MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure TreeView2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure TreeView2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
begin
  TreeView1.FullExpand;
  TreeView2.FullExpand;
end;

procedure TForm1.TreeView2DragDrop(Sender, Source: TObject; X, Y: Integer);
var
  TargetNode: TTreenode;
begin
  TargetNode := TreeView2.GetNodeAt(x, y);
  if Source = TreeView1 then
  begin
    TreeView2.Items.AddChild(TargetNode, TreeView1.Selected.Text);
    TreeView1.Items.Delete(TreeView1.Selected);
    TreeView2.Update;
    TreeView2.FullExpand;
  end;
end;

procedure TForm1.TreeView2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
var
 TargetNode : TTreeNode;
begin
  Accept := False;
  TargetNode := TreeView2.GetNodeAt(x, y);
  if TargetNode <> nil then
  begin
    if Source = TreeView1 then
      Accept := True;
  end;
end;

procedure TForm1.TreeView2MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  TreeView2.BeginDrag(False, 8);
end;

end.
