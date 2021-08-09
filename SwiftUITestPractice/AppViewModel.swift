//
//  AppViewModel.swift
//  SwiftUITestPractice
//
//  Created by andronick martusheff on 8/9/21.
//

import Foundation
class AppViewModel: ObservableObject {
    
    @Published var signedIn = false
    
    let acceptedUser = "sadsack"
    let acceptedPw = "1234567"
    
    func signIn(username: String, password: String){
        
        if username == acceptedUser && password == acceptedPw {
            
            DispatchQueue.main.async {
                self.signedIn = true
            }
            
            
        }
        
    }
}
