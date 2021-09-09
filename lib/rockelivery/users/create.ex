defmodule Rockelivery.User.Create do
  alias Rockelivery.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
