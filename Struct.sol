// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0 <=0.8.25;

struct Students { // Struct Create In Contract & Global (Use Multi Contracts) 
    uint roll;
    string name;
}

contract Struct {
    
    Students public student;

    constructor(uint _roll, string memory _name) {
        student.roll = _roll;
        student.name = _name;
    }

    function changeStudent(uint _roll, string memory _name) public {
        Students memory newStudent = Students({
            roll: _roll,
            name: _name
        });
        student = newStudent;
    }

    struct Obj { // Struct Is Default Stored In Storage
        string name;
        uint phoneNumber;
        address userAddress;
    }

    Obj public Data = Obj({
        name: "Ahmed Shaikh",
        phoneNumber: 1234567890,
        userAddress: 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4
    });

    struct Books {
        string title;
        string author;
        bool completed;
    }

    Books[] public books; // Array In Object

    function add(string memory _title, string memory _author) public {
        books.push(Books(_title, _author, false));
    }

    function get(uint _index) public view returns(string memory title, string memory author, bool completed) {
        Books memory book = books[_index];
        return (book.title, book.author, book.completed);
    }

    function complete(uint _index) public {
        Books storage book = books[_index];
        book.completed = true;
    }

    function reject(uint _index) public {
        Books storage book = books[_index];
        book.completed = false;
    }

}