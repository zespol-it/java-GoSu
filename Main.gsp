uses java.lang.System

class Task {
  var name : String
  var done : Boolean = false

  construct(taskName : String) {
    this.name = taskName
  }

  function markDone() {
    this.done = true
  }

  override function toString() : String {
    return "${name} - ${done ? 'Zrobione' : 'Do zrobienia'}"
  }
}

class ToDoList {
  var tasks : List<Task> = {}

  function addTask(name : String) {
    tasks.add(new Task(name))
  }

  function completeTask(index : int) {
    if (index >= 0 && index < tasks.size()) {
      tasks[index].markDone()
    }
  }

  function showTasks() {
    for (i in 0..tasks.size()-1) {
      print("${i+1}. ${tasks[i]}")
    }
  }

  function saveToFile(filePath : String) {
    var writer = new java.io.PrintWriter(filePath)
    try {
      for (task in tasks) {
        writer.println("${task.name}|${task.done}")
      }
    } finally {
      writer.close()
    }
  }

  function loadFromFile(filePath : String) {
    tasks.clear()
    var file = new java.io.File(filePath)
    if (!file.exists()) {
      return
    }
    var reader = new java.io.BufferedReader(new java.io.FileReader(file))
    try {
      while (true) {
        var line = reader.readLine()
        if (line == null) {
          break
        }
        var parts = line.split("\\|")
        if (parts.length == 2) {
          var t = new Task(parts[0])
          t.done = parts[1].toBoolean()
          tasks.add(t)
        }
      }
    } finally {
      reader.close()
    }
  }
}

var todo = new ToDoList()
var filename = "tasks.txt"

// Wczytaj zadania z pliku
todo.loadFromFile(filename)

// Jeśli lista jest pusta, dodaj przykładowe zadania
if (todo.tasks.size() == 0) {
  todo.addTask("Nauka GoSu")
  todo.addTask("Zrobić zakupy")
  todo.addTask("Napisać raport")
}

var scanner = new java.util.Scanner(System.in)
while (true) {
  print("\n--- MENU ---")
  print("1. Wyświetl zadania")
  print("2. Dodaj zadanie")
  print("3. Oznacz zadanie jako zrobione")
  print("4. Usuń zadanie")
  print("5. Zakończ")
  print("Wybierz opcję: ")
  var choice = scanner.nextLine()

  if (choice == "1") {
    print("\nLista zadań:")
    todo.showTasks()
  } else if (choice == "2") {
    print("Podaj treść zadania:")
    var taskName = scanner.nextLine()
    todo.addTask(taskName)
    todo.saveToFile(filename)
    print("Dodano zadanie.")
  } else if (choice == "3") {
    print("Podaj numer zadania do oznaczenia jako zrobione:")
    var numStr = scanner.nextLine()
    var num = java.lang.Integer.parseInt(numStr) - 1
    todo.completeTask(num)
    todo.saveToFile(filename)
    print("Zadanie oznaczone jako zrobione.")
  } else if (choice == "4") {
    print("Podaj numer zadania do usunięcia:")
    var numStr = scanner.nextLine()
    var num = java.lang.Integer.parseInt(numStr) - 1
    if (num >= 0 && num < todo.tasks.size()) {
      todo.tasks.remove(num)
      todo.saveToFile(filename)
      print("Zadanie usunięte.")
    } else {
      print("Nieprawidłowy numer zadania.")
    }
  } else if (choice == "5") {
    print("Zakończono program.")
    break
  } else {
    print("Nieprawidłowa opcja.")
  }
} 