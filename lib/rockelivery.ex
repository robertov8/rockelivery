defmodule Rockelivery do
  alias Rockelivery.User.Create, as: UserCreate
  alias Rockelivery.User.Get, as: UserGet

  defdelegate create_user(params), to: UserCreate, as: :call
  defdelegate get_user_by_id(id), to: UserGet, as: :by_id
end
