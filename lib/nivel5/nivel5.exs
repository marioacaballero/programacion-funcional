defmodule Nivel5 do
  def cantidad([]), do: 0
  def cantidad([_ | xs]), do: 1 + cantidad(xs)

  def suma([]), do: 0
  def suma([x | xs]), do: x + suma(xs)

  def promedio([]), do: 0

  def promedio(list) do
    suma(list) / cantidad(list)
  end

  def valorabs(x) do
    cond do
      x < 0 -> -x
      true -> x
    end
  end

  def mas_cercano([], _), do: nil

  def mas_cercano([x | xs], n) do
    cond do
      valorabs(x - n) < mas_cercano(xs, n) -> x
      true -> mas_cercano(xs, n)
    end
  end

  # 44. Escriba una función que dada una lista de números y un número N, devuelva la lista resultante de eliminar los N números más cercanos al promedio de la lista de entrada.
  # Ej: si la lista es (1 6 34 2 3 55 4 1 12) y N = 5, el promedio es 13.1,
  # por lo cual se deberán eliminar los números 12, 6, 4, 3 y 2, y el resultado será (1 34 55 1).
  def elim_cerca_prom([], _), do: []

  def elim_cerca_prom([x | xs], n) do
    promedio([x | xs])
  end
end

IO.puts(Nivel5.mas_cercano([1, 6, 34, 2, 3, 55, 4, 1, 12], 13))
