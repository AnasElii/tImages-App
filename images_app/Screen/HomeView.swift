//
//  HomeView.swift
//  images_app
//
//  Created by aninoss on 9/12/2023.
//

import SwiftUI

struct HomeView: View {
    let WhatNewTodayImages = ["whatNewImage_1", "whatNewImage_2", "whatNewImage_3", "whatNewImage_4"]
    let PostImages = ["postImages_1", "postImages_2", "postImages_3", "postImages_4", "postImages_5", "postImages_6", "postImages_7", "postImages_8", "postImages_9", "postImages_10"]
    
    var body: some View {
        NavigationStack {
            ScrollView(.vertical){
                VStack(alignment: .leading, spacing: 25){
                    Text("What’s new today")
                        .font(Font.custom("Roboto-Black", size: 15))
                        .textCase(.uppercase)
                    
                    ScrollView(.horizontal) {
                        HStack{
                            ForEach(WhatNewTodayImages.indices){ index in
                                let image: String = WhatNewTodayImages[index]
                                NewTodayCard(cardImage: image, action: {})
                            }
                            
                        }
                        
                    }
                    .scrollIndicators(.hidden)
                    
                    Text("Browse all")
                        .font(Font.custom("Roboto-Black", size: 15))
                        .textCase(.uppercase)
                    
                    HStack(alignment: .top, spacing: 10){
                        
                            
                        VStack(alignment: .leading, spacing: 10){
                            
                            ForEach(PostImages.indices){ index in
                                let image = PostImages[index]
                                if(index % 2 == 0 ){
                                    ImageCardView(cardImage: image)
                                    
//                                    Image(image)
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)
//                                        .frame(alignment: .topLeading)
                                }
                            }
                            
                        }
                        
                        VStack(alignment: .leading, spacing: 10){
                            ForEach(PostImages.indices){ index in
                                let image = PostImages[index]
                                if(index % 2 != 0 ){
                                    ImageCardView(cardImage: image)

//                                    Image(image)
//                                        .resizable()
//                                        .aspectRatio(contentMode: .fit)

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
                    
                } //VStack
                    .padding(10)
                    .navigationTitle("Discover")
                    .navigationBarTitleDisplayMode(.large)
                
            }// ScrollView
            
        }// NavigationStack
        .accentColor(Color.black)

    }
        
}

#Preview {
    HomeView()
}
