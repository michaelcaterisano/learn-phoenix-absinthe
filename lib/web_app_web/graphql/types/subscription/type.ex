defmodule WebAppWeb.Schema.Types.Subscription.Type do
  @moduledoc false

  use Absinthe.Schema.Notation

  alias WebAppWeb.Schema.Types.Subscription.Resolvers

  import_types(WebAppWeb.Schema.Types.UserEvent.Type)

  object :subscription_fields do
    field :user, :user_event do
      arg(:id, non_null(:id))

      config(fn args, _info ->
        IO.inspect("configggg")
        {:ok, topic: "user:#{args.id}"}
      end)

      trigger([:create_user],
        topic: fn payload ->
          IO.inspect(payload, label: "sub payload")
          "user:#{payload.user.id}"
        end
      )

      resolve(&Resolvers.user_event/3)
    end
  end
end
