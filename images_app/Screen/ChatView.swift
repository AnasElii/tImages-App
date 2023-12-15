//
//  ChatView.swift
//  images_app
//
//  Created by aninoss on 15/12/2023.
//

import SwiftUI

struct ChatElement : Identifiable {
    let id: UUID = UUID() // Generate a unique ID for each element
    let senderName: String
    let senderImage: String
    let message: String
    let icon: String
    let sendTime: String
    let unread: Bool
}

struct ChatView: View {
    //MARK: PROPERTIES
    var chatList: [ChatElement] = [
        ChatElement(senderName: "James", senderImage: "profileImage_1", message: "Thank you! That was very helpful!!", icon: "speaker.wave.2.bubble", sendTime: "just now", unread: true),
      ChatElement(senderName: "Will Kenny", senderImage: "profileImage_5", message: "I know... I’m trying to get the funds.", icon: "video.bubble", sendTime: "just now", unread: true),
        ChatElement(senderName: "Beth Williams", senderImage: "profileImage_6", message: "I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm...", icon: "checkmark.bubble", sendTime: "just now", unread: false),
        ChatElement(senderName: "Beth Williams", senderImage: "userProfileImage", message: "I’m looking for tips around capturing the milky way. I have a 6D with a 24-100mm...", icon: "ellipsis.bubble", sendTime: "just now", unread: false),
        ChatElement(senderName: "Rev Shawn", senderImage: "profileImage_2", message: "Wanted to ask if you’re available for a portrait shoot next week.", icon: "phone.bubble", sendTime: "just now", unread: false),
        ChatElement(senderName: "Rev Shawn", senderImage: "profileImage_2", message: "Wanted to ask if you’re available for a portrait shoot next week.", icon: "phone.bubble", sendTime: "just now", unread: false),
        ChatElement(senderName: "Rev Shawn", senderImage: "profileImage_2", message: "Wanted to ask if you’re available for a portrait shoot next week.", icon: "phone.bubble", sendTime: "just now", unread: false),
        ChatElement(senderName: "Rev Shawn", senderImage: "profileImage_2", message: "Wanted to ask if you’re available for a portrait shoot next week.", icon: "phone.bubble", sendTime: "just now", unread: false),
        ChatElement(senderName: "Rev Shawn", senderImage: "profileImage_2", message: "Wanted to ask if you’re available for a portrait shoot next week.", icon: "phone.bubble", sendTime: "just now", unread: false)
    ]
    
    var body: some View {
        NavigationStack {
//            ScrollView(.vertical) {
//                UserMessageView(action: {})
//                Spacer()
//                Rectangle()
//                    .frame(height: 2)
//                    .opacity(0.3)
//                    .padding(10)
//            }// ScrollView
            
            List(chatList) { chatElement in
                NavigationLink(destination: ChatRoomView()){
                    UserMessageView(username: chatElement.senderName, messageText: chatElement.message, messageIcon: chatElement.icon,
                        profileImage: chatElement.senderImage,
                        sendTime: chatElement.sendTime,
                        unread: chatElement.unread,action: {}
                    )
                }
            }
            .listRowSeparator(.automatic)
            .listRowSpacing(20)
            
            
            .navigationTitle("Chat")
            .navigationBarTitleDisplayMode(.inline)
        }// NavigationStack
        .accentColor(.black)
    }
}

#Preview {
    ChatView()
}
