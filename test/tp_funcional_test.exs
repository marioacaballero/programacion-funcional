defmodule TpFuncionalTest do
  use ExUnit.Case
  doctest TpFuncional

  test "greets the world" do
    assert TpFuncional.hello() == :world
  end
end
