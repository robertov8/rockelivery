defmodule RockeliveryWeb.FallbackController do
  use RockeliveryWeb, :controller

  alias Ecto.Changeset
  alias Rockelivery.Error
  alias RockeliveryWeb.ErrorView

  def call(conn, {:error, %Error{status: status, result: result}}) do
    conn
    |> put_status(status)
    |> put_view(ErrorView)
    |> render("error.json", result: result)
  end

  def call(conn, {:error, %Changeset{} = changeset}) do
    conn
    |> put_status(:bad_request)
    |> put_view(ErrorView)
    |> render("error.json", result: changeset)
  end
end
