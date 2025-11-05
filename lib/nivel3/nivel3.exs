defmodule Nivel3 do
  # 31- Escriba una función llamada “intercalar” que intercale dos listas ordenadas manteniendo el orden definido por las mismas.
  def intercalar([], []), do: []

  def intercalar(xs, []), do: xs
  def intercalar([], ys), do: ys

  def intercalar([x | xs], [y | ys]) do
    cond do
      x >= y -> [y | intercalar([x | xs], ys)]
      true -> [x | intercalar(xs, [y | ys])]
    end
  end

  # 32- Escriba una función que tome una lista y elimine las repeticiones adyacentes de sus elementos

  def elimAdy([]), do: []
  def elimAdy([x]), do: [x]

  def elimAdy([x, p]) do
    cond do
      x == p -> [x]
      true -> [x, p]
    end
  end

  def elimAdy([x, p, s | xs]) do
    cond do
      x == p && x != s -> [x | elimAdy([s | xs])]
      x == p && x == s -> [x | elimAdy(xs)]
      true -> [x | elimAdy([p, s | xs])]
    end
  end

  # cantidad
  def cantidad([]), do: 0
  def cantidad([x | xs]), do: 1 + cantidad(xs)

  # potencia para numeros mayores de 0 y exp mayores que 0
  def potEn(x, n) do
    cond do
      x == 0 -> 0
      n == 0 -> 1
      true -> x * potEn(x, n - 1)
    end
  end

  def resPolinomio([], n), do: 0
  # def resPolinomio([x], n), do: x

  def resPolinomio([x | xs], n) do
    cond do
      n == 0 -> x
      cantidad(xs) == 0 -> x
      true -> resPolinomio(xs, n) + (potEn(x,cantidad(xs))*n)
  end
end

# IO.inspect(Nivel3.elimAdy([1, 1, 1, 2, 2, 2, 3, 1, 1, 4, 4, 5]))
