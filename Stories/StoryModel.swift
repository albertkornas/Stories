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
}

public class StoryModel: ObservableObject {
    let storyOne = Story(userName: "albertkornas", imageName: "1", duration: 10)
    let storyTwo = Story(userName: "albertkornas", imageName: "2", duration: 10)
    let storyThree = Story(userName: "albertkornas", imageName: "3", duration: 10)
    
    var storyCollection : [Story] = []
    init() {
        storyCollection = [storyOne, storyTwo, storyThree]
    }
}
