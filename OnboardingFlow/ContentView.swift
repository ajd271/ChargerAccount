//
//  ContentView.swift
//  SideMenuTemplate
//
//

import SwiftUI

let gradientColors: [Color] = [
    .gradientTop,
    .gradientBottom
]


struct ContentView: View {
    @State private var showMenu = false
    @State private var selectedTab = 1
   @State private var selectedMenuOption: SideMenuOptionsModel?
    
    var body: some View {
        NavigationStack {
            ZStack {
                TabView(selection: $selectedTab)
                {
                    may24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(0)
                        .tag(1)
                    april24()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(2)
                    december22()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(3)
                        .tag(4)
                        .tag(5)
                    november22()
                        .background(Gradient(colors: gradientColors))
                        .foregroundStyle(.white)
                        .padding()
                        .tag(6)
                }
                .tabViewStyle(.page)

                SideMenuView(isShowing: $showMenu, selectedTab: $selectedTab)

            }
            //.navigationDestination(for: SideMenuOptionsModel.self, destination: { option in
                //navigationDestination(for: option)
            //})
            .onAppear { showMenu = false }
            .navigationTitle("Charger Account")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar(showMenu ? .hidden : .visible, for: .navigationBar)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        showMenu.toggle()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundStyle(.blue)
                    }
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
