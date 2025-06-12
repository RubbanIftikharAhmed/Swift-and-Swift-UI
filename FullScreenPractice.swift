//
//  FullScreenPractice.swift
//  UIBootcampSwift
//
//  Created by Rubban Iftikhar on 01/07/2024.
//

import SwiftUI

struct FullScreenPractice: View {
    var body: some View {
        Logged()
    }
}
struct Logged: View{
    @State var email: String = ""
    @State var password: String = ""

    var body: some View{
        Spacer()
        VStack(alignment: .center){
            Text("You need to be Logged in to make a purchase.")
                .font(.largeTitle)
                .padding(.vertical, 20)
            Text("Create an account now!")
                .font(.title)
                .padding(.vertical, 20)
            
                TextField("enter your email", text: $email)
                TextField("enter your password", text: $password)
            
            .padding(.vertical, 20)
            Button {
                
            } label: {
                Text("Sign Up")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.white)
                    .padding(.vertical, 20)
                    .background(Color.blue )
                    .cornerRadius(10)
                    
            }
            Button {
                
            } label: {
                Text("Log In")
                    .frame(maxWidth: .infinity)
                    .foregroundColor(Color.blue)
                    .padding(.vertical, 20)
                    .background(Color(red: 0.8078, green: 0.8078, blue: 0.8118) )
                    .cornerRadius(10)
            }
            .padding(.bottom, 10)
            Text("Not now")
                .foregroundColor(Color.blue)
            

        }
        .padding(.horizontal, 25)
        Spacer()
    }
    
}
#Preview {
    Logged()
}
