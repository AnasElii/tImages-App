//
//  MyButton.swift
//  images_app
//
//  Created by aninoss on 8/12/2023.
//

import SwiftUI

struct MyButton: View {
    //MARK: PROPERTIES
    @State private var isPressed = false

    @State var btnText: String = "Click Me!"
    @State public var btnTextColor: Color = Color.black
    @State public var backgroundColor: Color = Color.white
    @State public var btnBorderColor: Color = Color.black
    @State public var action: () -> Void
    
    init(btnText: String, btnTextColor: Color, backgroundColor: Color, btnBorderColor: Color, action: @escaping () -> Void) {
        self.btnText = btnText
        self.btnTextColor = btnTextColor
        self.backgroundColor = backgroundColor
        self.btnBorderColor = btnBorderColor
        self.action = action
    }
    
    var body: some View {
            
        ZStack{
            RoundedRectangle(cornerRadius: 6)
                .fill(backgroundColor)
                .stroke(btnBorderColor, lineWidth: 2)
                .opacity(isPressed ? 0.5 : 1.0)
                .onTapGesture{
                    isPressed.toggle()
                    action()
                    DispatchQueue.main.asyncAfter(deadline: .now() + 0.2) {
                        isPressed = false
                    }
                }
                .onChange(of: isPressed, {
                })
                .overlay(
                    Text(btnText)
                        .font(Font.custom("Comfortaa-Bold", size: 15))
                        .textCase(.uppercase)
                        .foregroundStyle(btnTextColor)
                        .opacity(isPressed ? 0.5 : 1.0)
                )
            
        }// ZStack
        .frame(height: 55)
        
    }

}

#Preview {
    MyButton(btnText: "Click Me!", btnTextColor: .black, backgroundColor: .white, btnBorderColor: .black, action: { print("Hello Mother!") })
}
