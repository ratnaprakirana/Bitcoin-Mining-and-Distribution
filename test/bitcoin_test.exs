defmodule BitcoinTest do
    use ExUnit.Case
    # doctest Bitcoin
    describe "mining" do
        test "should convert a string to a public key" do
            assert "1a6642e6079a1001329d7a44b079be5519e08c98a983ea49385b5ae850ac6aa9" == "Mining is working" |> Bitcoin.Project4.miner()
            assert "d26514887c38b2e197f23484d7d7a59c7a51cb0ecab8a712229b90f12d2110e7" == "Bitcoin Testing" |> Bitcoin.Project4.miner()
            assert "9ee7e44399b59cd2795f22f6bfe7d76248229cd1190b9f531e73512b56336ee8" == "Super Saiyan Blue Gogeta" |> Bitcoin.Project4.miner()
        end
    end
    describe "transaction test" do
        test "working of the transaction" do
            list = [[200,"sdd1dz","aar"],[30,"mm2mrt","w23"]]
            list = Bitcoin.Project4.transactionlist(list,50)
            person1 = Enum.at(list,0)
            person2 = Enum.at(list,1)
            assert 150 == Enum.at(person1,0) and 80 == Enum.at(person2,0)
            list = [[100,"sdfsmdz","ssr"],[70,"mmdfsrt","mui"]]
            list = Bitcoin.Project4.transactionlist(list,25)
            person1 = Enum.at(list,0)
            person2 = Enum.at(list,1)
            assert 75 == Enum.at(person1,0) and 95 == Enum.at(person2,0)
        end
    end
end
