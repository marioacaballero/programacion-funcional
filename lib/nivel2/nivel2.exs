defmodule Nivel2 do
  # Defina una función que calcule la enésima potencia de un número.
  def potn(x, n) do
    cond do
      n == 0 -> 1
      true -> x * potn(x, n - 1)
    end
  end

  # Escriba una función llamada “Cantidad” que devuelva la cantidad de elementos de una lista.
  def cantidad([]) do
    0
  end

  def cantidad([_ | xs]) do
    1 + cantidad(xs)
  end

  # Escriba una función llamada “Sumatoria” que devuelva la suma de elementos de una lista.
  def sumatoria([]) do
    0
  end

  def sumatoria([x | xs]) do
    x + sumatoria(xs)
  end

  # Realice una función que devuelva el i-ésimo elemento de una lista.
  def iesimo([], _), do: nil

  def iesimo([x | xs], i) do
    cond do
      i == 0 -> x
      true -> iesimo(xs, i - 1)
    end
  end

  # Elimine el i-ésimo elemento de una lista.
  def elimiesimo([]), do: []
  def elimiesimo([_ | xs], 0), do: xs

  def elimiesimo([x | xs], i) do
    [x | elimiesimo(xs, i - 1)]
  end

  # Escriba una función llamada “Existe” que indique si un objeto se encuentra dentro de una lista determinada.

  # Escriba una función que determine la Media de una lista de números.

  # Agregue un elemento a una lista en una posición dada.

  # Agregue un elemento a una lista ordenada, en el lugar que le corresponda.
end

IO.inspect(Nivel2.elimiesimo([10, 223, 55, 32, 51, 36, 17, 237, 431, 212, 2233], 5))
IO.inspect(Nivel2.iesimo([], 5))
