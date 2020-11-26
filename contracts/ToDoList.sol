pragma solidity ^0.5.0;
contract ToDoList
{
    uint public taskCount=0;
    struct Task{
        uint id;
        string content;
        bool completed;
    }
    mapping(uint=>Task) public tasks;
    function CreateTask(string memory _content) public{
        taskCount++;
        tasks[taskCount]=Task(taskCount,_content,false);
    }
    constructor() public{
        CreateTask("Hi this is madan rajpurohit");
    }
}