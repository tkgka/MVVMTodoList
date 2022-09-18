//
//  TodoListModel.swift
//  MVVMTodoList
//
//  Created by 김수환 on 2022/09/18.
//

import Foundation

class TodoManager:ObservableObject {
    @Published var datas:[dataStruct] = []
    
    
    init(isTest:Bool = false) {
        if !isTest {
            // get data from some where
        }
    }
    
    func addData(value:String){
        datas.append(dataStruct(id: UUID(), value: value))
    }
    func moveData(indics:IndexSet, newoffset:Int){
        datas.move(fromOffsets: indics, toOffset: newoffset)
    }
    func deleteData(at indexSet:IndexSet){
        for index in indexSet{
            datas.remove(at: index)
        }
    }
    
    static func emptyState() -> TodoManager {
        let manager = TodoManager(isTest: true)
        manager.datas = []
        return manager
    }
    
    static func fullState() -> TodoManager {
        let manager = TodoManager(isTest: true)
        manager.datas = [dataStruct(id: UUID(), value: "123"),
                         dataStruct(id: UUID(), value: "456"),
                         dataStruct(id: UUID(), value: "789") ]
        return manager
    }
}
