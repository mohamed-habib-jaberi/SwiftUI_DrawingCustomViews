//
//  ContentView.swift
//  SwiftUI_DrawingCustomViews
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isShowing = false
    
    var body: some View {
        
        GeometryReader{ proxy in
            
            ZStack {
                
                if self.isShowing{
                    
                    ScaledShape(shape: Circle(), scale: CGSize(width: proxy.frame(in: .local).size.width, height: proxy.frame(in: .local).size.height))
                        .fill(
                            LinearGradient(gradient: Gradient(colors: [Color.myGreen, .green, .red]), startPoint: UnitPoint(x: 0.25, y: 0.92), endPoint: UnitPoint(x: 0.85, y: 0.14))
                    )
                        .animation(.linear)
                    
                    ForEach(Range(0...10)) { iteration in
                        
                        OffsetShape(shape: Circle(), offset: CGSize(width: iteration * 10, height: iteration * 10))
                            .fill(Color.myPurple)
                            .animation(.linear)
                        
                    }
                }
                
                Path { path in
                    path.addRoundedRect(in: proxy.frame(in: .local), cornerSize: CGSize(width: 10, height: 10))
                }
                .fill(Color.myGreen)
                .animation(.linear)
                
                VStack {

                    logoShape()
                        .fill(Color.white)
                        .aspectRatio(1, contentMode: .fit)
                        .padding(9)
                        .opacity(self.isShowing ? 1 : 0)
                        .animation(.linear)
                    
                    Button(action: {
                        withAnimation {
                            self.isShowing.toggle()
                        }
                    }){
                        Text("Show logo")
                            .font(Font.system(.largeTitle))
                            .foregroundColor(.white)
                        
                    }
                }
            .padding()
            }
        }
        .frame(width: 200, height: 200)
        // whithout GeometryReader
        //        Path { path in
        //            path.addRoundedRect(in: CGRect(x: 0, y: 0, width: 100, height: 100), cornerSize: CGSize(width: 10, height: 10))
        //        }
        //        .fill(Color.myGreen)
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension Color {
    static let myPurple = Color(red: 128/255, green: 94/255, blue: 158/255)
    static let myGreen = Color(red: 4/255, green: 232/255, blue: 34/255)
}
