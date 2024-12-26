//
//  ExtractedView.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//


import SwiftUI

struct TLButton: View {
    let title: String
    let backgroundColor: Color
    let action: () -> Void
    var body: some View {
        Button{
            action()
        } label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(backgroundColor)
                
                Text(title)
                    .foregroundStyle(Color.white)
                    .bold()
            }
        }
    }
}
