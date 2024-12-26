//
//  ContentViewModel.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//

import Foundation
import FirebaseAuth

class ContentViewModel: ObservableObject {
    @Published var currentUserId: String = ""
    private var handler: AuthStateDidChangeListenerHandle?
   
    
    
    init(){
        self.handler = Auth.auth().addStateDidChangeListener{ [weak self] _, user in
            DispatchQueue.main.async {
                self?.currentUserId = user?.uid ?? ""
            }
           
        }
    }
    
    
    public var issignedIn: Bool {
        return Auth.auth().currentUser != nil
    }
}
