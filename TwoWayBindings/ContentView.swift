//
//  ContentView.swift
//  TwoWayBindings
//
//  Created by Jazmine Singh on 9/14/25.
//

import SwiftUI

struct ContentView: View {
    @State private var pressCount = 0
    @State private var toggleIsOn = true
    @State private var name = ""
    @State private var selectedColor: Color = .red
    @State private var selectedDate = Date()
    @State private var stepperValue = 1
    @State private var sliderValue = 50.0
    var body: some View {
        VStack {
            Spacer()
            
            Text("Press count: \(pressCount)")
               
            
            Button("Press Me"){
                pressCount += 1
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
            
            TextField("Enter a name", text: $name)
                .textFieldStyle(.roundedBorder)
            Text("Name Entered: \(name)")
            
            Spacer()
            
            Toggle("Toggle is \(toggleIsOn ? "on" : "off") :" , isOn: $toggleIsOn)
            
            Spacer()
            
            Rectangle()
                .fill(selectedColor)
                .frame(width: 100, height: 100)
            
            ColorPicker("Pick a Color:", selection: $selectedColor)
            Spacer()
            
            DatePicker("Date:", selection: $selectedDate)
            Text("Selected date is: \(selectedDate.formatted(date: .abbreviated, time: .shortened))")
            Spacer()
            
            Stepper("Stepper Value: \(stepperValue)", value: $stepperValue, in: 1...10 )
            
            Spacer()
            Slider(value: $sliderValue, in: 0...10){
                
            } minimumValueLabel: {
                Image(systemName: "speaker.minus")
            } maximumValueLabel: {
                Image(systemName: "speaker.plus")
                
            }
            Text("Slider value: \(Int(sliderValue))%")
            
            Spacer()
    
        }
        .font(.title2)
        .padding()
       
    }
}

#Preview {
    ContentView()
}
