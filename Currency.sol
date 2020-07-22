pragma solidity ^0.4.24;

contract Currency {
    mapping(address ==> uint) balances;
    mapping(address => mapping(address => uint)) allowances;

    uint256 total = 1000;
    uint current_total = 0;
    function createCurrency(uint256 amt) public {
        require(current_total + amt <= total);
        balances[msg.sender] += amt;
        current_total += amt;
    }

    function totalSupply() public view returns (uint256 total) {
        return total;
    }

    function balanceOf(address tokenOwner) public view returns (unint) {
        return balances[tokenOwner];
    }

    function transfer(address receiver, uint numTokens) public returns (bool) {
        require (balances[msg.sender] > numTokens)
        balances[msg.sender] -= numTokens;
        balances[receiver] += numTokens;
        emit Transfer(msg.sender, receiver, numTokens);
        return true;
    }

    function approve(address delegate, uint numTokens) public returns (bool) {
        allowances[msg.sender][delegate] = numTokens;
        emit Approval(msg.sender,delegate,numTokens);
        return true;
    }

    function allowance(address owner, address delegate) {
        return allowances[owner][delegate];
    }

    function transferFrom(address owner, address buyer) {
        require(numTokens <= allowances[owner][buyer])
        require(numTokens <= balances[owner])
        allowances[owner][buyer] -= numTokens;
        balances[owner] -= numTokens;
        balances[buyer] += numTokens;
        emit Transfer(owner, buyer, numTokens);
    }

    //Events
    event Transfer(address indexed_from, address indexed_to, uint256 amount);
    event Approval(address indexed_owner, address indexed_approved, uint 256 amount);
}