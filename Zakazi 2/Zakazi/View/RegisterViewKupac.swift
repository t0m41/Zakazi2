//
//  RegisterViewKupac.swift
//  Zakazi
//
//  Created by Petar Pavlovic on 25.1.24..
//

import SwiftUI

struct RegisterViewKupac: View {
    @StateObject var viewModel=RegisterViewKupacModel()
    var body: some View {
        VStack{
            HeaderView(Title: "Zakaži", Subtitle: "Registruj se", Angle: 15, Background: .yellow, offsety: -100, offsetx: 0, offsetTeksty: 40)
            
            Form{
                
                TextField("Ime", text: $viewModel.Ime)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                
                TextField("Prezime", text: $viewModel.Prezime)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocorrectionDisabled()
                TextField("Email adresa", text: $viewModel.email)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .autocapitalization(/*@START_MENU_TOKEN@*/.none/*@END_MENU_TOKEN@*/)
                    .autocorrectionDisabled()
                TextField("Broj telefona", text: $viewModel.Broj_telefona)
                    .textFieldStyle(DefaultTextFieldStyle())
                    .keyboardType(.numberPad)
                    .autocorrectionDisabled()
                TLButton(tekst: "Uloguj se", boja: .yellow){
                    viewModel.register()
                        
                }
                
                
            }
        }
    }
}

#Preview {
    RegisterViewKupac()
}
