# Bitcoin-Mining-and-Distribution
# Bitcoin Protocol Implementation

COP5615 - Distributed Operating Systems Principles Project 4.1

The goal of this project is to implement Bitcoin Protocol in Elixir which is able to mine bitcoins, implement wallets, transact bitcoins. For mining, we have to make sure that the threshold is set low so that mining can be done faster (milliseconds to seconds).

## Authors

* **Ratna Prakirana ** - *UFID: 3663-9969*
* **Eesh Kant Joshi** - *UFID: 1010-1069*

## Size of the work unit 

In this program, we spawn 2*logproc worker processes/nodes for mining bitcoins, where 
```
"logproc" = Total number of logical processors available on a machine
```

## Execution

#### Application setup

    $ mix escript.build

This will install all needed packages and build the project4 application file.

#### Run the app

    $ escript project4
	
## Sample Output

The following output was generated for command ./project4
```
1 coin_mastergim3jbxjm  000037d27b9fa836932c3d3e2eb70e2dfd5d99bd97f0a8cbea47ec9fffaeb6f6
2 coin_mastervoat61gwb  000fe2a02e61b0f23a3159eb8f6dc0585932ca2c2a74b9d44d0ee4177649e565
3 coin_master54h8c20bo  0009c604fdbca3817493dcc25f36704902bbd1ac6abc0c7f53ce25762ff4058e
.
.
820 coin_masterquxc9rsq-        000641d981a981cff1e0bb2c456be9b8aba97a0d221c96029600fd8f68c26016
821 coin_mastertueaxqr3q        0007dc55e6496cef04be402a3296fdfe0b4fdf6973ae63382f72924e8be1c300

 ********** Bitcoin mining complete **********

Total bitcoins = 821
Total participants = 5
Number of transactions to be performed = 7

********** Wallet created **********

keys validated
Transaction no.1 Completed

keys validated
Transaction no.2 Completed

keys validated
Transaction no.3 Completed

keys validated
Transaction no.4 Completed

keys validated
Transaction no.5 Completed

keys validated
Transaction no.6 Completed

keys validated
Transaction no.7 Completed


********** All Transactions Completed ***********


********** NOTE:  For Transaction details - Go to transaction_invoice folder in the root directory **********
** (EXIT from #PID<0.90.0>) killed
```
## Test Cases

   We have checked two test cases in our program.
   
1. If the hashid generated for each coin is correctly computed or not. 
2. If the transaction performed between two participants is giving correct output or not.
   
## Working of the test cases

#### location of the files

	Files for the test cases are present in ./test
	The files are - 
	1.) test_helper.exs - which is the system generated test file.
	2.) bitcoin_test.exs - the test cases are included in these files . The functions given in the test cases are checked for various conditions and inputs .
	
	When the program runs correctly the system shows 0 failures.
	
#### Execution	

	1.) reach the root directory of the file.
	2.) run the test command.
	
		$ mix run
		
#### Output
			
	..

	Finished in 0.1 seconds
	2 tests, 0 failures

	Randomized with seed 811000
	
## Bonus part

We have implemented extra bitcoin features such as:

1. When a transaction is taking place, the public key of both the participants is validated if they are allowed to do transaction. If at least any one of the key is not found , then it is flagged as an invalid transaction.
   
2. We are generating two Excel files:
	participant_list.csv - contains the list of all participants with their public key information.
	transactions_invoice.csv - contains details of all the transactions of all the participants that are taking place. 
	
3.  Main feature -.txt files- file names are formed with the public and private key of the individual participants according to their wallet. 
 Wallet not only contains the balance of the participant but also  contains all the  information of all the transactions in which the participant is involved, including the transaction id , transfer amount to whom he has transferred and the status of the transaction.
 
	#NOTE - close all excel files before running the programs otherwise it will give an error.
		  - open all the .txt files in any editor other than notepad.( notepad++ preferred for better viewing ) 

3. User can generate bitcoins containing variable number of trailing zeros in the hashID which is given by the user at run time. For doing that replace the k with the number of zeros.

   escript project4 k

## Execution

#### Application setup

    $ mix escript.build

This will install all needed packages and build the project4 application file.

#### Run the app on server

    $ escript project4 5

## Built With

* [Elixir](https://elixir-lang.org/) - Elixir is a dynamic, functional language designed for building scalable and maintainable applications.
* [Atom](https://code.visualstudio.com/) - Code Editor

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `project4` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:project4, "~> 0.1.0"}
  ]
end
```
