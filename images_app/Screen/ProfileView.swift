//
//  UserView.swift
//  images_app
//
//  Created by aninoss on 12/12/2023.
//

import SwiftUI

struct ProfileView: View {
    //MARK: PROPERTIES
    let ProfileImages = ["profileImage_1", "profileImage_2", "profileImage_3", "profileImage_4", "profileImage_5", "profileImage_6"]

    var body: some View {
        NavigationStack{
            ScrollView(.vertical) {
                VStack(spacing: 32){
                    Spacer()
                    
                    Circle()
                        .frame(width: 130, height: 130)
                        .overlay(
                            Image("imgProfile")
                                .resizable()
                                .frame(width: 130, height: 130)
                        )
                        .clipShape(Circle())
                    
                    VStack(spacing: 16){
                        Text("Jone")
                            .font(Font.custom("Comfortaa-Regular", size:35))
                        
                        Text("San francisco, ca")
                            .font(Font.custom("Roboto-Black", size: 15))
                            .textCase(.uppercase)
                    }
                    
                    VStack(spacing: 16){
                        MyButton(btnText: "follow jane", btnTextColor: .white, backgroundColor: .black, btnBorderColor: .black, action: {})
                        
                        MyButton(btnText: "message", btnTextColor: .black, backgroundColor: .white, btnBorderColor: .black, action: {})
                    }
                    
                    HStack(alignment: .top, spacing: 10){
                        
                        VStack(alignment: .leading, spacing: 10){
                            ForEach(ProfileImages.indices){ index in
                                let image = ProfileImages[index]
                                if(index % 2 == 0 ){
                                    ImageCardView(cardImage: image)
                                }
                            }
                        }
                        
                        VStack(alignment: .leading, spacing: 10){
                            ForEach(ProfileImages.indices){ index in
                                let image = ProfileImages[index]
                                if(index % 2 != 0 ){
                                    ImageCardView(cardImage: image)
                                }
                            }
                        }
                        
                    }
                    
                    MyButton(
                        btnText: "See More",
                        btnTextColor: .black,
                        backgroundColor: .white,
                        btnBorderColor: .black,
                        action: {}
                    )
                    
                }// VStack
                .padding(10)
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                
            }// ScrollView
            
        }// NavigationStack
    }
}

#Preview {
    ProfileView()
}
