import SwiftUI

struct ContentView: View {

    

    @State private var todos = [Todo(title: "Feed the cat", isCompleted: true),

                            Todo(title: "Play with cat",subtitle: "Use his favourite toy"),

                            Todo(title: "Get allergies"),

                            Todo(title: "Run away from cat", isCompleted: true),

                            Todo(title: "Get a new cat")]

    

    @State private var showAddSheet = false

    

    var body: some View {

        NavigationStack {

            List($todos, id: \.id, editActions: [.all]) { $todo in

                TodoRowView(todo:$todo)

            }

            .navigationTitle("Todos")

            .toolbar {

                ToolbarItem(placement: .navigationBarLeading){

                    EditButton()

                }

                ToolbarItem(placement: .navigationBarTrailing) {

                    Button {

                        showAddSheet = true

                    } label: {

                        Image(systemName: "plus")

                    }

                }

            }

            .sheet(isPresented: $showAddSheet) {

                NewTodoView(sourceArray: $todos)

            }

        }

    }

}

 

struct ContentView_Previews: PreviewProvider {

    static var previews: some View {

        ContentView()

    }

}

