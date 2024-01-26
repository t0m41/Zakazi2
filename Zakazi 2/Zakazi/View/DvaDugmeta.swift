//
//  RegisterView.swift
//  Zakazi
//
//  Created by Petar Pavlovic on 25.1.24..
//

import SwiftUI

struct DvaDugmeta: View {
    var body: some View {
            ZStack{
                VStack{
                    HeaderView(Title: "Zakaži", Subtitle: "Napravite nalog", Angle: 15, Background: .blue, offsety: -380, offsetx: 0, offsetTeksty: 40)
                    
                    
                                
                    
                }
                
                VStack{
                    
                    NavigationLink("Tražite uslugu",destination:RegisterViewKupac()).frame(width:300,height: 100).foregroundColor(.white).background(Color.cyan).cornerRadius(30).font(.system(size: 40)).padding(.bottom,80)
                    
                    NavigationLink("Nudite uslugu",destination:RegisterViewPoslodavac()).frame(width:300,height: 100).foregroundColor(.white).background(Color.cyan).cornerRadius(30).font(.system(size: 40))
                    
                }.padding(.top,100)
                
                
                
            }
        
        
    }
}

#Preview {
    DvaDugmeta()
}
