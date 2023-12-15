//
//  MessageCardView.swift
//  images_app
//
//  Created by aninoss on 13/12/2023.
//

import SwiftUI

struct MessageCardView: View {
    //MARK: PROPERTIES
    @State public var message: String = "Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!"
    @State public var sendTime: String = "just now"
    @State public var textColor: Color = Color.black
    @State public var profileImage: String = "imgProfile"
    @State public var profileImageSize: CGFloat = 40
    @State public var isReply: Bool = false
    
    var body: some View {
        HStack(alignment: .top){
            
            HStack(alignment: .top){
                Image(profileImage)
                    .resizable()
                    .frame(width: profileImageSize, height: profileImageSize)
                    .clipShape(Circle())
            }// HStack
            .opacity(isReply ? 0 : 1)
            
            HStack {
                VStack(alignment: .trailing) {
                    Text(message)
                        .font(Font.custom("Roboto-Regular", size: 15))
                    
                    Spacer()
                    
                    HStack {
                        Text(sendTime)
                            .font(Font.custom("Roboto-Regular", size: 13))
                            .opacity(0.5)
                    }
                }
                .padding(10)
                .overlay(
                    RoundedRectangle(cornerRadius: 10, style: .continuous)
                        .fill(Color.black.opacity(0.1))
                    
                )
                    
            }// HStack
            
            HStack(alignment: .top){
                Image(profileImage)
                    .resizable()
                    .frame(width: profileImageSize, height: profileImageSize)
                    .clipShape(Circle())
            }// HStack
            .opacity(isReply ? 1 : 0)
        }// VStack
    }
}

#Preview {
    MessageCardView()
}
