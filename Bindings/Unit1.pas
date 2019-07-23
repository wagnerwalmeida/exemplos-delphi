unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls,System.Bindings.Expression,
  System.Bindings.Helper;

type TPessoa = class
   strict private
      FNome: string;
   public
      property Nome: string read FNome write FNome;
end;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
    FPessoa: TPessoa;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  BindingExpression: TBindingExpression;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin

   ShowMessage(FPessoa.Nome);

end;

procedure TForm1.Edit1Change(Sender: TObject);
begin

   TBindings.Notify(Sender, 'Text');

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

   FPessoa := TPessoa.Create;
   BindingExpression := TBindings.CreateManagedBinding(
      [
         TBindings.CreateAssociationScope(
            [
               Associate(Edit1, 'Edit')
            ]
         )
      ], 'Edit.Text', [TBindings.CreateAssociationScope([Associate(FPessoa, 'Pessoa')])],
      'Pessoa.Nome', nil);

end;

procedure TForm1.FormDestroy(Sender: TObject);
begin

   FPessoa.Free;

end;

end.
