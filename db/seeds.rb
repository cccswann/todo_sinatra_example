user_1 = User.create(username: "Ciara", email: "ciara@something.com", password: "password")
user_2 = User.create(username: "Matteo", email: "matteo@something.it", password: "password")

todo_1 = Todo.new(title: "Code code code!!!")
todo_1.user = user_1
todo_1.save
todo_2 = Todo.new(title: "Eat eat eat!!!")
todo_2.user = user_2
todo_2.save