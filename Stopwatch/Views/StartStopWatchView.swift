//
//  StartStopWatchView.swift
//  Stopwatch
//
//  Created by Satish Chhatpar on 23/09/21.
//

import SwiftUI

struct StartStopWatchView: View {
    
//@State private var stopWatchIsOn: Bool = false
@StateObject var swModel = StopWatchViewModel()

//@State var currentTime: TimeInterval = 0.0
    //@State var hours: Int = 0
     // @State var minutes: Int = 0
      //@State var seconds: Int = 0
     //@State var timerIsPaused: Bool = true
      
     // @State var timer: Timer? = nil
    
    var body: some View {
        VStack {
            
            Label("\(swModel.getMinutes) : \(swModel.getSeconds)", systemImage: /*@START_MENU_TOKEN@*/"42.circle"/*@END_MENU_TOKEN@*/)
            if swModel.isWatchStarted {
            HStack {
              Button(action:{
                print("RESTART")
                  swModel.restartTimer()
              }){
                Image(systemName: "backward.end.alt")
                  .padding(.all)
              }
              .padding(.all)
              Button(action:{
                swModel.startTimer()
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
              swModel.stopTimer()
            }){
              Image(systemName: "stop.fill")
                .padding(.all)
            }
            .padding(.all)
          }
        }
        .font(.largeTitle)
      }
    
}
    
struct StartStopWatchView_Previews: PreviewProvider {
    static var previews: some View {
        StartStopWatchView()
    }
}
