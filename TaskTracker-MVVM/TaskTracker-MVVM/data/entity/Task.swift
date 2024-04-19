//
//  Task.swift
//  TaskTracker-MVVM
//
//  Created by Alper Canımoğlu on 19.04.2024.
//

import Foundation

class Task {
    var taskTitle: String?
    var taskDescription: String?
    var taskDeadline: Date?
    
    init(taskTitle: String, taskDescription: String, taskDeadline: Date) {
        self.taskTitle = taskTitle
        self.taskDescription = taskDescription
        self.taskDeadline = taskDeadline
    }
}
