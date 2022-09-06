//
//  searchBar.swift
//  demoAssignmnet
//
//  Created by Md Maruf Prodhan on 6/9/22.
//

import SwiftUI
 
struct SearchBar: View {
    @Binding var text: String
 
    @State private var isEditing = false
 
    var body: some View {
        HStack {
            HStack(spacing: 5){
                
                Image(systemName: "magnifyingglass")
                TextField("Search ...", text: $text)
                    .padding(7)
                    .padding(.horizontal, 10)
                    .onTapGesture {
                        self.isEditing = true
                    }
            }
            .padding(8)
            .background(.gray)
            .cornerRadius(8)
            .padding(.horizontal, 20)
            
            
            if isEditing {
                Button(action: {
                    self.isEditing = false
                    self.text = ""
 
                }) {
                    Text("Cancel")
                }
                .padding(.trailing, 10)
                .transition(.move(edge: .trailing))
                .animation(.default)
                
            }
        }
    }
}
