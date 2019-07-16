unit Pattern.ConcreteElementProgramador;

interface

uses
  Pattern.ConcreteElement;

type
  { Concrete Element - subclasse }
  TProgramador = class(TFuncionario)
  public
    procedure Accept(Visitor: IInterface); override;
  end;

implementation

uses
  System.SysUtils, Pattern.Visitor;

{ TOperario }

procedure TProgramador.Accept(Visitor: IInterface);
var
  ConcreteVisitor: IVisitor;
begin
  // Aplica um typecasting do par�metro para o tipo IVisitor
  ConcreteVisitor := Visitor as IVisitor;

  // Chama o m�todo "Visit" do Concrete Visitor, enviando a pr�pria inst�ncia como par�metro.
  // Essa inst�ncia � o que indicar� qual sobrecarga do m�todo "Visit" ser� chamado.
  ConcreteVisitor.Visit(Self);
end;

end.
