defmodule Rockelivery do
  alias Rockelivery.User.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
