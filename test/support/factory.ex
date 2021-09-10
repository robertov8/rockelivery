defmodule Rockelivery.Factory do
  use ExMachina.Ecto, repo: Rockelivery.Repo

  alias Rockelivery.User

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

  def user_factory do
    %User{
      id: "aefd1002-23ef-4252-b0ff-013eac53c7f2",
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
