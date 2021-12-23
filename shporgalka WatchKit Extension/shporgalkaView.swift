//
//  shporgalkaView.swift
//  shporgalka WatchKit Extension
//
//  Created by Kovs on 24.12.2021.
//

import SwiftUI

struct shporgalkaView: View {
    
    @EnvironmentObject var userData: UserData
    var shpora: Shpora
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct shporgalkaView_Previews: PreviewProvider {
    static var previews: some View {
        let userData = UserData()
        return shporgalkaView(shpora: userData.shporgalki[0])
            .environmentObject(UserData())
    }
}
