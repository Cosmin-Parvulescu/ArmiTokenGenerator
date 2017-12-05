pragma solidity ^0.4.11;

import "./ArmiToken.sol";

contract ArmiTokenGenerator {
    ArmiToken public token;

    address public owner;
    
    function ArmiTokenGenerator(
        ArmiToken _token,
        address _owner
    ) {
        token = ArmiToken(_token);
        owner = _owner;
    }

    function Feed(address _to, uint _amount) {
      require(msg.sender == owner);

      token.transfer(_to, _amount);
    }
}