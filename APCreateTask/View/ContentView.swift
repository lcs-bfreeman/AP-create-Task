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
    @State var result: [Results] = []
    @State private var filters: filterEnum = .all
    
    func saveResults4() {
        let results = Results(answer: dieFaceNum, type: " 1 - 4 ")
        
        return result.insert(results, at: 0)
        
    }
    func saveResults5() {
        let results = Results(answer: dieFaceNum, type: " 1 - 5 ")
        
        return result.insert(results, at: 0)
        
    }
    func saveResults6() {
        let results = Results(answer: dieFaceNum, type: " 1 - 6 ")
        
        return result.insert(results, at: 0)
        
    }
    
    func diceRoll4() {
dieFaceNum = Int.random(in: 1...4)
        saveResults4()
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
        saveResults5()
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
        saveResults6()
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
    
    func filter(_ listResult: [Results], by visibility: filterEnum) -> [Results] {
        
        if visibility == .all {
            return listResult
        } else {
            
            var filteredResults: [Results] = []
            

            for currentResult in listResult {
                
                if visibility == .small && currentResult.type == " 1 - 4 " {
                    filteredResults.insert(currentResult, at: 0)
                } else if visibility == .medium && currentResult.type == " 1 - 5 " {
                    filteredResults.insert(currentResult, at: 0)
                } else if visibility == .large && currentResult.type == " 1 - 6 " {
                    filteredResults.insert(currentResult, at: 0)
                }
                
            }
            
            return filteredResults
        }
        
    }
    
    
    var body: some View {


        NavigationView{
            VStack {
                Image(diceFace)
                    .resizable()
                    .scaledToFit()
            HStack {
                Spacer()
                
                Button(" 1 - 4 ", action: diceRoll4)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Button(" 1 - 5 ", action: diceRoll5)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()
                
                Button(" 1 - 6 ", action: diceRoll6)
                    .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                
                Spacer()



            }
            .buttonStyle(.bordered)
                
                VStack {

                    Text("Filter by...")
                        .font(Font.caption.smallCaps())
                        .foregroundColor(.secondary)
                    
                    Picker("Filter", selection: $filters) {
                        Text(filterEnum.all.rawValue)
                            .tag(filterEnum.all)
                        Text(filterEnum.small.rawValue)
                            .tag(filterEnum.small)
                        Text(filterEnum.medium.rawValue)
                            .tag(filterEnum.medium)
                        Text(filterEnum.large.rawValue)
                            .tag(filterEnum.large)
                    }
                    .pickerStyle(.segmented)
                    .padding(.horizontal)
                }
                .padding(.bottom)
                
                
                List(filter(result, by: filters)) { result in
                        Text("\(result.type): \(result.answer)")

                    
                }
                
        }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
