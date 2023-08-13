//
//  ContentView.swift
//  BlurText
//
//  Created by eyh.mac on 13.08.2023.
//

import SwiftUI

struct ContentView: View {
    @State private var blurRadius: CGFloat = 5
    var body: some View {
        VStack{
            Text("Hi Guys")
                .font(Font.custom("Bebas Neue", size: 95))
                .blur(radius: blurRadius)
            
            Slider(value: $blurRadius, in: 0...15)
                .frame(width: 100)
                .accentColor(Color(UIColor.white))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.dark)
    }
}
