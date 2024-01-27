//
//  ContentView.swift
//  Bayna
//
//  Created by Rimah on 15/07/1445 AH.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Image("mainpage")
                    .resizable()
                    .ignoresSafeArea()
                
                
                VStack {
                    NavigationLink(destination: Ayah1()) {
                        Image("button1")
                            .resizable()
                            .position(x: 220, y: 155)
                            .frame(width: 370, height: 190)
                            .aspectRatio(contentMode: .fit)
                    }
                    
                    
                    
                    Button(action: {
                        
                        print("Button tapped!")
                    }) {
                        Image("button2")
                            .resizable()
                            .position(x:220,y:180)
                            .frame(width: 370, height: 190)
                            .aspectRatio(contentMode: .fit)
                    }
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                    
                }
            }
        }
    }
}
#Preview {
    ContentView()
}
