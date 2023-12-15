//
//  CommentView.swift
//  images_app
//
//  Created by aninoss on 12/12/2023.
//

import SwiftUI

struct CommentView: View {
    //MARK: PROPERTIES
    var commentList: [String] = ["message 01", "message 02", "message 03", "message 04", "message 05"]
    var body: some View {
        NavigationStack {
            ScrollView(.vertical) {
                VStack(alignment: .leading, spacing: 25){
//                    Text("Comments")
//                        .font(Font.custom("Roboto-Black", size: 35))
//                        .textCase(.uppercase)
                    
                    ForEach(commentList.indices){ comment in
                        CommentCardView()
                    }
                    
                }
                .navigationTitle("Comments")
                .navigationBarTitleDisplayMode(.large)
            }
        }
    }
}

#Preview {
    CommentView()
}
