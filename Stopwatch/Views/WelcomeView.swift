//
//  WelcomeView.swift
//  Stopwatch
//
//  Created by Satish Chhatpar on 23/09/21.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationView {
            NavigationLink(
                destination: StartStopWatchView(),
                label: {
                    BottomTextView(str: "Okay let's go!")
                })
        }
        .foregroundColor(.black)
    }
}


struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}
