defmodule Nivel1 do
  # Defina una función que calcule el cuadrado de un número.
  def cuadrado(x) do
    x * x
  end

  # Defina una función que determine el valor absoluto de un número.
  def valorAbs(x) do
    cond do
      x > 0 -> x
      true -> x * -1
    end
  end

  # Defina una función que realice el siguiente cálculo, para el parámetro n: F(n) = n * (n - 1) / 2.
  def funcionn(x) do
    x * (x - 1) / 2
  end
end

IO.puts(Nivel1.funcionn(-10))
IO.puts(Nivel1.funcionn(100))
IO.puts(Nivel1.funcionn(10))
IO.puts(Nivel1.funcionn(-105))
