defmodule FuckingGreatAdvice.Parser do

  def parse_advice(object) do
    struct(FuckingGreatAdvice.Model.Advice, object)
  end

  def parse_advices(data) do
    Enum.map(data, &parse_advice/1)
  end

end
