// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;


contract A {
    string public name = "Contract A";
    function getName() virtual public view returns (string memory) {
        return name;
    }
    function reinitializerA(string calldata a) public {
        name = a;
    }
}

contract B is A{
    // string public name = "Contract B";
    // constructor() public {
    //     name = "Contract C";
    // }
    function Reinitializer() public {
        name = "ReInitialized";
    }
    function getName() override public view returns (string memory) {
        return name;
    }
}