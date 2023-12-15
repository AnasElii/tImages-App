//
//  RegisterStepTwoView.swift
//  images_app
//
//  Created by aninoss on 9/12/2023.
//

import SwiftUI

struct RegisterStepTwoView: View {
    //MARK: FIELD
    @State private var username: String = ""

    //MARK: FUNCTIONS
    func signIn(){
        
    }
    


    var body: some View {
        
            VStack(alignment: .leading, spacing: 10) {
                
                TextField(
                    "Username",
                    text: $username
                )
                .frame(maxWidth: .infinity)
                .frame(height: 55)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .border(Color.black, width: 2)
                .disableAutocorrection(true)
                .padding(10)
                    
                // Login Button
                VStack(spacing: 5) {
                    MyButton(
                        btnText: "Register",
                        btnTextColor: .white,
                        backgroundColor: .black,
                        btnBorderColor: .black,
                        action: {
                            print("Register Clicked!")
                        }
                    )
                    
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
    RegisterStepTwoView()
}
