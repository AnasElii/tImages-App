//
//  NewTodayCard.swift
//  images_app
//
//  Created by aninoss on 11/12/2023.
//

import SwiftUI

struct NewTodayCard: View {
    //MARK: PROPERTIES
    @State var cardImage: String = "whatNewImage_1"
    @State private var isPressed = false
    @State public var action: () -> Void
    
    var body: some View {
        NavigationStack {
            VStack(alignment: .leading){
                
                NavigationLink(destination: PostView(cardImage: cardImage)){
                    Image(cardImage)
                        .resizable()
                        .frame(height: 345)
                }
                
                
                NavigationLink(destination: ProfileView()){
                    UserProfileImageView(username: "Ridhwan Nordin", userTag: "@ridzjcob", profileImage: "userProfileImage", profileImageSize: 30, action: {})
                        .padding(.leading, 10)
                        .padding(.top, 5)
                }
                
            }// VStack
            .frame(maxWidth: UIScreen.main.bounds.width)
            .frame(height: 387 , alignment: .leading)
            .onTapGesture{
                isPressed.toggle()
                action()
                print("New Image Update Clicked")
            }
        }// NavigationStack
        
    }
}

#Preview {
    NewTodayCard(action: {})
}
