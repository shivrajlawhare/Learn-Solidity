// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Struct{
    struct Todo{
        string name;
        bool completed;
    }

    Todo[]  public todos;

    function create(string calldata _text) public {
        todos.push(Todo(_text,false));
        // todos.push(Todo({name: _text,completed: false}));

        // Todo memory todo;
        // todo.name = _text;
        // todo.completed = false;

        // todos.push(todo);

    }

    function get(uint _index) public view returns (string memory ,bool ){
        Todo storage todo = todos[_index];
        return (todo.name,todo.completed);
    }

    function updateText(uint _index,string calldata _text) public {
        Todo storage todo = todos[_index];
        todo.name=_text;
    }

    function completed(uint _index) public {
        Todo storage todo = todos[_index];
        todo.completed = !todo.completed;
    }
}