//
//  NavBar.swift
//  JB-Detection
//
//  Created by Max  on 12/06/2022.
//

import SwiftUI

struct NavBar: View {
    var body: some View {
        //just the navbar view nothing importante here
        TabView {
            ContentView() //Home view
                .tabItem {
            Image(systemName: "house")
                        .resizable()
                        .frame(width: 100, height: 50)
                    Text("Home")
                }
            Setting()//vue of the setting
                .tabItem {
            Image(systemName: "gear")
                    Text("Setting")
            }
        }
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
