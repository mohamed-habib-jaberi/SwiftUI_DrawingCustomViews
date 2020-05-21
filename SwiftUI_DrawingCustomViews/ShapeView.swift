//
//  ShapeView.swift
//  SwiftUI_DrawingCustomViews
//
//  Created by mohamed  habib on 21/05/2020.
//  Copyright © 2020 mohamed  habib. All rights reserved.
//

import SwiftUI

struct logoShape: Shape {
    func path(in rect: CGRect) -> Path {
        Path{ path in
            
            path.move(to: CGPoint(x: 0, y: 111))
            path.addLine(to: CGPoint(x: 111, y: 111))
            path.addLine(to: CGPoint(x: 111, y: 16.79))
            path.addLine(to: CGPoint(x: 72.64, y: 83.44))
            path.addLine(to: CGPoint(x: 57.36, y: 56.31))
            path.addLine(to: CGPoint(x: 39.98, y: 83.97))
            
            path.addCurve(to: CGPoint(x: 24.83, y: 47.88), control1: CGPoint(x: 39.98, y: 83.97), control2: CGPoint(x: 28.39, y: 56.31))
            path.addCurve(to: CGPoint(x: 49.20, y: 17.85), control1: CGPoint(x: 29.18, y: 44.72), control2: CGPoint(x: 49.20, y: 33.13))
            path.addCurve(to: CGPoint(x: 0, y: 0), control1: CGPoint(x: 49.20, y: 2.57), control2: CGPoint(x: 15.01, y: 0))
            path.addLine(to: CGPoint(x: 0, y: 111))

        }
    }
}

struct ShapeView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct ShapeView_Previews: PreviewProvider {
    static var previews: some View {
        ShapeView()
    }
}
