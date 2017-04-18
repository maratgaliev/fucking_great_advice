defmodule FuckingGreatAdvice.Error do
  defexception message: "Sorry request error, please try again later."
end

defmodule FuckingGreatAdvice.NotFoundError do
  defexception message: "Sorry, advice not found."
end
