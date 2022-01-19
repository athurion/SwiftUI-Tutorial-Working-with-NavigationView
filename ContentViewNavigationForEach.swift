//
//  ContentView.swift
//  SwiftUI Tutorial: Working with NavigationView
//
//  Created by Alvin Sosangyo on 01/19/22.
//


import SwiftUI

struct ContentView: View {
    
    var collections = [

            //Make sure to change the image name to the one that you'll be using
            Collections(name: "Cafe", image: "", content: "Lorem ipsum dolor sit amet."),
            Collections(name: "Home", image: "", content: "Lorem ipsum dolor sit amet."),
            Collections(name: "Commute", image: "", content: "Lorem ipsum dolor sit amet."),
            Collections(name: "Travel", image: "", content: "Lorem ipsum dolor sit amet."),
            Collections(name: "Public", image: "", content: "Lorem ipsum dolor sit amet."),
            Collections(name: "Office", image: "", content: "Lorem ipsum dolor sit amet."),
            Collections(name: "Conference", image: "", content: "Lorem ipsum dolor sit amet.")
            
    ]
    
    var body: some View {
            
        NavigationView {
            
            List(collections) { index in
                
                ZStack {
                    
                    ImageLabelRow(collection: index)
                    NavigationLink(destination: DetailView(collection: index)) {}
                    
                } //ZStack
                
            } //List
            .navigationTitle("Where are you?")
            
        } //NavigationView
    
    } //body
    
} //ContentView

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Collections: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var content: String
}

struct ImageLabelRow: View {
    
    var collection: Collections

    var body: some View {
        ZStack(alignment: .trailing) {
            Image(collection.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 150)
                .cornerRadius(20)
                .overlay(
                    Rectangle()
                        .foregroundColor(.black)
                        .cornerRadius(20)
                        .opacity(0.4)
                )

            Text(collection.name)
                .font(.system(.largeTitle, design: .rounded))
                .fontWeight(.black)
                .foregroundColor(.white)
                .padding()
        }
    }
    
}

struct DetailView: View {
    
    var collection: Collections
    
    var body: some View {
        
        Text(collection.content)
            .font(.body)
        
    }
    
}

