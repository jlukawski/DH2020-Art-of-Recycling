//
//  ProjectDetail.swift
//  Art of Recycling
//
//  Created by Jake Lukawski on 10/24/20.
//  Copyright © 2020 Jake Lukawski. All rights reserved.
//

import SwiftUI


struct ProjectDetail: View {
    var url: String
    var body: some View {
        VStack {
            WebView(url: url)
        }.navigationBarItems(trailing: Button(action: {}, label: {Text("I made it!")}))
        
    }
}

struct ProjectDetail_Previews: PreviewProvider {
    @Binding var projectcount: Int
    static var previews: some View {
        ProjectDetail(url: "https://www.google.com")
    }
}


//self.projectcount += 1
