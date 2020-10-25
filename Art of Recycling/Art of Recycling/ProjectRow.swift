//
//  ProjectRow.swift
//  Art of Recycling
//
//  Created by Jake Lukawski on 10/24/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import SwiftUI

struct ProjectRow: View {
    var image: String
    var name: String
    var description: String
    
    var body: some View {
        VStack{
            Image(image).resizable().aspectRatio(contentMode: .fit)
            HStack {
                VStack(alignment: .leading){
                    Text(name)
                        .font(.title)
                    Text(description)
                        .font(.subheadline)
                }
                Spacer()
            }
            .padding()
        }
    }
}

struct ProjectRow_Previews: PreviewProvider {
    static var previews: some View {
        ProjectRow(image: "plasticbagdress", name: "Plastic bag dress", description: "Dress made from plastic bags")
    }
}
