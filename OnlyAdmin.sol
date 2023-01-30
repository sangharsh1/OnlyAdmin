// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract OnlyAdmin {
    address admin;
    bool myBool;
    uint myUint;
    address myAddress;
    string myString;

    constructor() {
        admin = msg.sender;
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only Admin can access and call the functions of this contract.");
        _;
    }

    
    function getMyBool() public view onlyAdmin returns (bool) {
        return myBool;
    }

    function setMyBool(bool _myBool) public onlyAdmin {
        myBool =  _myBool;        
    }

    function getMyUint() public view onlyAdmin returns (uint) {
        return myUint;
    }

    function setMyUint(uint _myUint) public onlyAdmin {
        myUint =  _myUint;        
    }

    function getMyAddress() public view onlyAdmin returns (address) {
        return myAddress;
    }

    function setMyAddress(address _myAddress) public onlyAdmin {
        myAddress =  _myAddress;        
    }

      function getMyString() public view onlyAdmin returns (string memory) {
        return myString;
    }

    function setMyString(string memory _myString) public onlyAdmin {
        myString =  _myString;                
    }
}