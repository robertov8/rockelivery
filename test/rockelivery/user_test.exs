defmodule Rockelivery.UserTest do
  use Rockelivery.DataCase, async: true

  alias Ecto.Changeset
  alias Rockelivery.User

  describe "changeset/2" do
    test "when all params are valid, returns a valid changeset" do
      params = %{
        address: "Rua das bananeiras, 17",
        age: 27,
        cep: "28000000",
        cpf: "12345678921",
        email: "roberto@gmail.com",
        password: "123456",
        name: "Roberto Ribeiro"
      }

      response = User.changeset(params)

      assert %Changeset{changes: %{name: "Roberto Ribeiro"}, valid?: true} = response
    end

    test "when updating a changeset, returns a valid changeset with the given changes" do
      params = %{
        address: "Rua das bananeiras, 17",
        age: 27,
        cep: "28000000",
        cpf: "12345678921",
        email: "roberto@gmail.com",
        password: "123456",
        name: "Roberto Ribeiro"
      }

      update_params = %{name: "Roberto"}

      response =
        params
        |> User.changeset()
        |> User.changeset(update_params)

      assert %Changeset{changes: %{name: "Roberto"}, valid?: true} = response
    end

    test "when there are some error, returns an invalid changeset" do
      params = %{
        address: "Rua das bananeiras, 17",
        age: 17,
        cep: "28000000",
        cpf: "12345678921",
        email: "robertogmail.com",
        password: "123",
        name: "Roberto Ribeiro"
      }

      response = User.changeset(params)

      expected_response = %{
        age: ["must be greater than or equal to 18"],
        password: ["should be at least 6 character(s)"],
        email: ["has invalid format"]
      }

      assert errors_on(response) == expected_response
    end
  end
end
