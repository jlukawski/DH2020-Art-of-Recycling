//
//  ContentView.swift
//  Art of Recycling
//
//  Created by Jake Lukawski on 10/24/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            TipsView()
                .tabItem{
                    VStack{
                        Image(systemName: "heart")
                        Text("Tips")
                    }
            }
            .tag(0)
            ItemsView()
                .tabItem{
                    VStack{
                        Image(systemName: "paperplane")
                        Text("Items")
                    }
            }
            .tag(1)
            ProjectsView()
                .tabItem{
                    VStack{
                        Image(systemName: "rectangle.and.paperclip")
                        Text("Projects")
                    }
            }
            .tag(2)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct TipsView: View {
    var body: some View {
        List{
            TipRow(name: "Wash your recyclables", description: "Items that are dirty cannot be recycled. Please wash your recycleable items. If it's not clean, empty, and dry, do not recycle!")
            TipRow(name: "Seperate your materials", description: "If it containes two or more materials(such as paper and plastic), it is not recyclable.")
            TipRow(name: "Look at the number", description: "The lower the recycling code is, the more recyclable. Typically, recylcing centers are equipped to recycle items with a code of one or two.")
            TipRow(name: "Don't recycle small items", description: "Do not recycle anything smaller than a credit card. Small recyclables can clog the machines.")
            TipRow(name: "Don't put in plastic bags", description: "Do not put plastic bags into your home's recycling. They will clog up the recycling machine. This includes bags that are used to hold other recyclables. Everything in that bag will be considered trash. If you have grocery bags check your local grocery store for a recylcing bin where they can be disposed of.")
        }
    }
}

struct ItemsView: View {
    var body: some View {
        Text("this is items view")
    }
}

struct ProjectsView: View {
    var body: some View {
        List{
            ProjectRow(image: "plasticbagdress", name: "Plastic bag dress", description: "Dress made from plastic bags")
            ProjectRow(image: "candywrapperpencilpouch", name: "Candy wrapper pencil pouch", description: "Pencil pouch made from candy wrappers")
        }
    }
}
