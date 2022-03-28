//
//  ContentView.swift
//  AP create Task
//
//  Created by Ben Freeman on 2022-03-25.
//

import SwiftUI

struct ContentView: View {

    @State var dieFaceNum: Int
    @State var diceFace: String

    
    func diceRoll() {
dieFaceNum = Int.random(in: 1...6)
        switch dieFaceNum {
        case 1 :
            diceFace = "die.face.1"
        case 2 :
            diceFace = "die.face.2"
        case 3 :
            diceFace = "die.face.3"
        case 4 :
            diceFace = "die.face.4"
        case 5 :
            diceFace = "die.face.5"
        case 6 :
            diceFace = "die.face.6"
        default:
            break
        }
    }
    
    var body: some View {


        NavigationView{
            VStack {
                Image(diceFace)
            HStack {
                
                Button("1...6", action: diceRoll)
            }
            .buttonStyle(.bordered)
        }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
