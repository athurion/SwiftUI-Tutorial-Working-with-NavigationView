//
//  ContentView.swift
//  SwiftUI Tutorial: Working with NavigationView
//
//  Created by Alvin Sosangyo on 01/19/22.
//


import SwiftUI

struct ContentView: View {
    
    var body: some View {
            
        NavigationView {
            NavigationLink(destination: SecondView()) {
                Text("Go to second view")
            }
            .navigationTitle("SwiftUI Navigation")
            .navigationBarTitleDisplayMode(.inline)
        }
    
    } //body
    
    init() {
        
        let navBarAppearance = UINavigationBarAppearance()
        
        navBarAppearance.largeTitleTextAttributes = [.foregroundColor: UIColor.blue, .font: UIFont(name: "Savoye LET", size: 40)!]
        navBarAppearance.titleTextAttributes = [.foregroundColor: UIColor.blue, .font: UIFont(name: "Savoye LET", size: 20)!]

        
        UINavigationBar.appearance().standardAppearance = navBarAppearance
        UINavigationBar.appearance().scrollEdgeAppearance = navBarAppearance
        UINavigationBar.appearance().compactAppearance = navBarAppearance
        
        UINavigationBar.appearance().tintColor = .red
        
    } //init
    
} //ContentView
    
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct SecondView: View {
    var body: some View {
        Text("This is the second view")
    }
}
