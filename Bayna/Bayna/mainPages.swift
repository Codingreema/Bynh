//
//  mainPages.swift
//  Bayna
//
//  Created by Rimah on 15/07/1445 AH.
//

import SwiftUI

struct mainPages: View {
    var body: some View {
        NavigationStack {
            ZStack{
                Image("page3")
                    .resizable()
                    .ignoresSafeArea()
                
                Button(action: {
                    
                    print("Button tapped!")
                }) {
                    Image("buttonback")
                        .resizable()
                        .position(x:150,y:-367)
                        .frame(width: 30, height: 30)
                    
                    
                    
                }
                
                VStack {
                    
                    ZStack {
                        
                        Button(action: {
                            print("Button tapped!")
                        }) {
                            Image("button3")
                                .resizable()
                                .position(x: 200, y: 95)
                                .frame(width: 370, height: 130)
                                .aspectRatio(contentMode: .fit)
                        }
                    }
                    
                    Button(action: {
                        print("Button tapped!")
                    }) {
                        Image("button4")
                            .resizable()
                            .position(x:200,y:95)
                            .frame(width: 370, height: 130)
                            .aspectRatio(contentMode: .fit)
                    }
                    .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                }
                
            }
            
        }
        
        
    }
}

#Preview {
    mainPages()
}
