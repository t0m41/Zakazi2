//
//  HeaderView.swift
//  test
//
//  Created by Petar Pavlovic on 24.1.24..
//

import SwiftUI

struct HeaderView: View {
    
    let Title:String
    let Subtitle:String
    let Angle:Double
    let Background:Color
    let offsety:CGFloat
    let offsetx:CGFloat
    let offsetTeksty:CGFloat
    var body: some View {
       
        ZStack{
            RoundedRectangle(cornerRadius:1).foregroundColor(Background)
                .rotationEffect(.degrees(Angle))
               
            
            VStack(alignment: .trailing)  {
                Text(Title).font(.system(size: 50)).foregroundColor(.white).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                Text(Subtitle).foregroundColor(.white).font(.system(size: 25))
                
            }.offset(y:offsetTeksty)
        }
        .frame(width:UIScreen.main.bounds.width*3,height: 230).offset(x:offsetx,y: offsety)
    }

}


#Preview {
    HeaderView(Title: "Title", Subtitle: "Subtitle", Angle: 15, Background: .blue,offsety:0,offsetx:0,offsetTeksty: 0)
}
