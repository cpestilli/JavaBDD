# language: pt
Funcionalidade: Calcular Frete
  Como um usuário do sistema Ecommerce
  Desejo consultar o valor de um frete mediante Peso e dimensoes de um produto
  Para que eu possa enviar um produto

  Cenário: Consultar um endereço valido
    Dado um CEP válido:
      | cep | 13083970 |
    Quando eu informo o CEP na busca de endereço
    Então o resultado deve ser o endereço:
      | Logradouro       | Cidade   |
      | Rua Carlos Gomes | Campinas |

  Cenário: Consultar um endereço com CEP não existente
    Dado um CEP não existente:
      | cep | 99999999 |
    Quando eu informo o CEP na busca de endereço
    Então o retorno deve conter um valor de erro igual a "true"

  Cenário: Consultar um endereço com CEP invalido.
    Dado um CEP inválido:
      | cep | 1234567890 |
    Quando eu informo o CEP na busca de endereço
    Então uma exceção deve ser lançada com a mensagem de erro:
    """
    O CEP informado é invalido
    """

  Cenário: Serviço ViaCep não responde
    Dado um CEP válido:
      | cep | 13083970 |
    E o serviço ViaCep não esta respondendo
    Quando eu informo o CEP na busca de endereço
    Então uma exceção deve ser lançada com a mensagem de erro:
    """
    Serviço indisponivel
    """
