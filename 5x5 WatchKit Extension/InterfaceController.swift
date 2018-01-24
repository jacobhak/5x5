//
//  InterfaceController.swift
//  5x5 WatchKit Extension
//
//  Created by Jacob Håkansson on 2017-11-21.
//  Copyright © 2017 Jacob Håkansson. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    var repCount = 5

    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func onStopPressed() {
    }
    @IBOutlet var repsLabel: WKInterfaceLabel!
    @IBOutlet var timer: WKInterfaceTimer!
    @IBAction func onSwipeLeft(_ sender: Any) {
        if repCount > 0 {
            repCount -= 1
            updateRepCount()
        }
    }
    @IBAction func onSwipeRight(_ sender: Any) {
        if repCount < 5 {
            repCount += 1
            updateRepCount()
        }
    }
    func updateRepCount() {
        repsLabel.setText("\(repCount) reps")
    }
    
}
