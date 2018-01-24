//
//  SessionExercise.swift
//  5x5
//
//  Created by Jacob Håkansson on 2017-11-21.
//  Copyright © 2017 Jacob Håkansson. All rights reserved.
//

import Foundation
struct session {
    var date: Date
    var exercises: Array<sessionExercise>
}

struct sessionExercise: Equatable {
    var exercise: String
    var weight: Int
    var sets: Array<set>
    static func ==(lhs: sessionExercise, rhs: sessionExercise) -> Bool {
        return lhs.exercise == rhs.exercise && lhs.weight == rhs.weight
            && lhs.sets == rhs.sets
    }
}

struct set: Equatable {
    var order: Int
    var reps: Int
    static func ==(lhs: set, rhs: set) -> Bool {
        return lhs.order == rhs.order && lhs.reps == rhs.reps
    }
}

let sess = session(date: Date(), exercises: Array<sessionExercise>())

//var exercises = addSet
let targetSets = 5
let targetReps = 5


func addSetTo(exercises: Array<sessionExercise>, reps: Int) {
    
}


