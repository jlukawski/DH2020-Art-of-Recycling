//
//  ProjectDetail.swift
//  Art of Recycling
//
//  Created by Jake Lukawski on 10/24/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import SwiftUI

struct ProjectDetail: View {
    var body: some View {
        VStack {
            Button(action: {
                
            }){
                Text("I made it!")
                    .padding()
            }
            WebView(url: "https://www.google.com")
        }
    }
}

struct ProjectDetail_Previews: PreviewProvider {
    static var previews: some View {
        ProjectDetail()
    }
}
