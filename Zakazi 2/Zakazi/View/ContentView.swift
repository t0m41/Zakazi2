//
//  ContentView.swift
//  Zakazi
//
//  Created by Petar Pavlovic on 25.1.24..
//

import SwiftUI

struct ContentView: View {
    @StateObject var viewModel=LoginViewViewModel()
    var body: some View {
        NavigationView{
            VStack {
                HeaderView(Title: "Zakaži", Subtitle: "Uloguj se", Angle: 15, Background: .logoBoja, offsety: -130, offsetx: 0, offsetTeksty: 60)
                
                Form{
                    
                    if !viewModel.Error.isEmpty{
                        Text(viewModel.Error)
                            .foregroundColor(.red)
                    }
                    
                    
                    TextField("Email Adresa",text: $viewModel.email)
                        .textFieldStyle(DefaultTextFieldStyle())
                    SecureField("Lozinka",text: $viewModel.password)
                        .textFieldStyle(DefaultTextFieldStyle())
                    
                    TLButton(tekst: "Uloguj se", boja: .blue){
                        viewModel.login()
                    }
                    
                    
                }
                VStack{
                    Text("Novi ste ovde?")
                    NavigationLink("Napravite nalog",destination:DvaDugmeta())
                }
               
                
                
            }
            
           
            
            .padding()
        }
       
    }
}

#Preview {
    ContentView()
}
