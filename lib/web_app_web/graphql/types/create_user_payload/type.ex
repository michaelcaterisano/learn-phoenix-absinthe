defmodule WebAppWeb.Schema.Types.CreateUserPayload.Type do
  @moduledoc false
  use Absinthe.Schema.Notation

  alias WebAppWeb.Schema.Types.CreateUserPayload.Resolvers

  @desc "Payload for creating a user"
  object :create_user_payload do
    meta(:type, :create_user_payload)
    field :user, :user
    field :metadata, :create_user_metadata, resolve: &Resolvers.create_user_metadata/3
  end

  @desc "Metadata for creating a user"
  object :create_user_metadata do
    field(:message, :string)
  end
end
