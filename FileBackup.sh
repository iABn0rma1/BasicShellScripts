#!/bin/bash
# Simple Todo List

todo_file="todo.txt"

echo "Enter your task:"
read task
echo $task >> $todo_file
echo "Task added to the todo list."
