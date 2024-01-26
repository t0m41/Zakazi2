//
//  LoginViewViewModel.swift
//  test
//
//  Created by Petar Pavlovic on 24.1.24..
//

import Foundation
import FirebaseAuth

class LoginViewViewModel:ObservableObject{
    @Published var email=""
    @Published var password=""
    @Published var Error=""
    init(){}
    
    func login(){
        guard validate() else{
            return
        }
        Auth.auth().signIn(withEmail: email, password: password) { [weak self] authResult, error in
            if let error = error {
                print("neuspesno")
            }
            else{
                print("uspesno")
            }
            
        }
        
    }
    func validate()->Bool{
        Error=""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,!password.trimmingCharacters(in: .whitespaces).isEmpty else{
            Error="Please fill in all fields."
            
            return false
        }
        
        guard email.contains("@") && email.contains(".") else{
            Error="Please enter valid email."
            return false
        }
        
        return true
    }
}
