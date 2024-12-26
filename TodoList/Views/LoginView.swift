//
//  LoginView.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//

import SwiftUI

struct LoginView: View {
    
    @StateObject var viewmodel: LoginViewModel = LoginViewModel()
    
    var body: some View {
        NavigationView {
            VStack{
                // Header
                HeaderView(
                    title: "To Do List", subtitle: "Get things done", angle: 15, backgroundColor: Color.pink
                )
      
                // Login Form
                Form{
                    
                    if !viewmodel.errorMessage.isEmpty {
                        Text(viewmodel.errorMessage)
                            .font(.system(size: 12))
                            .foregroundColor(Color.red).padding()
                    }
                    
                    TextField("Email Address", text: $viewmodel.email)
                        .autocorrectionDisabled()
                        .keyboardType(.emailAddress)
                        .autocapitalization(.none)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    SecureField("Password", text: $viewmodel.password)
                        .autocapitalization(.none)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TLButton(title: "Log in", backgroundColor: .blue){
                        viewmodel.login()
                    }.padding()
                    
                }
                .offset(y: -50)
                
                // Create Account
                VStack{
                    Text("New around here?")
                    NavigationLink("Create An Account", destination: RegisterView())
                    .padding(.bottom, 50)
                }
                Spacer()
            }
        }
    }
}

#Preview {
    LoginView()
}




