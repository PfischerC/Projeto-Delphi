unit uFrmEditarCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFmrCadCliente, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, uDM;

type
  TfrmEditarCliente = class(TfrmCadCliente)
  private
    { Private declarations }
  public
    { Public declarations }
    procedure abrir(id : integer);
    procedure CarregarCliente(id : Integer);
    procedure CarregarDados;

    var
    Ftransacao : TTransacao;
    Fquery : TQuery;

  end;

var
  frmEditarCliente: TfrmEditarCliente;

implementation

{$R *.dfm}

{ TfrmEditarCliente }

 procedure TfrmEditarCliente.abrir(id : integer);
begin
if not Assigned(frmEditarCliente) then
    Application.CreateForm(TfrmEditarCliente, frmEditarCliente);
  with frmEditarCliente do
    try
    CarregarCliente(id);
      ShowModal;
    finally
      FreeAndNil(frmEditarCliente);
    end;
end;

procedure TfrmEditarCliente.CarregarCliente(id: Integer);
begin
  with Fquery do
  begin
    sql.Add('SELECT * FROM cliente WHERE cod_cliente ='+inttostr(id));
    Open;
    edtCPF_CNPJ.Text := FieldByName('CPF_CNPJ').AsString;
    edtNome.Text:= FieldByName('NOME_RAZAO_SOCIAL').AsString;
    edtEndereco.Text:= FieldByName('ENDERECO').AsString;
    edtBairro.Text:= FieldByName('BAIRRO').AsString;
    edtCidade.Text:= FieldByName('CIDADE').AsString;
    edtUF.Text:= FieldByName('UF').AsString;
    edtNumero.Text:= FieldByName('NUMERO').AsString;
    close;
  end;
end;

procedure TfrmEditarCliente.CarregarDados;

begin
  Ftransacao := DM.GetTransaction;
  Ftransacao.StartTransaction;
  Fquery:=DM.GetQuery(Ftransacao);

end;

end.
