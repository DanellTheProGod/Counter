//
//  ContentView.swift
//  Counter
//
//  Created by Danell Koshy Gijo on 17/06/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var counter = 0
    @State private var message = ""
    var body: some View {
        VStack{
            Text ("\(counter) cookies eaten")
            Button {
                print ("Bye Bye cookie!")
                counter += 1
                if counter >= 40 {
                    message = "Oh Noooo"
                } else if counter >= 30{
                    message = "What are you doing"
                } else if counter >= 20{
                    message = "Do not eat too many cookies"
                }
            } label: {
                Text ("OM NOM NOM")
                    .padding()
                    .background(.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            .shadow(color: .white.opacity(0.3) , radius: 10, x:0.0, y:0.0)
            Text (message)
                .padding()
            
            Button {
                counter = 0
                message=""
            } label: {
                Text("Reset")
            }
            
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
