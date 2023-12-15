//
//  CommentCardView.swift
//  images_app
//
//  Created by aninoss on 15/12/2023.
//

import SwiftUI

struct CommentCardView: View {
    //MARK: PROPERTIES
    @State public var username: String = "Pawel Czerwinski"
    @State public var userTag: String = "@pawel_czerwinski"
    @State public var textColor: Color = Color.black
    @State public var profileImage: String = "imgProfile"
    @State public var profileImageSize: CGFloat = 40
    
    var body: some View {
        VStack(alignment: .leading){
            
            HStack(alignment: .top){
                Image(profileImage)
                    .resizable()
                    .frame(width: profileImageSize, height: profileImageSize)
                    .clipShape(Circle())
                
                VStack(alignment: .leading){
                    
                    Text(username)
                        .font(Font.custom("Comfortaa-Bold", size: 15))
                        .bold(true)
                    Text(userTag)
                        .font(Font.custom("Comfortaa-Light", size: 13))
                    
                }// VStack
                .foregroundColor(textColor)
                
            }// HStack
            
            HStack {
                Rectangle()
                    .frame(width: profileImageSize, height: 10)
                    .opacity(0)
                
                VStack(alignment: .trailing) {
                    
                    Image(systemName: "rectangle.and.pencil.and.ellipsis")
                        .padding(.bottom, 5)
                    
                    Text("Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!")
                        .font(Font.custom("Roboto-Regular", size: 15))
                    
                    HStack {
                        Text("Reply")
                        Image(systemName: "arrowshape.turn.up.left")
                    }
                }
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.black.opacity(0.1))
                    
                )
                    
            }
        }// VStack
    }
}

#Preview {
    CommentCardView()
}
