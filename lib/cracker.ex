defmodule Cracker do
  def break(target) do
    try do
      for a <- ?a..?z,
          b <- ?a..?z,
          c <- ?a..?z,
          d <- ?a..?z,
          e <- ?a..?z,
          f <- ?a..?z,
          g <- ?a..?z,
          h <- ?a..?z,
          val = List.to_string([a, b, c, d, e, f, g, h]) do

        if hash(val) == target do
          throw(val)
        end
      end
    catch
      val -> val
    end
  end

  def hash(val) do
    with {:ok, hsh} <- Apoc.hash(val) do
      hsh
    end
  end
end
