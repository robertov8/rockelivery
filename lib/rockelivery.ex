defmodule Rockelivery do
  alias Rockelivery.User.Create, as: UserCreate
  alias Rockelivery.User.Get, as: UserGet
  alias Rockelivery.User.Delete, as: UserDelete

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
  defdelegate delete_user(id), to: UserDelete, as: :call
end
