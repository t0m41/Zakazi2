//
//  RegisterView.swift
//  Zakazi
//
//  Created by Petar Pavlovic on 25.1.24..
//

import SwiftUI

struct RegisterViewPoslodavac: View {
    @StateObject var RegisterView=RegisterViewModel()
    var body: some View {
        HeaderView(Title: "Zakaži", Subtitle: "Registruj se", Angle: 15, Background: .green, offsety: -100, offsetx: 0, offsetTeksty: 40)
        
        Form{
            
            if !RegisterView.Error.isEmpty{
                Text(RegisterView.Error)
                    .foregroundColor(.red)
            }
            
            TextField("Ime", text: $RegisterView.Ime)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
            
            TextField("Prezime", text:$RegisterView.Prezime)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()

            
            TextField("Broj telefona", text: $RegisterView.Brojtelefona)
                .textFieldStyle(DefaultTextFieldStyle())
                .keyboardType(.numberPad)
                .autocorrectionDisabled()

            
            TextField("Email adresa", text: $RegisterView.email)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(.none)
            TextField("Ime Firme", text:$RegisterView.ImeFirme)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(.none)

            
            SecureField("Lozinka",text: $RegisterView.Lozinka)
                .textFieldStyle(DefaultTextFieldStyle())
                .autocorrectionDisabled()
                .autocapitalization(.none)

            
            
            TLButton(tekst: "Registruj se", boja: .green){
                
                RegisterView.register()
            }
        }
    
    }
}

#Preview {
    RegisterViewPoslodavac()
}
