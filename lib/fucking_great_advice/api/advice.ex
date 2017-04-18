defmodule FuckingGreatAdvice.API.Advice do
  import FuckingGreatAdvice.API.Base
  import FuckingGreatAdvice.Parser

  @doc """
  Fetch a RANDOM `%FuckingGreatAdvice.Model.Advice` representing a advice.
  """
  def random do
    get("random") |> parse_advice
  end

  @doc """
  Fetch a CENSORED `%FuckingGreatAdvice.Model.Advice` representing a advice.
  """
  def censored do
    get("random", "censored") |> parse_advice
  end

  @doc """
  Fetch a RANDOM BY TAG `%FuckingGreatAdvice.Model.Advice` representing a advice.
  """
  def random_by_tag(tag) do
    get("random_by_tag", tag) |> parse_advice
  end

  @doc """
  Fetch a LATEST `%FuckingGreatAdvice.Model.Advice` representing a advice.
  """
  def latest do
    get("latest") |> parse_advices
  end

  @doc """
  Fetch a LATEST WITH LIMIT `%FuckingGreatAdvice.Model.Advice` representing a advice.
  """
  def latest(limit) do
    get("latest", limit) |> parse_advices
  end
end
