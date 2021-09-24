//
//  StoryModel.swift
//  Stories
//
//  Created by Albert Kornas on 8/10/21.
//

import Foundation

struct Story {
    let userName: String
    let imageName: String
    let duration: Int
    var progress: Double
}

public class StoryModel: ObservableObject {
    let storyOne = Story(userName: "albertkornas", imageName: "1", duration: 10, progress: 0.0)
    let storyTwo = Story(userName: "albertkornas", imageName: "2", duration: 10, progress: 0.0)
    let storyThree = Story(userName: "albertkornas", imageName: "3", duration: 10, progress: 0.0)
    
    @Published var storyCollection : [Story] = []
    init() {
        storyCollection = [storyOne, storyTwo, storyThree]
    }
}
