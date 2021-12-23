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
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        List {
            ForEach(userData.shporgalki) { shpora in
                NavigationLink(destination: shporgalkaView(shpora: shpora)) {
                    Text(shpora.name)
                }
                // navlink
            }
            // foreach
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(UserData())
    }
}
