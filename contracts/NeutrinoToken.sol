pragma solidity^0.4.24;
import "openzeppelin-solidity/contracts/token/ERC20/StandardToken.sol";

contract NeutrinoToken is StandardToken {
  string public name = "NeutrinoToken";
  string public symbol = "NTT";
  uint public decimals = 18;

  address public owner;
  mapping (address => string) public thanksMessage;
  uint public maxSupply;

  constructor (uint initialSupply, uint _maxSupply) public {
    owner = msg.sender;
    totalSupply_ = initialSupply;
    maxSupply = _maxSupply;
    balances[msg.sender] = initialSupply;
  }

  function addTotalSupply(uint256 value) public {
    require(owner == msg.sender);
    require(maxSupply >= (totalSupply_ + value));

    totalSupply_ += value;
    balances[msg.sender] += value;
  }

  function thanks(address _to, string _message) public{
    transfer(_to , 100e18);
    thanksMessage[_to] = _message;
  }

  function thanksMessage(address _address) public constant returns (string) {
    return thanksMessage[_address];
  }


}
