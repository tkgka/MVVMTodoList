//
//  ContentView.swift
//  MVVMTodoList
//
//  Created by 김수환 on 2022/09/18.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var todoManager:TodoManager
    var body: some View {
        NavigationView{
            ZStack{
                List{
                    ForEach(todoManager.datas,id:\.id){val in
                        Text(val.value)
                    }.onDelete(perform: {indexSet in
                        todoManager.deleteData(at: indexSet)
                    })
                    .onMove(perform: {indics,newoffset in
                        todoManager.moveData(indics: indics, newoffset: newoffset)
                    })
                }
                if todoManager.datas.count <= 0 {
                    Text("data Is Empty")
                }
            }
            .navigationTitle("MVVM_TodoList")
            .toolbar(content: {
                ToolbarItemGroup(placement: .navigationBarTrailing){
                    EditButton()
                    Button(action: {
                        todoManager.addData(value: "hello")
                    }, label: {
                        Image(systemName: "plus")
                    })
                    
                }
            })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(todoManager: TodoManager.emptyState()).previewDisplayName("Empty")
        
        ContentView(todoManager: TodoManager.fullState()).previewDisplayName("Full")
    }
}
