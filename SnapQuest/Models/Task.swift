//
//  Task.swift
//  SnapQuest
//
//  Created by Jesse Hough on 10/3/23.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Pick a place where you lived out some of your best memories.",
                 description: "See if you can pick somewhere other than your home."),
            Task(title: "Pick a place far far away.",
                 description: "What is the furthest place you have traveled?"),
            Task(title: "Pick a place where you have a lot of fun.",
                 description: "Somewhere you like to go to get loose, have fun, relax, or become one with the Earth brochacho."),
            Task(title: "Pick somewhere that is beautiful.",
                 description: "Somewhere that makes you say 'Whoa the universe really painted a picture today!'")        ]
    }
}
