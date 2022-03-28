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

    
    func diceRoll4() {
dieFaceNum = Int.random(in: 1...4)
        switch dieFaceNum {
        case 1 :
            diceFace = "die.face.1"
        case 2 :
            diceFace = "die.face.2"
        case 3 :
            diceFace = "die.face.3"
        case 4 :
            diceFace = "die.face.4"
        default:
            break
        }
    }
    func diceRoll5() {
dieFaceNum = Int.random(in: 1...5)
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
        default:
            break
        }
    }
    func diceRoll6() {
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
                
                Button("1-4", action: diceRoll4)
                Button("1-5", action: diceRoll5)
                Button("1-6", action: diceRoll6)



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
