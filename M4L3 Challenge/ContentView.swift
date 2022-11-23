//
//  ContentView.swift
//  M4L3 Challenge
//
//  Created by dpm on 11/23/22.
//

import SwiftUI

struct ContentView: View {
    @State var tabIndex = 1
    
    var body: some View {
        TabView(selection: $tabIndex) {
            
            Text("This Tab’s tag is \(tabIndex)")
                .tag(1)
                .tabItem {
                    VStack{
                        Image(systemName:"tortoise.fill")
                        Text("Tab 1")
                    }
                }
            
            Button("This is Tab 2.\nTake me to Tab 3", action: {
                tabIndex = 3
            })
                .tag(2)
                .tabItem {
                    VStack{
                        Image(systemName: "arrow.right")
                        Text("Tab 2")
                    }
                }
               
            Text("This is Tab \(tabIndex)")
                .tag(3)
                .tabItem{
                    VStack{
                        Image(systemName: "hands.clap.fill")
                        Text("Tab 3")
                    }
                }
        }
    }
}

            
            
    struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
