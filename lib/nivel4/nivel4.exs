defmodule Nivel4 do
  def cantidad_de([], _), do: 0

  def cantidad_de([x | xs], con) do
    cond do
      con.(x) -> 1 + cantidad_de(xs, con)
      true -> cantidad_de(xs, con)
    end
  end
end

IO.puts(Nivel4.cantidad_de([0, 1, 2, 3, 4, 5, 6, 7, 8, 9], fn x -> x > 4 end))
