# FuckingGreatAdvice

**http://fucking-great-advice.ru API wrapper for Elixir**

## Installation

The package can be installed from hex:

  1. Add `fucking_great_advice` to your list of dependencies in `mix.exs`:
    ````
    def deps do
      [{:fucking_great_advice, "~> 0.0.1"}]
    end
    ````

  2. Ensure `fucking_great_advice` is started before your application:
    ````
    def application do
      [applications: [:fucking_great_advice]]
    end
    ````

  3. Run one of the API methods:
    ````
    iex(1)> FuckingGreatAdvice.random
      %FuckingGreatAdvice.Model.Advice{id: "15777", sound: "",
      text: "Ставь блять конкретные сроки!"}
    ````
