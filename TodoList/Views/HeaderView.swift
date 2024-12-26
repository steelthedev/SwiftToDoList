//
//  ExtractedView.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//


import SwiftUI

struct HeaderView: View {
    let title: String
    let subtitle: String
    let angle: Double
    let backgroundColor: Color
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 0)
                .foregroundStyle(backgroundColor)
                .rotationEffect(Angle(degrees: angle))
            
            VStack{
                Text(title)
                    .font(.system(size: 50))
                    .foregroundColor(Color.white)
                    .bold()
                Text(subtitle)
                    .font(.system(size: 20))
                    .foregroundColor(Color.white)
            }.padding(.top, 80)
        }
        .frame(width:UIScreen.main.bounds.width * 3, height: 350)
        .offset(y: -150)
    }
}
