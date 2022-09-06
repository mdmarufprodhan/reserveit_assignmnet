//
//  ContentView.swift
//  demoAssignmnet
//
//  Created by Md Maruf Prodhan on 5/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        TabView {
            homeScreen()
                .tabItem(){
                    Image("home")
                        .renderingMode(.template)
                        .foregroundColor(.gray)
                    Text("Home")
                }
            searchScreen()
                .tabItem(){
                    Image("search")
                        .renderingMode(.template)
                        .foregroundColor(.gray)
                    Text("Search")

                }
            
            savedScreen()
                .tabItem(){
                    Image("saved")
                        .renderingMode(.template)
                        .foregroundColor(.gray)
                    Text("saved")

                }
            timeScreen()
                .tabItem(){
                    Image("time")
                        .renderingMode(.template)
                        .foregroundColor(.gray)
                    Text("Time")

                }
            accountScreen()
                .tabItem(){
                Image("account")
                        .renderingMode(.template)
                        .foregroundColor(.gray)
                    Text("Account")

            }
            
        }
        //.accentColor(.black)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
