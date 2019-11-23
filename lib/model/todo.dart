class Todo{
  final String title;
  final String description;
  Todo(this.title, this.description);
}

final todos = new List<Todo>.generate(
  20, 
  (i)=> new Todo(
    'Todo $i',
    'A description of what needs to be done for Todo $i',
  )
);