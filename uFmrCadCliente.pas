unit uFmrCadCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uFrmBaseCad, System.Actions,
  Vcl.ActnList, Vcl.StdCtrls, Vcl.ExtCtrls, uCliente;

type
  TfrmCadCliente = class(TfrmBaseCad)
    lblNome: TLabel;
    edtNome: TEdit;
    edtCPF_CNPJ: TEdit;
    edtEndereco: TEdit;
    edtBairro: TEdit;
    edtCidade: TEdit;
    edtNumero: TEdit;
    edtUF: TEdit;
    lblCPF_CNPJ: TLabel;
    lblEndereco: TLabel;
    lblBairro: TLabel;
    lblCidade: TLabel;
    lblNumero: TLabel;
    lblUF: TLabel;
    rdgTipoPessoa: TRadioGroup;
    procedure acOkExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    class procedure abrir;
  end;

var
  frmCadCliente: TfrmCadCliente;

implementation

{$R *.dfm}
{ TfrmCadCliente }

class procedure TfrmCadCliente.abrir;
begin
  if not Assigned(frmCadCliente) then
    Application.CreateForm(TfrmCadCliente, frmCadCliente);
  with frmCadCliente do
    try
      ShowModal;
    finally
      FreeAndNil(frmCadCliente);
    end;
end;

procedure TfrmCadCliente.acOkExecute(Sender: TObject);
var
  vCliente: TCliente;
begin
  inherited;
  if Trim(edtNome.Text) <> '' then
  begin
    vCliente := TCliente.Create;
    vCliente.Pessoa.TipoPessoa := 'F';
    if rdgTipoPessoa.ItemIndex > 0 then
      vCliente.Pessoa.TipoPessoa := 'J';
    vCliente.Pessoa.CPFCNPJ := edtCPF_CNPJ.Text;
    vCliente.Pessoa.NomeRazaoSocial := edtNome.Text;
    vCliente.Pessoa.Endereco := edtEndereco.Text;
    vCliente.Pessoa.Bairro := edtBairro.Text;
    vCliente.Pessoa.Cidade := edtCidade.Text;
    vCliente.Pessoa.UF := edtUF.Text;
    vCliente.Pessoa.Numero := edtNumero.Text;
    vCliente.Salvar;
    vCliente.Free;
    close;
  end;
  Close;
end;

end.
