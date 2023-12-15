//
//  RegisterView.swift
//  images_app
//
//  Created by aninoss on 8/12/2023.
//

import SwiftUI

struct RegisterStepOneView: View {
    //MARK: FIELD
    @State private var email: String = ""
    @State private var password: String = ""

    //MARK: FUNCTIONS
    func signIn(){
        
    }

    var body: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            
            TextField(
                "Email",
                text: $email
            )
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            .border(Color.black.opacity(1), width: 2)
            .disableAutocorrection(true)
            .padding(10)
            
            TextField(
                "Password",
                text: $password
            )
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
            .border(Color.black, width: 2)
            .disableAutocorrection(true)
            .padding(10)
                
            // Login Button
            VStack(spacing: 5) {
                
                NavigationLink(destination: RegisterStepTwoView()) {
                    MyButton(
                        btnText: "Next",
                        btnTextColor: .white,
                        backgroundColor: .black,
                        btnBorderColor: .black,
                        action: {
                            print("Next Clicked!")
                        }
                    )
                }
                
                Text("By signing up, you agree to Photo’s Terms of Service and Privacy Policy.")
                
            }// VStack
            .padding(10)
            
            Spacer()
        }// VStack
        .frame(width: UIScreen.main.bounds.width, alignment: .leading)
        .navigationTitle("Register")
        .navigationBarTitleDisplayMode(.large)
        
    }
    
}

#Preview {
    RegisterStepOneView()
}
