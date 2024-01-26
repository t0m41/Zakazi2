//
//  TLButton.swift
//  test
//
//  Created by Petar Pavlovic on 24.1.24..
//

import SwiftUI
struct TLButton: View {
    let tekst:String
    let boja:Color
    let action:()->Void
    var body: some View {
        Button{
            action()
        }label: {
            ZStack{
                RoundedRectangle(cornerRadius: 10)
                    .foregroundColor(boja)
                Text(tekst).foregroundColor(.white)
                    .bold()
            }
        }
    }
}

#Preview {
    TLButton(tekst: "Log In",boja: .blue){
        
    }
}
