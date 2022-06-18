//
//  AuthViewModel.swift
//  iOSAppTemplate
//
//  Created by Ronald Meliton Borda Bernaola on 17/06/22.
//

import SwiftUI
import FirebaseAuth

class AuthViewModel: ObservableObject{
    //??StateObject
    @StateObject var appState: AppState = .shared
    
    func login(email: String, password: String){
        Auth.auth().signIn(withEmail: email, password: password) { authResponse, error in
            if error == nil{
                self.appState.currentScreen = .main
            }
        }
    }
    
    func register(name: String, email: String, password: String){
        Auth.auth().createUser(withEmail: email, password: password) { authResponse, error in
            if error == nil{
//                print("Auth \(Auth.auth().currentUser?.email)"
                let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
                changeRequest?.displayName = name
                changeRequest?.commitChanges()
                self.appState.currentScreen = .main
            }
        }
    }
}
