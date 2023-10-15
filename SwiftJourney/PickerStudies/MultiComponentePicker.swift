//
//  MultiComponentePicker.swift
//  SwiftJourney
//
//  Created by Rodney Aiglstorfer on 10/2/22.
//

import SwiftUI

struct MultiComponentePicker: View {
    @State var daySelection = 0
    @State var hourSelection = 0
    @State var minuteSelection = 0
    
    var days = [Int](0..<30)
    var hours = [Int](0..<24)
    var minutes = [Int](0..<60)
    var body: some View {
        VStack {
            Spacer()
            Text("\(daySelection)d \(hourSelection)h \(minuteSelection)m")
                .font(.largeTitle)
                .fontWeight(.heavy)
            picker
                .frame(height: 200)
            Spacer()
        }
    }
    
    var picker: some View {
        GeometryReader { geometry in
            HStack(spacing: 0) {
                Spacer()
                Picker(selection: self.$daySelection, label: Text("")) {
                    ForEach(0 ..< self.days.count, id: \.self) { index in
                        Text("\(self.days[index]) d").tag(index)
                            .scaleEffect(x: 3)
                    }
                }
                .pickerStyle(.wheel)
                .frame(width: geometry.size.width/4, height: geometry.size.height, alignment: .center)
                .scaleEffect(x: 0.333)
                .compositingGroup()
                .clipped()
                
                Picker(selection: self.$hourSelection, label: Text("")) {
                    ForEach(0 ..< self.hours.count, id: \.self) { index in
                        Text("\(self.hours[index]) h").tag(index)
                            .scaleEffect(x: 3)
                    }
                }
                .pickerStyle(.wheel)
                .frame(width: geometry.size.width/4, height: geometry.size.height, alignment: .center)
                .scaleEffect(x: 0.333)
                .compositingGroup()
                .clipped()
                
                Picker(selection: self.$minuteSelection, label: Text("")) {
                    ForEach(0 ..< self.minutes.count, id: \.self) { index in
                        Text("\(self.minutes[index]) m").tag(index)
                            .scaleEffect(x: 3)
                    }
                }
                .pickerStyle(.wheel)
                .scaleEffect(x: 0.333)
                .frame(width: geometry.size.width/4, height: geometry.size.height, alignment: .center)
                .compositingGroup()
                .clipped()
                Spacer()
            }
        }
    }
}

struct MultiComponentePicker_Previews: PreviewProvider {
    static var previews: some View {
        MultiComponentePicker()
    }
}
