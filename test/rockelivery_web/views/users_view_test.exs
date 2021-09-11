defmodule RockeliveryWeb.UsersViewTest do
  use RockeliveryWeb.ConnCase, async: true

  import Phoenix.View
  import Rockelivery.Factory

  alias RockeliveryWeb.UsersView

  test "renders create.json" do
    user = build(:user)

    response = render(UsersView, "create.json", user: user)

    assert %{
             message: "User created!",
             user: %Rockelivery.User{
               address: "Rua das bananeiras, 17",
               age: 27,
               cep: "28000000",
               cpf: "12345678921",
               email: "roberto@gmail.com",
               id: "aefd1002-23ef-4252-b0ff-013eac53c7f2",
               name: "Roberto Ribeiro",
               password: "123456"
             }
           } = response
  end
end
