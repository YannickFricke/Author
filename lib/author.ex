defmodule Author do
  @moduledoc ~S"""
  `Author` is a set of functions which can be used by server-side elixir applications
  to integrate authentication and authorization into the server.

  In the future different authentication and authorization methods will be supported.
  This will be
  - Basic HTTP authentication
  - OAuth
  - OpenID Connect (OIDC)

  ## Roadmap

  - Implement entities
    - Add the user entity
  - Implement Basic Authentication
  - Implement OAuth
    - Add the scope entity
    - Add the token entity
    - Add the protected resource entity
  - Implement a DSL for protected resources

  ## Installation

  When available in [hex](https://hexdocs.pm/author) the package can be installed with:
  ```elixir
  def deps(), do: [
    {:author, "~> 0.0.0"}
  ]
  ```

  ## Usage

  <!-- TODO: Add "Usage" chapter -->

  ## License

  `Author` is licensed under the MIT license.
  """
end
