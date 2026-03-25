//
//  LogIn.swift
//  
//
//  Created by Devki Patel on 3/25/26.
//
import SwiftUI

struct LogIn: View {
    var body: some View {
        
        // Arranges everything vertically with spacing
        VStack(spacing: 16) {
            Spacer()
            
            //Our app title
            Text("Lock In Focus App")
                .font(.largeTitle)
                .fontWeight(.bold)
            
            Spacer()
            
            //username input feidl
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)
            
            //Password input field. We used secure field here because it will replace the characters with dots when the user types in their password. This was done for security purposes.
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)
            
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
