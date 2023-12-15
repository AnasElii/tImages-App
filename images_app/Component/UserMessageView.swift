//
//  UserMessageView.swift
//  images_app
//
//  Created by aninoss on 15/12/2023.
//

import SwiftUI

struct UserMessageView: View {
    //MARK: PROPERTIES
    @State public var username: String = "Pawel Czerwinski"
    @State public var messageText: String = "Thank you! That was very help... "
    @State public var messageIcon: String = "speaker.wave.2.bubble"
    @State public var textColor: Color = Color.black
    @State public var profileImage: String = "imgProfile"
    @State public var sendTime: String = "just now"
    @State public var unread: Bool = true
    @State public var action: () -> Void
    
    var body: some View {
        HStack{
            
            Button{
                action()
            } label: {
                Image(profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 65)
                    .clipShape(Circle())
            }
            
            VStack(alignment: .leading){
                
                Spacer()
                
                HStack {
                    Text(username)
                        .font(Font.custom("Comfortaa-Bold", size: 16))
                        .bold(true)
                    
                    Text(sendTime)
                        .foregroundStyle(Color.black.opacity(0.5))
                    
                    Circle()
                        .foregroundColor(.blue)
                        .frame(width: 10, height: 10)
                        .opacity(unread ? 1 : 0)
                        
                }
                
                Spacer()
                
                Label(
                    title: { 
                        Text(messageText)
                            .font(Font.custom("Comfortaa-Regular", size: 16))
                    },
                    icon: { 
                        Image(systemName: messageIcon)
                    }
                )
                
                Spacer()
                
            }// VStack
            .frame(height: 65)
            .foregroundColor(textColor)
            
        }// HStack
        .frame(height: 65)
    }
}

#Preview {
    UserMessageView(action: {})
}
