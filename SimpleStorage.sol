// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract SimpleStorage {
    uint256 public myFavoriteNumber;

    struct Person {
        uint256 phoneNumber;
        string fullName;
    }
    Person[] public listOfPeople;
    mapping(string fullName => uint256 phoneNumber) fullNameToPhoneNumber;

    function store(uint256 _myFavoriteNumber) public {
        myFavoriteNumber = _myFavoriteNumber;
    }

    function addPerson(string memory _fullName, uint256 _phoneNumber) public {
        listOfPeople.push(Person(_phoneNumber, _fullName));
        fullNameToPhoneNumber[_fullName] = _phoneNumber;
    }

    function retrieve() public view returns (uint256) {
        return myFavoriteNumber;
    }
}
