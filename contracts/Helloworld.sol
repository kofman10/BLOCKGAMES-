// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.11;

contract HelloWorld {

string public mood; 
string public vibe;
constructor (string memory _HelloWorld) public {

 mood = _HelloWorld;


}
function setHelloWorld(string memory _HelloFolk) public {

vibe = _HelloFolk;

}
function getMood()public view returns(string memory){
    return mood;
}

}