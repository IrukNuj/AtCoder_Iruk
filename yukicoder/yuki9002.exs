defmodule Main do
  def main do
    fizzbuzz = fn(a) ->
      cond do
        Integer.mod(a, 15) == 0 -> "FizzBuzz"
        Integer.mod(a, 3)  == 0 -> "Fizz"
        Integer.mod(a, 5)  == 0 -> "Buzz"
        :else                   -> a
      end
    end
    a = IO.gets("") |> String.trim() |> String.to_integer()
    for a <- 1..a do
      IO.puts fizzbuzz.(a)
    end
  end
end

Main.main