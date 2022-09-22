//
//  HStackStudy.swift
//  SwiftJourney
//
//  Created by Rodney Aiglstorfer on 9/21/22.
//

import SwiftUI

struct HStackStudy: View {
    var body: some View {
        VStack(spacing: 5) {
            Text("These are examples of how to use the HStack to build a more complex layout.")

            Text("Left Align")
                .font(.title)
            itemLeft("Activity Log", icon: "house")
            itemLeft("Reports", icon: "chart.xyaxis.line")
            itemLeft("Notes", icon: "note.text")

            Text("Right Align")
                .font(.title)
            itemRight("Activity Log", icon: "house")
            itemRight("Reports", icon: "chart.xyaxis.line")
            itemRight("Notes", icon: "note.text")
            Spacer()
        }
        .navigationTitle("HStack Study")
        
    }
    
    func itemLeft(_ title: String, icon: String) -> some View {
        HStack(spacing: 5) {
            Image(systemName: icon)
                .frame(width: 30, height: 30)
            
            Text(title)
                .frame(minWidth: 150, alignment: .leading)
            Spacer()
        }
    }
    
    func itemRight(_ title: String, icon: String) -> some View {
        HStack(spacing: 5) {
            Spacer()
            Image(systemName: icon)
                .frame(width: 30, height: 30)
            
            Text(title)
                .frame(minWidth: 150, alignment: .leading)
        }
    }
}

struct HStackStudy_Previews: PreviewProvider {
    static var previews: some View {
        HStackStudy()
    }
}
