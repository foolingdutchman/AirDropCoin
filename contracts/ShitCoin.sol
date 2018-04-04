pragma solidity ^0.4.2;

import 'zeppelin-solidity/contracts/token/ERC20/StandardToken.sol';

contract ShitCoin is StandardToken {

    string public name = 'ShitCoin';
    string public symbol = 'STC';
    uint8 public decimals = 18;
    uint public INITIAL_SUPPLY = 12000000;

    function ShitCoin() public {
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
    }

    /**
   * 
   * @param recipients addresses The addresses which you want to airdrop to
   * @param _value uint256 the amount of tokens to be airdropped
   */
  function airDrop( address[] recipients, uint256 _value) public returns (bool) {
    for (uint256 i = 0; i < recipients.length; i++) {
      transfer(recipients[i], _value);
    }

    return true;
  }

}