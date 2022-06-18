//
//  SignUpView.swift
//  iOSAppTemplate
//
//  Created by Ronald Meliton Borda Bernaola on 17/06/22.
//

import SwiftUI

struct SignUpView: View {
    // stateObject??
    @StateObject var authViewModel = AuthViewModel()
    
    @State private var email: String = ""
    @State private var password: String = ""
    @State private var name: String = ""
    
    var body: some View {
        ScrollView{
//          porque pone 2 veces aligment .leading
            VStack(alignment: .leading,spacing: 20){
                Text("Sign Up")
                    .font(.system(size: 25, weight: .black))
                Text("Welcome PokeTinder ingresar sus datos personales")
            }
            .frame(maxWidth: .infinity,alignment: .leading)
            .padding()
                    
                VStack(spacing:15){
                    TextField("Enter your name", text:$name)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(.pink, lineWidth: 1))
                        .keyboardType(.emailAddress)
                    TextField("Enter your email", text:$email)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(.pink, lineWidth: 1))
                        .keyboardType(.emailAddress)
                    SecureField("Enter your password", text:$password)
                        .padding()
                        .overlay(RoundedRectangle(cornerRadius: 8)
                            .stroke(.pink, lineWidth: 1))
                    
                    Button{
                        authViewModel.register(name: name, email: email, password: password)
                    } label: {
                        Text("Sign Up")
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 18,weight: .bold))
                    }
                    .frame(maxWidth: .infinity)
                    .background(.pink)
                    .cornerRadius(8)
                    
                    
                    
                }.padding()
            
            }
    }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
