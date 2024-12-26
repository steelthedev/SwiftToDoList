//
//  ContentView.swift
//  TodoList
//
//  Created by manofsteel on 26/12/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var contentViewModel: ContentViewModel = ContentViewModel()

    var body: some View {
        if contentViewModel.issignedIn, !contentViewModel.currentUserId.isEmpty {
            //signedin
            ToDoListsItemView()
        }else {
            LoginView()
        }
     
       
    }
}

#Preview {
    ContentView()
}
