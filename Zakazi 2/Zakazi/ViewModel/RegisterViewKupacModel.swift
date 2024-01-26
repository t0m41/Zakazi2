//
//  LoginViewViewModel.swift
//  test
//
//  Created by Petar Pavlovic on 24.1.24..
//

import Foundation

class RegisterViewKupacModel:ObservableObject{
    @Published var email=""
    @Published var password=""
    @Published var Error=""
    @Published var Ime=""
    @Published var Prezime=""
    @Published var Broj_telefona=""
    
    init(){}
    
    func register(){
        guard validate() else{
            return
        }
            //
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
