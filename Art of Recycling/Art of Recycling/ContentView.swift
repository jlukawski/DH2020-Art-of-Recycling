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
        NavigationView{
            List{
                TipRow(name: "Wash your recyclables", description: "Items that are dirty cannot be recycled. Please wash your recycleable items. If it's not clean, empty, and dry, do not recycle!")
                TipRow(name: "Seperate your materials", description: "If it containes two or more materials(such as paper and plastic), it is not recyclable.")
                TipRow(name: "Look at the number", description: "The lower the recycling code is, the more recyclable. Typically, recylcing centers are equipped to recycle items with a code of one or two.")
                TipRow(name: "Don't recycle small items", description: "Do not recycle anything smaller than a credit card. Small recyclables can clog the machines.")
                TipRow(name: "Don't put in plastic bags", description: "Do not put plastic bags into your home's recycling. They will clog up the recycling machine. This includes bags that are used to hold other recyclables. Everything in that bag will be considered trash. If you have grocery bags check your local grocery store for a recylcing bin where they can be disposed of.")
            }.navigationBarTitle(Text("Recycling Tips:"))
        }
        
    }
}


struct ProjectsView: View {
    var body: some View {
        NavigationView{
            List(){
                NavigationLink(destination: ProjectDetail(url: "https://www.instructables.com/Dress-from-plastic-bags/")) {
                    ProjectRow(image: "plasticbagdress", name: "Plastic bag dress", description: "Requires 20 to 100 plastic grocery bags")
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination: ProjectDetail(url: "https://www.redtedart.com/simple-bug-hotel-for-kids/")) {
                    ProjectRow(image: "bughotel", name: "Soda Bottle Bug Hotel", description: "Requires 2L soda bottle")
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination: ProjectDetail(url: "https://youtu.be/9zx_QcApUug")) {
                    ProjectRow(image: "hangingplanter", name: "Soda Bottle Hanging Planter", description: "Requires 1 2L soda bottle")
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination: ProjectDetail(url: "http://handsonaswegrow.com/nature-suncatcher-wind-chimes/")) {
                    ProjectRow(image: "windchime", name: "Jar Lid Windchimes", description: "Requires 6 jar lids")
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination: ProjectDetail(url: "https://youtu.be/QgJJ2O_KdMM")) {
                    ProjectRow(image: "birdfeeder", name: "Bird Feeder", description: "Requires 2L soda bottle")
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination: ProjectDetail(url: "https://www.sandytoesandpopsicles.com/craft/back-to-school-homework-caddy-tutorial/")) {
                    ProjectRow(image: "can", name: "Soup Can Organizer", description: "Requires 1 soup can")
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination: ProjectDetail(url: "https://adirondackgirlatheart.com/coke-bottle-terrariu/")) {
                    ProjectRow(image: "terrarium", name: "Terrarium", description: "Requires 2L soda bottle")
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination: ProjectDetail(url: "https://youtu.be/fHrRdx0W-Vc")) {
                    ProjectRow(image: "selfwatering", name: "Self-watering Planter", description: "Requires 20oz soda bottle")
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination: ProjectDetail(url: "https://www.youtube.com/watch?v=0kT_ouO_mM0")) {
                    ProjectRow(image: "bottlelights", name: "Bottle lights", description: "Requires 3 glass bottles")
                }.buttonStyle(PlainButtonStyle())
                NavigationLink(destination: ProjectDetail(url: "https://www.boredpanda.com/creative-diy-project-ideas/?utm_source=google&utm_medium=organic&utm_campaign=organic")) {
                    ProjectRow(image: "broom", name: "Plastic broom", description: "Requires 2L soda bottle")
                }.buttonStyle(PlainButtonStyle())
            }.navigationBarTitle(Text("Art Projects"), displayMode: .inline)
        }
    }
    
}
