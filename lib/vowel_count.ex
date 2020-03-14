defmodule VowelCount do
    def get_count(str) do
        vowels = String.codepoints("aeiou")
        
        str
        |> String.codepoints
        |> Enum.filter(&(Enum.member?(vowels, &1)))
        |> Enum.count
    end
end