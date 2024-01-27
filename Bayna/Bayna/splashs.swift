//
//  splashs.swift
//  Bayna
//
//  Created by Rimah on 15/07/1445 AH.
//

import SwiftUI

struct splashs: View {
    @State private var isAnimating = false
      @State private var isActive = false
      var body: some View {
          
          if isActive {
              mainPages()
          } else {
             
                  ZStack {
                     
                   Image("logopage")
                          .resizable()
                    
                      
                      VStack {
                         
                          Image("logo")
                              .resizable()
                              .position(x:130,y:56)
                             
                              .frame(width: 250.0, height: 150.0)
                              .shadow(radius: 100)
                              .aspectRatio(contentMode: .fit)
                            
                       
                              .opacity(isAnimating ? 1.0 : 0.0)
                             .offset(y: isAnimating ? 0 : UIScreen.main.bounds.height / 2)
                              .animation(.easeInOut(duration: 1.0))
                           
                          
                         
                      }}
                  .edgesIgnoringSafeArea(.all)
                  .onAppear {
                      DispatchQueue.main.asyncAfter(deadline: .now() + 0.01) {
                          isAnimating = true
                      }}
                  .onAppear {
                      DispatchQueue.main.asyncAfter(deadline: .now() + 3.5) {
                          withAnimation{
                              self.isActive = true
                          }
                          
                      }
                  }
              }
              
          
       
      }
  }

#Preview {
    splashs()
}
