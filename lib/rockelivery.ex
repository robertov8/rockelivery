defmodule Rockelivery do
  alias Rockelivery.Users.Create, as: UsersCreate
  alias Rockelivery.Users.Get, as: UsersGet
  alias Rockelivery.Users.Update, as: UsersUpdate
  alias Rockelivery.Users.Delete, as: UsersDelete

  defdelegate create_user(params), to: UsersCreate, as: :call
  defdelegate get_user_by_id(id), to: UsersGet, as: :by_id
  defdelegate update_user(params), to: UsersUpdate, as: :call
  defdelegate delete_user(id), to: UsersDelete, as: :call
end
