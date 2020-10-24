//
//  TipRow.swift
//  Art of Recycling
//
//  Created by Jake Lukawski on 10/24/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import SwiftUI

struct TipRow: View {
    var name: String
    var description: String
    
    var body: some View {
            HStack {
                VStack(alignment: .leading){
                    Text(name)
                        .font(.title)
                    Text(description)
                }
                Spacer()
            }
            .padding()
    }
}

struct TipRow_Previews: PreviewProvider {
    static var previews: some View {
        TipRow(name: "Wash your recyclables", description: "Items that are dirty cannot be recycled. Please wash your recycleable items.")
    }
}
