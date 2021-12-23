//
//  ContentView.swift
//  shporgalka WatchKit Extension
//
//  Created by Kovs on 24.12.2021.
//

import SwiftUI

final class UserData: ObservableObject {
    @Published var shporgalki = shporiData
}

struct ContentView: View {
    
    var shporgalki = [Shpora]()
    
    
    var body: some View {
        List {
//            ForEach(shpora) { sporgalka in
//                
//            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
