defmodule SurveyLive.Accounts.Invitation do
  @moduledoc """
  The Invitation Schema.
  """
  use SurveyLive.Schema
  import Ecto.Changeset

  schema "invitations" do
    field :accepted_at, :utc_datetime
    field :declined_at, :utc_datetime
    field :email, :string

    belongs_to :invited_by, SurveyLive.Users.User, foreign_key: :invited_by_user_id
    belongs_to :account, SurveyLive.Accounts.Account

    timestamps()
  end

  @doc false
  def changeset(invitation, attrs) do
    invitation
    |> cast(attrs, [:email, :accepted_at, :declined_at])
    |> validate_required([:email])
    |> unique_constraint(:email, name: :invitations_account_id_email_declined_at_index)
  end
end
