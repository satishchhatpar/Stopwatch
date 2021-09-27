//
//  ToggleTextButton.swift
//  Stopwatch
//
//  Created by Satish Chhatpar on 27/09/21.
//

import SwiftUI

struct ToggleTextButton: View {
    @Binding var min: Int
    @Binding var sec: Int
    
    var body: some View {
        Text("\(self.min) : \(self.sec)")
    }
}

struct ToggleTextButton_Previews: PreviewProvider {
    @State static var myMin = 10
    @State static var mySec = 10
    
    static var previews: some View {
        ToggleTextButton(min: $myMin, sec: $mySec)
    }
}
