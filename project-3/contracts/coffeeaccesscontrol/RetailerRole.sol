//SPDX-License-Identifier: MIT
<<<<<<< HEAD
pragma solidity ^0.8.3;
=======
pragma solidity ^0.5.16;
>>>>>>> changesmade

// Import the library 'Roles'
import "./Roles.sol";

// Define a contract 'RetailerRole' to manage this role - add, remove, check
contract RetailerRole {
  using Roles for Roles.Role;
  // Define 2 events, one for Adding, and other for Removing
  event AddingRetailer(address indexed account);
  event RemovingRetailer(address indexed account);
  // Define a struct 'retailers' by inheriting from 'Roles' library, struct Role
<<<<<<< HEAD
  struct  Roles.Role public retailers;
=======
  Roles.Role private retailers;
>>>>>>> changesmade
  // In the constructor make the address that deploys this contract the 1st retailer
  constructor() public {
    _addRetailer(msg.sender);
  }

  // Define a modifier that checks to see if msg.sender has the appropriate role
  modifier onlyRetailer() {
    require(isRetailer(msg.sender));
    _;
  }

  // Define a function 'isRetailer' to check this role
  function isRetailer(address account) public view returns (bool) {
    return retailers.has(account);
  }

  // Define a function 'addRetailer' that adds this role
  function addRetailer(address account) public onlyRetailer {
    _addRetailer(account);
  }

  // Define a function 'renounceRetailer' to renounce this role
  function renounceRetailer() public {
    _removeRetailer(msg.sender);
  }

  // Define an internal function '_addRetailer' to add this role, called by 'addRetailer'
  function _addRetailer(address account) internal {
    retailers.add(account);
    emit AddingRetailer(account);
  }

  // Define an internal function '_removeRetailer' to remove this role, called by 'removeRetailer'
  function _removeRetailer(address account) internal {
    retailers.remove(account);
<<<<<<< HEAD
    emit RemovingRetail(account);
=======
    emit RemovingRetailer(account);
>>>>>>> changesmade
  }
}