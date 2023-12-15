//
//  PostView.swift
//  images_app
//
//  Created by aninoss on 13/12/2023.
//

import SwiftUI

struct PostView: View {
    @State public var cardImage: String = "whatNewImage_1" //"fullScreenPostImage_1"
    @State public var showSheet: Bool = false
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>

        
    var body: some View {
        NavigationStack {
            ZStack(alignment: Alignment(horizontal: .leading, vertical: .center)){
                
                    Rectangle()
                    .overlay(
                        Image(cardImage)
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            .blur(radius: 10)
                            .frame(maxHeight: .infinity)
                    )
                    .ignoresSafeArea(.all)
                
                    Image(cardImage)
                    .containerRelativeFrame(.horizontal, alignment: .center)
//                        .resizable()
//                        .frame(width: .infinity, height: .infinity, alignment: .leading)
//                        .ignoresSafeArea(.all)


                    LinearGradient(
                        gradient: Gradient(
                            colors: [
                                Color.black,
                                Color.black.opacity(0)
                            ]
                        ),
                        startPoint: .top,
                        endPoint: .bottom
                    )
                    .frame(height: 200)
                    .containerRelativeFrame(.vertical, alignment: .top)
                    .ignoresSafeArea(.all)

                UserProfileImageView(username: "Anas El", userTag: "@anas_el", textColor: .white, profileImageSize: 35, action: {})
                    .padding(10)
                    .containerRelativeFrame(.vertical, alignment: .topLeading)
                
                HStack(spacing: 10) {
                        Button{
                            // ACTION: Show a Sheet
                            print("The button was Pressed.")
                            showSheet.toggle()
                        }label: {
                            Image(systemName: "bubble.left.and.text.bubble.right")                    .foregroundColor(.white)
                        }
                        .sheet(isPresented: $showSheet){
                            CommentView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])

                        }
                    
                    Button{
                        // ACTION: Show a Sheet
                        print("The button was Pressed.")
                        presentationMode.wrappedValue.dismiss()
                    }label: {
                        Image(systemName: "xmark")
                            .foregroundColor(.white)
                    }
                }
                .padding(10)
                .containerRelativeFrame(.vertical, alignment: .topTrailing)
                .containerRelativeFrame(.horizontal, alignment: .topTrailing)
            }
        }// ZStack
        .navigationBarBackButtonHidden(true)
        .tabViewStyle(.automatic)

        
    }// NavigationStack
}

#Preview {
    PostView()
}
