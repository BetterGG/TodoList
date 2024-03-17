//
//  UserData.swift
//  TodoList
//
//  Created by gongguan on 2024/3/17.
//  整个 SwiftUI 的数据来源

import SwiftUI
import Combine

private let defaultTasks: [Task] = [
    Task(title: "买菜", isDone: false),
    Task(title: "看书", isDone: false),
]

final class UserData: ObservableObject {
    let objectWillChange = PassthroughSubject<UserData, Never>()
    
    @UserDefaultValue(key: "tasks", defaultValue: defaultTasks)
    var tasks: [Task] {
        didSet {
            objectWillChange.send(self)
        }
    }
}
