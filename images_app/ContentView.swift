//
//  ContentView.swift
//  images_app
//
//  Created by aninoss on 8/12/2023.
//

import SwiftUI

struct ContentView: View {
    //MARK: PROPERTIES
    @AppStorage("onboarding") var isLoggedIn: Bool = false

    var body: some View {
        VStack {
            
            if(isLoggedIn){
                TabView{
                    HomeView()
                        .badge(2)
                        .tabItem {
                            Label("Home", systemImage: "house")
                        }
                    SearchView()
                        .tabItem {
                            Label("Search", systemImage: "magnifyingglass")
                        }
                    NewPostView()
                        .tabItem {
                            ZStack {
                                LinearGradient(
                                    colors: [
                                        .blue,
                                        .white
                                    ],
                                    startPoint: .top,
                                    endPoint: .bottom
                                )
                                .cornerRadius(40)
                                
                                Label("Add", systemImage: "plus")
                            }
                            
                        }
                    ChatView()
                        .badge("+2")
                        .tabItem {
                            Label("Comment", systemImage: "bubble.left.and.bubble.right")
                        }
                    ProfileView()
                        .badge("!")
                        .tabItem {
                            Label("User", systemImage: "person.crop.circle.fill")
                        }
                }// TabView
                
                
            }else{
                SplashView()
            }
            
        }
    }
}

#Preview {
    ContentView()
}
