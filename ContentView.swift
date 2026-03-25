//
//  ContentView.swift
//  LockIn
//
//  Created by CS3714 on 3/20/26.
//

import SwiftUI

// Stores what the user types into each field
struct ContentView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        
        // Arranges everything vertically with spacing
        VStack(spacing: 16) {
            Spacer()
            
            //Our app title
            Text("Lock In Focus App")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            //Email input feidl
            TextField("Email", text: $email)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            //Password input field. We used secure field here because it will replace the characters with dots when the user types in their password. This was done for security purposes.
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            // This is the log in button. Right now it is just placeholder because it is not functional yet.
            Button("Log In") { }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.blue)
                .foregroundColor(.white)
                .cornerRadius(10)
            
            //This is the sign up button. Right now this is also just a place holder because it is not functional yet.
            Button("Sign Up") { }
                .frame(maxWidth: .infinity)
                .padding()
                .background(Color.gray.opacity(0.2))
                .foregroundColor(.blue)
                .cornerRadius(10)
            
            Spacer()
        }
        .padding(.horizontal, 24)
    }
}

#Preview {
    ContentView()
}
