//
//  SplashView.swift
//  images_app
//
//  Created by aninoss on 8/12/2023.
//

import SwiftUI

struct SplashView: View {
    var body: some View {
        NavigationStack{
            VStack{
                ZStack {
                    Image("imgBackground")
                        .resizable()
                        .frame(width: UIScreen.main.bounds.width)
                        .overlay(alignment: .bottomLeading, content: {
                        
                            UserProfileImageView(action: {})
                                .padding(10)
                            
                        })
                        
                    HStack(alignment: .center) {
                        
                        Image("logo")
                            .resizable()
                            .frame(width: 38, height: 38)
                        
                        Text("Photos")
                            .font(Font.custom("Comfortaa-Bold", size: 50))
                        
                    }// HStack
                    
                }// ZStack
                
                HStack(spacing: 25){

                    Spacer()
                  
                    NavigationLink(destination: LoginView()) {
                        MyButton(
                            btnText: "Login",
                            btnTextColor: .black,
                            backgroundColor: .white,
                            btnBorderColor: .black,
                            action: {}
                        )
                    }

                    NavigationLink(destination: RegisterStepOneView()) {
                        MyButton(
                            btnText: "Register",
                            btnTextColor: .white,
                            backgroundColor: .black,
                            btnBorderColor: .black,
                            action: {}
                        )
                    }
                    
                    Spacer()
                    
                }// HStack
                .frame(width: UIScreen.main.bounds.width, height: 100, alignment: .center)

                Spacer()

                
            }// VStack
            .frame(width: UIScreen.main.bounds.width)
            .frame(height: UIScreen.main.bounds.height)
            .ignoresSafeArea(.all)
            
        }// NavigationStack
        .accentColor(Color.black)
        
    }
}

#Preview {
    SplashView()
}
