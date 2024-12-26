//
//  LoginViewModel.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//

import FirebaseAuth
import Foundation


class LoginViewModel: ObservableObject {
    @Published var email: String = ""
    @Published var password: String = ""
    @Published var errorMessage: String = ""
    
    init() {
       
    }
    
    func login() {
       
        guard validate() else { return }
        
        // try login
        Auth.auth().signIn(withEmail: email, password: password)
    }
    
    private func validate() -> Bool {
        
        errorMessage = ""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty, !password.trimmingCharacters(in: .whitespaces).isEmpty else {
                errorMessage = "Please enter email and password"
            return false
        }
        guard email.contains("@") && email.contains(".") else {
            errorMessage = "Please enter valid email"
            return false
        }
        
        return true
    }
    
    
}
