<<<<<<< HEAD
pragma solidity ^0.8.3;

=======
pragma solidity = 0.5.16;
>>>>>>> changesmade

/// Provides basic authorization control
contract Ownable {
    address private originalOwner;

    // Define an Event
    event TransferOwnership(address indexed oldOwner, address indexed newOwner);

    /// Assign the contract to an owner
    constructor () internal {
        originalOwner = msg.sender;
        emit TransferOwnership(address(0), originalOwner);
    }

    /// Look up the address of the owner
    function owner() public view returns (address) {
        return originalOwner;
    }

    /// Define a function modifier 'onlyOwner'
    modifier onlyOwner() {
        require(isOwner());
        _;
    }

    /// Check if the calling address is the owner of the contract
    function isOwner() public view returns (bool) {
        return msg.sender == originalOwner;
    }

    /// Define a function to renounce ownerhip
    function renounceOwnership() public onlyOwner {
        emit TransferOwnership(originalOwner, address(0));
        originalOwner = address(0);
    }

    /// Define a public function to transfer ownership
    function transferOwnership(address newOwner) public onlyOwner {
        _transferOwnership(newOwner);
    }

    /// Define an internal function to transfer ownership
    function _transferOwnership(address newOwner) internal {
        require(newOwner != address(0));
        emit TransferOwnership(originalOwner, newOwner);
        originalOwner = newOwner;
    }
}
