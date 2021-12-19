 pragma solidity ^0.8.0;

contract TheLonliesContract{ //;'(
}
contract Name{
    string public message; 
    constructor (string memory message1){
        message1 = message;

    }  
}

contract Bank{
    mapping(address=>uint) account_balances;
    function transfer(uint amount, address acctToTransfareTo) external{
        account_balances[msg.sender] -= amount;
        account_balances[acctToTransfareTo] += amount;
    }

    function BankBalance() external view returns(uint){
        return address(this).balance; 
    }

    function withdraw(uint amount) external{
        account_balances[msg.sender]-= amount;
        payable(msg.sender).transfer(amount);
    }

    receive() external payable {
        account_balances[msg.sender]+= msg.value;
    } 
}
