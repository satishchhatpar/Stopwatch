//
//  StopWatchViewModel.swift
//  Stopwatch
//
//  Created by Satish Chhatpar on 23/09/21.
//

import SwiftUI

class StopWatchViewModel: ObservableObject {
    @Published private var stopwatcher = StopWatch()
  
    
    var isWatchStarted: Bool {
        stopwatcher.isOn
    }
    
    var startTheWatch: Void {
        stopwatcher.isOn = true
    }
    
    var stopTheWatch: Void {
        stopwatcher.isOn = false
    }
    
    var getMinutes: Int{
        stopwatcher.minutes
    }
    
    var getSeconds: Int{
        stopwatcher.seconds
    }

    func startTimer(){
        stopwatcher.isOn = false
        stopwatcher.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ tempTimer in
            if self.stopwatcher.seconds == 59 {
                self.stopwatcher.seconds = 0
                self.stopwatcher.minutes = self.stopwatcher.minutes + 1
            }
          else {
              self.stopwatcher.seconds = self.stopwatcher.seconds + 1
          }
            //print("Minutes :  \(self.getMinutes)")
            //print("Seconds : \(self.getSeconds)")
        }
        
    }

      
      func stopTimer(){
          self.stopwatcher.isOn = true
          self.stopwatcher.timer?.invalidate()
          self.stopwatcher.timer = nil
      }


    func restartTimer(){
        self.stopwatcher.minutes = 0
        self.stopwatcher.seconds = 0
    }
}


