//
//  SignUp.swift
//  
//
//  Created by Devki Patel on 3/25/26.
//
import SwiftUI


//Used Apple Dev Tutorial "Navigation and model presentation Creating the edit view" to figure this out 
struct SignUp: View {
    @State private var username: String
    @State private var password: Int
    @State private var user: User
    @State var isPresentingSignUp = false
    
    var body: some View {
        
        // Arranges everything vertically with spacing
        VStack(spacing: 16) {
            Spacer()
            
            //username input feidl
            TextField("Username", text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)
            
            //Password input field. We used secure field here because it will replace the characters with dots when the user types in their password. This was done for security purposes.
            SecureField("Password", text: $password)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .keyboardType(.default)

            //This is the sign up button. Right now this is also just a place holder because it is not functional yet.
            NavigationStack {
                ContentView()
                    .navigationTitle("Sign Up")
                    .toolBar {
                        ToolbarItem(placement: .cancellationAction) {
                            Button("Cancel") {
                                isPresentingSignUp false
                            }
                        }
                        ToolbarItem(placement: .confirmationAction) {
                            Button("Done") {
                                isPresentingSignUp false
                            }
                        }
                    }
            }
            TextField("Sign Up", text: $) { }
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
