//
//  ImageCardView.swift
//  images_app
//
//  Created by aninoss on 13/12/2023.
//

import SwiftUI

struct ImageCardView: View {
    //MARK: PROPERTIES
    @State var cardImage: String = "postImages_1"
    
    var body: some View {
        NavigationStack{
            
            NavigationLink(destination: PostView(cardImage: cardImage)) {
                Image(cardImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                .frame(alignment: .topLeading)
            }
            
        }
    }
}

#Preview {
    ImageCardView()
}
