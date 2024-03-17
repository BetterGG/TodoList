//
//  UserData.swift
//  TodoList
//
//  Created by gongguan on 2024/3/17.
//  是一个任务的描述

import SwiftUI

struct Task: Equatable, Hashable, Codable, Identifiable {
    let id: UUID
    var title: String
    var isDone: Bool
    
    init(title: String, isDone: Bool) {
        self.id = UUID()
        self.title = title
        self.isDone = isDone
    }
}
