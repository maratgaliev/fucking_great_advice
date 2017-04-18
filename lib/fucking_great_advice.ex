defmodule FuckingGreatAdvice do
  defdelegate random, to: FuckingGreatAdvice.API.Advice, as: :random
  defdelegate censored, to: FuckingGreatAdvice.API.Advice, as: :censored
  defdelegate random_by_tag(tag), to: FuckingGreatAdvice.API.Advice, as: :random_by_tag
  defdelegate latest, to: FuckingGreatAdvice.API.Advice, as: :latest
  defdelegate latest(limit), to: FuckingGreatAdvice.API.Advice, as: :latest
end
