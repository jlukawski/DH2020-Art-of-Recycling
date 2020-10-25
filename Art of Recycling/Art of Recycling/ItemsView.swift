//
//  ItemsView.swift
//  Art of Recycling
//
//  Created by Jake Lukawski on 10/24/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import SwiftUI

struct ItemsView: View {
    @State private var projecttotal = 0
    @State private var twolbottle = 0
    @State private var tops = 0
    @State private var cans = 0
    
    
    var body: some View {

        VStack {
            Text("Completed projects: \(projecttotal)")
            HStack {
                Text("2L Bottles: \(tops)")
                Text("Soda tops: \(tops)")
                Text("Can: \(cans)")
            }
            HStack {
                Text("20oz bottle: \(tops)")
                Text("Wine: \(tops)")
                Text("Lotion: \(cans)")
            }
            Spacer()
            HStack {
                VStack {
                    Image("placeholder").resizable().frame(width: 60.0, height: 60.0)
                    Text("2L bottle")
                    Stepper("hi",value: $twolbottle, in: 0...130).labelsHidden()
                }
                VStack {
                    Image("placeholder").resizable().frame(width: 60.0, height: 60.0)
                    Text("Soda tops")
                    Stepper("hi",value: $tops, in: 0...130).labelsHidden()
                }
                VStack {
                    Image("placeholder").resizable().frame(width: 60.0, height: 60.0)
                    Text("Can")
                    Stepper("hi",value: $tops, in: 0...130).labelsHidden()
                }
            }
            
            HStack {
                VStack {
                    Image("placeholder").resizable().frame(width: 60.0, height: 60.0)
                    Text("20oz bottle ")
                    Stepper("hi",value: $tops, in: 0...130).labelsHidden()
                }
                VStack {
                    Image("placeholder").resizable().frame(width: 60.0, height: 60.0)
                    Text("Wine bottle")
                    Stepper("hi",value: $tops, in: 0...130).labelsHidden()
                }
                VStack {
                    Image("placeholder").resizable().frame(width: 60.0, height: 60.0)
                    Text("Lotion bottle")
                    Stepper("hi",value: $tops, in: 0...130).labelsHidden()
                }
            }
        }
    .padding()
    }
}

struct ItemsView_Previews: PreviewProvider {
    static var previews: some View {
        ItemsView()
    }
}
