
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract SupplyChain {

    struct Product {
        uint id;
        string name;
        address owner;
    }

    uint public productCount;
    mapping(uint => Product) public products;

    event ProductCreated(uint id, string name, address owner);

    function createProduct(string memory _name) external {
        productCount++;
        products[productCount] = Product(productCount, _name, msg.sender);
        emit ProductCreated(productCount, _name, msg.sender);
    }
}
