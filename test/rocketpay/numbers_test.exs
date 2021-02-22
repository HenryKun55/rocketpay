defmodule Rocketpay.NumbersTest do
  use ExUnit.Case

  alias Rocketpay.Numbers

  describe "sum_from_file/1" do
    test "when have a file with name, return numbers sum" do
      response = Numbers.sum_from_file("numbers")

      expected_response = {:ok, %{result: 37}}

      assert response == expected_response
    end

    test "when don't have a file with name, return numbers sum" do
      response = Numbers.sum_from_file("banana")

      expected_response = {:error, %{message: "Invalid File"}}

      assert response == expected_response
    end
  end
end
