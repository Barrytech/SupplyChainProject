<<<<<<< HEAD
pragma solidity ^0.8.3;
=======
pragma solidity ^0.5.16;
>>>>>>> changesmade

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'ConsumerRole' to manage this role - add, remove, check
contract ConsumerRole {
  using Roles for Roles.Role;
  // Define 2 events, one for Adding, and other for Removing
<<<<<<< HEAD
  event Adding(address indexed account);
  event Removing(address indexed account);
  // Define a struct 'consumers' by inheriting from 'Roles' library, struct Role
  struct Roles.Role public consumers;
  // In the constructor make the address that deploys this contract the 1st consumer
  constructor() public {
    _addconsumer(msg.sender);
=======
  event AddingConsumer(address indexed account);
  event RemovingConsumer(address indexed account);
  // Define a struct 'consumers' by inheriting from 'Roles' library, struct Role
  Roles.Role private consumers;
  // In the constructor make the address that deploys this contract the 1st consumer
  constructor() public {
    _addConsumer(msg.sender);
>>>>>>> changesmade
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyConsumer() {
    require(isConsumer(msg.sender));
    _;
  }

  // Define a function 'isConsumer' to check this role
  function isConsumer(address account) public view returns (bool) {
    return consumers.has(account);
  }

  // Define a function 'addConsumer' that adds this role
  function addConsumer(address account) public onlyConsumer {
    _addConsumer(account);
  }

  // Define a function 'renounceConsumer' to renounce this role
  function renounceConsumer() public {
    _removeConsumer(msg.sender);
  }

  // Define an internal function '_addConsumer' to add this role, called by 'addConsumer'
  function _addConsumer(address account) internal {
    consumers.add(account);
<<<<<<< HEAD
    emit Adding(account);
=======
    emit AddingConsumer(account);
>>>>>>> changesmade
  }

  // Define an internal function '_removeConsumer' to remove this role, called by 'removeConsumer'
  function _removeConsumer(address account) internal {
    consumers.remove(account);
<<<<<<< HEAD
    emit Removing(account);
=======
    emit RemovingConsumer(account);
>>>>>>> changesmade
  }
}