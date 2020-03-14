defmodule ParityOutliner do
    def find_outlier(integers) do
        countOdds = Enum.filter(integers, fn n -> rem(n,2) == 1 end)
        countEven = Enum.filter(integers, fn n -> rem(n,2) == 0 end)

        if (Enum.count(countOdds) > Enum.count(countEven))do
            List.first countEven 
        else 
            List.first countOdds 
        end
    end
end