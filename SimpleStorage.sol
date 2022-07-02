// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract SimpleStorage {
    uint256 public favoriteNumber;

    
    Group[] public people;
    mapping(uint256 => string) public nameToFavoriteNumber;

   

    struct Group {
        uint256 favoriteNumber;
        string name;
    }

    

    function store (uint256 _favoriteNumber) public virtual {
        favoriteNumber = _favoriteNumber;
    }

    function retrieve() view public returns(uint256) {
        return favoriteNumber;
    } 

    function addPerson(uint256 _favoriteNumber, string memory _name) public{
        people.push(Group(_favoriteNumber, _name));
        nameToFavoriteNumber[_favoriteNumber] = _name;
    }
}

