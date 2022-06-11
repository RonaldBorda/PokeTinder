//
//  LaunchViewModel.swift
//  iOSAppTemplate
//
//  Created by Ronald Meliton Borda Bernaola on 10/06/22.
//

import Foundation

class LaunchViewModel: ObservableObject{
    let appState: AppState = AppState.shared
    
    init(){
        appState.currentScreen = .home
    }
}
