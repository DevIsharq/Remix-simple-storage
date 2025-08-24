// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.30;

import { SimpleStorage } from "./SimpleStorage.sol";

contract StorageFactory {
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContracts() public {
        SimpleStorage mySimpleStorage = new SimpleStorage();
        listOfSimpleStorageContracts.push(mySimpleStorage);
    }

    function fsStore(uint256 _indexNumber, uint256 _newNumber) public {
     listOfSimpleStorageContracts[_indexNumber].store(_newNumber);   
    }

    function fsGet(uint256 _newNumber) public view {
        listOfSimpleStorageContracts[_newNumber].retrieve();
    }
}
