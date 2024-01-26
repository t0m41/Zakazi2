//
//  RegisterViewModel.swift
//  Zakazi
//
//  Created by Petar Pavlovic on 25.1.24..
//

import Foundation
import FirebaseAuth
import FirebaseFirestore
import FirebaseCore

class RegisterViewModel:ObservableObject{
    @Published var email=""
    @Published var ImeFirme=""
    @Published var Ime=""
    @Published var Prezime=""
    @Published var Brojtelefona=""
    @Published var Error=""
    @Published var Lozinka=""
    
    
    init(){}
    func register(){
        guard validate() else{
            return
        }
      
        Auth.auth().createUser(withEmail: email, password: Lozinka) { authResult, error in
          // ...
        }
        
    }
    
    
    
    func validate()->Bool{
        Error=""
        guard !email.trimmingCharacters(in: .whitespaces).isEmpty,
              !Lozinka.trimmingCharacters(in: .whitespaces).isEmpty,
              !Ime.trimmingCharacters(in: .whitespaces).isEmpty,
              !Prezime.trimmingCharacters(in: .whitespaces).isEmpty,
              !ImeFirme.trimmingCharacters(in: .whitespaces).isEmpty,
              !Brojtelefona.trimmingCharacters(in: .whitespaces).isEmpty
              
        else{
            
            Error="Molim Vas popunite sva polja."
            
            return false
        }
        
        guard email.contains("@") && email.contains(".") else{
            Error="Molim Vas unesite ispravnu mail adresu."
            return false
        }
        
        return true
    }
   
    
    
    
}
