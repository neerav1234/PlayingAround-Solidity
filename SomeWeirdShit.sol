// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

/* Inheritance tree
   A
 /  \
B   C
 \ /
  D
*/
import "hardhat/console.sol";

contract A {
    event Log(string message);

    function foo() public virtual {
        emit Log("A.foo called");
        console.log("A");
    }

    function bar() public virtual {
        emit Log("A.bar called");
        console.log("A");
    }
}

contract B is A {
    function foo() public virtual override {
        emit Log("B.foo called");
        console.log("B");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("B.bar called");
        console.log("B");
        super.bar();
    }
}

contract C is A {
    function foo() public virtual override {
        emit Log("C.foo called");
        console.log("C");
        A.foo();
    }

    function bar() public virtual override {
        emit Log("C.bar called");
        console.log("C");
        super.bar();
    }
}

contract D is B, C {

    function foo() public override(B, C) {
        console.log("D");
        super.foo();
    }

    function bar() public override(B, C) {
        console.log("D");
        super.bar();
    }
}