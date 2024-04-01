// SPDX-License-Identifier: MIT
pragma solidity ^0.8.8;

contract SimpleStorage {
    uint256 public favoriteNumber;
    mapping (string => uint256) public nameToFavoriteNumber;
    struct Person {
        uint256 favoriteNumber;
        string name;
    }
    Person[] public people;

    function addPerson(uint256 _favoriteNumber, string memory _name) public {
       Person memory newPerson = Person(_favoriteNumber, _name);
       people.push(newPerson);
       nameToFavoriteNumber[_name] = _favoriteNumber;
    }

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
}