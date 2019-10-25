//
//  ContentView.swift
//  Swift UI Demo 2
//
//  Created by EDUARDO MEJIA on 25/10/19.
//  Copyright © 2019 EDUARDO MEJIA. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        VStack(alignment: .leading){
                Text("EddieWare")
                    .font(.largeTitle)
            
            HStack{
                    Text("Texto mas peque By Eddieware").font(.subheadline)
                Spacer()
                Text("Mexico City").font(.subheadline)
            
            }//Fin H stack
        }.padding()//Fin V stack
        
        
        
        
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
