//
//  DecimalPickerpla.swift
//  ChemoBuddy
//
//  Created by Rodney Aiglstorfer on 9/22/22.
//

import SwiftUI

private func uncombine(_ value: String) -> (wholeNumber: Int, decimalNumber: Int) {
    let parts = value.split(separator: ".")
    let wholeNumber = parts[0] as NSString
    let decimalNumber = parts[1] as NSString
    return (wholeNumber: wholeNumber.integerValue, decimalNumber: decimalNumber.integerValue)
}

/// An internal function that will produce a float value that is the combination of a
/// wholenumber and a decimal number from the picker
private func combine(_ wholeNumber: Int, _ decimalNumber: Int) -> Decimal {
    return Decimal(string: "\(wholeNumber).\(decimalNumber)")!
}

struct DecimalPickerView : View {
    @State var value: Decimal = Decimal(125.3)
    var body: some View {
        VStack {
            Spacer()
            Text(value.description)
                .font(.largeTitle)
                .fontWeight(.heavy)
            DecimalPicker($value)
                .frame(height: 200)
            Spacer()
        }.onChange(of: value) { newVal in
            print(">>> onChange(value) -> \(newVal)")
        }
    }
}

struct DecimalPicker: View {
    /// A binding to a variable that will hold the result of the picker
    @Binding var value: Decimal
    /// The internat state for the whole number portion of the picker
    @State private var wholeNumber: Int
    /// The internat state for the decimal portion of the picker
    @State private var decimalNumber: Int
    /// The range of whole numbers than can be picked from
    var wholeNumbers: [Int]
    /// The range of decimal values that can be picked from
    var decimalValues = [Int](0...9)
    
    init(_ value: Binding<Decimal>, lowerLimit: Int = 60, upperLimit: Int = 400) {
        self._value = value
        self.wholeNumbers = [Int](lowerLimit...upperLimit)
        
        let parts = uncombine("\(value)")
        self.wholeNumber = parts.wholeNumber
        self.decimalNumber = parts.decimalNumber
    }
    
    var body: some View {
        VStack {
            GeometryReader { geometry in
                HStack(spacing: 5) {
                    Spacer()
                    picker(value: $wholeNumber, range: self.wholeNumbers, geometry: geometry)
                    
                    picker(value: $decimalNumber, range: self.decimalValues, prefix: ".",suffix: "kg", geometry: geometry)
                    Spacer()
                }
            }
        }.onChange(of: wholeNumber) { newNumber in
            let newVal = combine(newNumber, self.decimalNumber)
            print(">> onChange(wholeNumber) -> \(newVal)")
            value = newVal
            print(">> value -> \(value)")
        }.onChange(of: decimalNumber) { newNumber in
            let newVal = combine(self.wholeNumber, newNumber)
            print(">> onChange(decimalNumber) -> \(newVal)")
            value = newVal
            print(">> value -> \(value)")
        }
    }
    
    @ViewBuilder func picker(value: Binding<Int>, range: [Int], prefix: String = "", suffix: String = "", geometry: GeometryProxy) -> some View{
        Picker(selection: value, label: Text("")) {
            ForEach(0 ..< range.count, id: \.self) { index in
                Text("\(prefix)\(range[index]) \(suffix)").tag(range[index])
                    .scaleEffect(x: 3)
            }
        }
        .pickerStyle(.inline)
        .scaleEffect(x: 0.333)
        .frame(width: geometry.size.width/4, alignment: .center)
//        .compositingGroup()
//        .clipped()
    }
}

struct DecimalPicker_Previews: PreviewProvider {
    static var previews: some View {
        DecimalPickerView()
    }
}
