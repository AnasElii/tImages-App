//
//  ChatRoomView.swift
//  images_app
//
//  Created by aninoss on 15/12/2023.
//

import SwiftUI

struct ChatConvertation : Identifiable {
    let id: UUID = UUID()
    let profileImage: String
    let message: String
    let sendTime: String
    let isReply: Bool
}

struct ChatRoomView: View {
    //MARK: PROPERTIES
    @State public var senderName: String = "James"
    @State private var messageText: String = ""
    @State private var chatConversation: [ChatConvertation] = [
        ChatConvertation(profileImage: "imgProfile", message: "Really love your most recent photo. I’ve been trying to capture the same thing for a few months and would love some tips!", sendTime: "20:10", isReply: false),
        ChatConvertation(profileImage: "profileImage_1", message: "A fast 50mm like f1.8 would help with the bokeh. I’ve been using primes as they tend to get a bit sharper images.", sendTime: "20:10", isReply: true),
        ChatConvertation(profileImage: "imgProfile", message: "Thank you! That was very helpful!", sendTime: "20:10", isReply: false)
    ]
    
    
    //MARK: FUNCTIONS
    func addNewMessage(profileImage: String, message: String, sendTime: String, isReply: Bool) {
        chatConversation.append(ChatConvertation(profileImage: profileImage, message: message, sendTime: sendTime, isReply: isReply))

    }
    
    var body: some View {
        
        
        NavigationStack(){
            ScrollView(.vertical){
                VStack(alignment: .leading){
                    ForEach(chatConversation, id: \.id){ conversation in
//                        var conversation = chatConversation[index]
                        MessageCardView(message: conversation.message, sendTime: conversation.sendTime, profileImage: conversation.profileImage, isReply: conversation.isReply)
                    }
                    
                }// VStack
                .padding(10)
            }// ScrollView
                .navigationTitle(senderName)
                .navigationBarTitleDisplayMode(.inline)
            
            HStack {
                TextField("Enter your message...", text: $messageText)
                    .textFieldStyle(.roundedBorder)
                
                Button("Send") {
                    // Send the message using `messageText`
                    let now = Date()
                    let formatter = DateFormatter()
                    formatter.timeStyle = .medium
                    let currentTimeString = formatter.string(from: now)
                    
                    addNewMessage(profileImage: "imgProfile", message: messageText, sendTime: currentTimeString, isReply: false)
                    messageText = ""
                }
            }
            .padding(10)
            
        }// NavigationStack
    }
}

#Preview {
    ChatRoomView()
}
