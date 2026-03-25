//
//  ContentView.swift
//  LockIn
//
//  Created by CS3714 on 3/20/26.
//

import SwiftUI

struct User: Identifiable {
    let id = UUID()
   var username: String
   var password: Int
}

// Stores what the user types into each field
struct ContentView: View {
    var body: some View {
       
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    ContentView()
}
