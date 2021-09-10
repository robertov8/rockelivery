defmodule Rockelivery.Factory do
  use ExMachina

  def user_params_factory do
    %{
      address: "Rua das bananeiras, 17",
      age: 27,
      cep: "28000000",
      cpf: "12345678921",
      email: "roberto@gmail.com",
      password: "123456",
      name: "Roberto Ribeiro"
    }
  end
end
