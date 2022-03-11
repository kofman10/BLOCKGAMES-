pragma solidity ^0.8.4;

contract MyContract {
 mapping(uint => string) public names;
mapping(uint => Books) public books;
mapping(address => mapping(uint => Books)) public myBooks;
struct Books {
   string title;
   string author;
}

constructor() public {
    names[1] = "kofo";
    names[2] = "bobo";
    names[3] = "bimbo";
}

function addBooks(uint _id, string memory _title, string memory _author) public {
   books[_id] = Books(_title, _author);
}

function addMyBooks(uint _id, string memory _title, string memory _author) public {
    myBooks[msg.sender][_id] = Books(_title, _author);
}

}