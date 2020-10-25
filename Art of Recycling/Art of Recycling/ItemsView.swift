//
//  ItemsView.swift
//  Art of Recycling
//
//  Created by Jake Lukawski on 10/24/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import SwiftUI

struct ItemsView: View {
    @State private var twolbottle = UserDefaults.standard.integer(forKey: "twolbottle")
    @State private var tops = UserDefaults.standard.integer(forKey: "tops")
    @State private var cans = UserDefaults.standard.integer(forKey: "cans")
    @State private var plasticspoon = UserDefaults.standard.integer(forKey: "plasticspoon")
    @State private var cardboard = UserDefaults.standard.integer(forKey: "cardboard")
    @State private var jars = UserDefaults.standard.integer(forKey: "jars")
    @State private var twentyozbottle = UserDefaults.standard.integer(forKey: "twentyozbottle")
    @State private var wine = UserDefaults.standard.integer(forKey: "wine")
    @State private var lotion = UserDefaults.standard.integer(forKey: "lotion")
    
    
    var body: some View {
        VStack {
            HStack {
                VStack {
                    Image("2liter").resizable().frame(width: 60.0, height: 60.0)
                    Text("2L bottle")
                    Text("\(twolbottle)")
                    Stepper("hi",value: $twolbottle, in: 0...130){_ in 
                    UserDefaults.standard.set(self.twolbottle, forKey: "twolbottle")
                    }.labelsHidden()
                }
                VStack {
                    Image("poptab_icon").resizable().frame(width: 60.0, height: 60.0)
                    Text("Soda top")
                    Text("\(tops)")
                    Stepper("hi",value: $tops, in: 0...130){_ in
                    UserDefaults.standard.set(self.twolbottle, forKey: "tops")
                    }.labelsHidden()
                }
                VStack {
                    Image("can2").resizable().frame(width: 60.0, height: 60.0)
                    Text("Can")
                    Text("\(cans)")
                    Stepper("hi",value: $cans, in: 0...130){_ in
                    UserDefaults.standard.set(self.twolbottle, forKey: "cans")
                    }.labelsHidden()
                }
            }.padding()
            HStack {
                VStack {
                    Image("spoon").resizable().frame(width: 60.0, height: 60.0)
                    Text("Plastic spoon")
                    Text("\(plasticspoon)")
                    Stepper("hi",value: $plasticspoon, in: 0...130){_ in
                    UserDefaults.standard.set(self.twolbottle, forKey: "plasticspoon")
                    }.labelsHidden()
                }
                VStack {
                    Image("jar").resizable().frame(width: 60.0, height: 60.0)
                    Text("Jars")
                    Text("\(jars)")
                    Stepper("hi",value: $jars, in: 0...130){_ in
                    UserDefaults.standard.set(self.twolbottle, forKey: "jars")
                    }.labelsHidden()
                }
                VStack {
                    Image("cardboard").resizable().frame(width: 60.0, height: 60.0)
                    Text("Cardboard")
                    Text("\(cardboard)")
                    Stepper("hi",value: $cardboard, in: 0...130){_ in
                    UserDefaults.standard.set(self.twolbottle, forKey: "cardboard")
                    }.labelsHidden()
                }
            }
            
            HStack {
                VStack {
                    Image("20oz").resizable().frame(width: 60.0, height: 60.0)
                    Text("20oz bottle ")
                    Text("\(twentyozbottle)")
                    Stepper("hi",value: $twentyozbottle, in: 0...130){_ in
                    UserDefaults.standard.set(self.twolbottle, forKey: "twentyozbottle")
                    }.labelsHidden()
                }
                VStack {
                    Image("wine").resizable().frame(width: 60.0, height: 60.0)
                    Text("Wine bottle")
                    Text("\(wine)")
                    Stepper("hi",value: $wine, in: 0...130){_ in
                    UserDefaults.standard.set(self.twolbottle, forKey: "wine")
                    }.labelsHidden()
                }
                VStack {
                    Image("lotion").resizable().frame(width: 60.0, height: 60.0)
                    Text("Lotion bottle")
                    Text("\(lotion)")
                    Stepper("hi",value: $lotion, in: 0...130){_ in
                    UserDefaults.standard.set(self.twolbottle, forKey: "lotion")
                    }.labelsHidden()
                }
            }.padding()
        }
    .padding()
    }
}

struct ItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsView()
    }
}
