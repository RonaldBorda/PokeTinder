//
//  ProfileView.swift
//  iOSAppTemplate
//
//  Created by Ronald Meliton Borda Bernaola on 17/06/22.
//

import SwiftUI
import FirebaseAuth

struct ProfileView: View {
    
    @EnvironmentObject var appState: AppState

    @State private var email: String = "bordaborda.com"
    @State private var name: String = "ronald"
    
    var body: some View {
        NavigationView{
            VStack (alignment: .leading, spacing: 15){
                Image("profile")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(RoundedRectangle(cornerRadius: 12))
                    .frame(maxWidth:100)
                Text(name)
                    .font(.system(size: 16, weight: .black))
                Text(email)
                    .font(.system(size: 18))
                    .foregroundColor(.gray)
                
                HStack{
                    Button{
                        print("Update profile")
                    }label: {
                        Text("Update Profile")
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                    }
                    .frame(maxWidth: .infinity)
                    .background(.pink)
                    .cornerRadius(8)
                    Spacer()
                    Button{
                        print("Update profile")
                    }label: {
                        Text("Follow")
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .bold))
                    }
                    .frame(maxWidth: .infinity)
                    .background(.gray)
                    .cornerRadius(8)
                }
                Spacer()
                
                VStack{
                    Divider()
                    Button{
                        try? Auth.auth().signOut()
                        appState.currentScreen = .signIn
                    }label:{
                        Text("sign out")
                            .foregroundColor(.pink)
                    }
                }.padding(.bottom)
                
            }
            
            .navigationTitle("Profile")
        }.padding()
            .onAppear{
                let user = Auth.auth().currentUser
                name = user?.displayName ?? "not name"
                email = user?.email ?? "no email"
            }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
