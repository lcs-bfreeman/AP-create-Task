//
//  ContentView.swift
//  AP create Task
//
//  Created by Ben Freeman on 2022-03-25.
//

import SwiftUI

struct ContentView: View {
    
    @State var startNumber = ""
    @State var endNumber = ""
    
    var body: some View {
        NavigationView{
            HStack{
                Spacer()
                
                TextField("Start #", text:$startNumber)
                Spacer()

                TextField("End #", text:$endNumber)
                Spacer()

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
