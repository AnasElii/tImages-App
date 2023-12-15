//
//  UserProfileImageView.swift
//  images_app
//
//  Created by aninoss on 11/12/2023.
//

import SwiftUI

struct UserProfileImageView: View {
    //MARK: PROPERTIES
    @State public var username: String = "Pawel Czerwinski"
    @State public var userTag: String = "@pawel_czerwinski"
    @State public var textColor: Color = Color.black
    @State public var profileImage: String = "imgProfile"
    @State public var profileImageSize: CGFloat = 50
    @State public var action: () -> Void
    
    var body: some View {
        HStack{
            
            Button{
                action()
            } label: {
                Image(profileImage)
                    .resizable()
                    .frame(width: profileImageSize, height: profileImageSize)
                    .clipShape(Circle())
            }
            
            
            VStack(alignment: .leading){
                
                Text(username)
                    .font(Font.custom("Comfortaa-Bold", size: 15))
                    .bold(true)
                Text(userTag)
                    .font(Font.custom("Comfortaa-Light", size: 13))
                
            }// VStack
            .foregroundColor(textColor)
            
        }// HStack
    }
}

#Preview {
    UserProfileImageView(username: "Pawel Czerwinski", userTag: "@pawel_czewinski", textColor: .black, profileImage: "imgProfile", profileImageSize: 50, action: {})
}
