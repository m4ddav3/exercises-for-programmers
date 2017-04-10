# Ex01SayHello

Prompt for the user's name, then greet them

## Usage

```
$ iex -S mix
> Ex01SayHello.prompt_and_greet
What is your name? <username>
Hello <username>, nice to meet you!
> 
```

## CLI compilation

```
$ iex escript.build
Compiling 1 file (.ex)                            
Generated ex_01_say_hello app                     
Generated escript ex_01_say_hello with MIX_ENV=dev
$ ./ex_01_say_hello
...
```


## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `ex_01_say_hello` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [{:ex_01_say_hello, "~> 0.1.0"}]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at [https://hexdocs.pm/ex_01_say_hello](https://hexdocs.pm/ex_01_say_hello).

