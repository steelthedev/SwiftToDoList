//
//  RegisterView.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//

import SwiftUI

struct RegisterView: View {
    @StateObject var registerViewModel: RegisterViewModel = RegisterViewModel()
    var body: some View {
        VStack{
            // header
            HeaderView(
                title: "Register", subtitle: "Start organizing your tasks", angle: -15, backgroundColor: .orange
            )
            
            Form{
                TextField("Full Name", text: $registerViewModel.name)
                    .autocorrectionDisabled()
                    .textFieldStyle(DefaultTextFieldStyle())
                TextField("Email Address", text: $registerViewModel.email)
                    .autocorrectionDisabled()
                    .autocapitalization(.none)
                   
                    .textFieldStyle(DefaultTextFieldStyle())
                SecureField("Password", text: $registerViewModel.password)
                    .autocapitalization(.none)
                    .textFieldStyle(DefaultTextFieldStyle())
                
                TLButton(title: "Create Account", backgroundColor: .green){
                    registerViewModel.register()
                }.padding()
            }
            
            Spacer()

        }
        
    }
}

#Preview {
    RegisterView()
}
