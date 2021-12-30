//
//  ContentView.swift
//  TaskApp
//
//  Created by Haik Divanyan on 12/29/21.
//

import SwiftUI

struct ContentView: View {
    @State var realmManager = RealmManager()
    @State private var showAddTastView = false
    var body: some View {
        ZStack(alignment: .bottomTrailing) {
            TasksView()
                .environmentObject(realmManager)
            
            SmallAddButton()
                .padding()
                .onTapGesture {
                    showAddTastView.toggle()
                }
        }
        .sheet(isPresented: $showAddTastView) {
            AddTaskView()
                .environmentObject(realmManager)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .bottom)
        .background(Color(hue: 0.086, saturation: 0.141,
                          brightness: 0.972))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
