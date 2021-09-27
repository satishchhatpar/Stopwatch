//
//  TestTimerZView.swift
//  Stopwatch
//
//  Created by Satish Chhatpar on 27/09/21.
//

import SwiftUI

struct TestTimerZView: View {
    @State var minutes: Int
    @State var seconds: Int
    @State var timerIsPaused: Bool = true
    @State var timer: Timer? = nil
    
    var body: some View {
        VStack {
            
            ToggleTextButton(min: $minutes, sec: $seconds)
            if self.timerIsPaused {
            HStack {
              Button(action:{
                print("RESTART")
                  self.restartTimer()
              }){
                Image(systemName: "backward.end.alt")
                  .padding(.all)
              }
              .padding(.all)
              Button(action:{
                self.startTimer()
                print("START")
              }){
                Image(systemName: "play.fill")
                  .padding(.all)
              }
              .padding(.all)
            }
          } else {
            Button(action:{
              print("STOP")
              self.stopTimer()
            }){
              Image(systemName: "stop.fill")
                .padding(.all)
            }
            .padding(.all)
          }
        }
        .font(.largeTitle)
    }
    
    func startTimer(){
        self.timerIsPaused = false
        self.timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ tempTimer in
            if self.seconds == 59 {
                self.seconds = 0
                self.minutes = self.minutes + 1
            }
          else {
              self.seconds = self.seconds + 1
          }
            //print("Minutes :  \(self.getMinutes)")
            //print("Seconds : \(self.getSeconds)")
        }
        
    }

      
      func stopTimer(){
          self.timerIsPaused = true
          self.timer?.invalidate()
          self.timer = nil
      }


    func restartTimer(){
        self.minutes = 0
        self.seconds = 0
    }
}

struct TestTimerZView_Previews: PreviewProvider {
    static var previews: some View {
        TestTimerZView(minutes: 0, seconds: 0, timerIsPaused: true)
    }
}
