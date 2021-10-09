# Author

Author provides an API for implementing authentication and authorization in server-side elixir applications.

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

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `author` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:author, "~> 0.0.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/author](https://hexdocs.pm/author).
