defmodule FuckingGreatAdvice.API.Base do

  @base_url "http://fucking-great-advice.ru/api"

  @doc """
  General HTTP `GET` request function.
  """
  def get(url_part, param \\ nil) do
    build_url(url_part, param) |> HTTPoison.get! |> handle_response
  end

  def build_url(url_part, param \\ nil) do
    "#{@base_url}/#{url_part}/#{param}"
  end

  defp handle_response(data) do
    case data.status_code do
      200 -> Poison.decode!(data.body, keys: :atoms)
      404 -> raise FuckingGreatAdvice.NotFoundError
      _ -> raise FuckingGreatAdvice.Error
    end
  end

end
