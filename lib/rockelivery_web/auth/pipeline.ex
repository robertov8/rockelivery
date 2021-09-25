defmodule RockeliveryWeb.Auth.Pileline do
  use Guardian.Plug.Pipeline, otp_app: :rockelivery

  plug Guardian.Plug.VerifyHeader
  plug Guardian.Plug.EnsureAuthenticated
  plug Guardian.Plug.LoadResource
end
