defmodule Rockelivery do
  alias Rockelivery.Users.Create, as: UsersCreate
  alias Rockelivery.Users.Delete, as: UsersDelete
  alias Rockelivery.Users.Get, as: UsersGet
  alias Rockelivery.Users.Update, as: UsersUpdate

  alias Rockelivery.Items.Create, as: ItemsCreate

  alias Rockelivery.Orders.Create, as: OrdersCreate

  defdelegate create_user(params), to: UsersCreate, as: :call
  defdelegate get_user_by_id(id), to: UsersGet, as: :by_id
  defdelegate update_user(params), to: UsersUpdate, as: :call
  defdelegate delete_user(id), to: UsersDelete, as: :call

  defdelegate create_item(params), to: ItemsCreate, as: :call

  defdelegate create_order(params), to: OrdersCreate, as: :call
end
