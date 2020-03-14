defmodule ParityOutliner do
    @moduledoc """
    You are given an array (which will have a length of at least 3, 
    but could be very large) containing integers. The array is either 
    entirely comprised of odd integers or entirely comprised of even 
    integers except for a single integer N. Write a method that takes 
    the array as an argument and returns this "outlier" N.
    """
    
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