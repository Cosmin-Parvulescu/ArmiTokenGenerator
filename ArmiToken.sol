pragma solidity ^0.4.12;

import './lib/StandardToken.sol';

contract ArmiToken is StandardToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ArmiToken() {
    name = "ArmiToken";
    symbol = "ART";
    decimals = 18;
  }
}