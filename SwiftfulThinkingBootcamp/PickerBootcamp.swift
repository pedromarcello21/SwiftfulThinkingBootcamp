//
//  PickerBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 1/30/25.
//

import SwiftUI

struct PickerBootcamp: View {
    
    @State var selection: String = "Most Recent"
    let filterOptions: [String] = [
        "Most Recent", "Most Popular", "Most Liked"
    ]
    
    init() {
        UISegmentedControl.appearance().selectedSegmentTintColor = UIColor.red
        
        let attributes: [NSAttributedString.Key:Any] = [
            .foregroundColor : UIColor.white
        ]
        
        UISegmentedControl.appearance().setTitleTextAttributes(attributes, for: .selected)
    }
    
    var body: some View {
        VStack {
            HStack{
                Text("Filter:")
                Text(selection)
            }
            Picker(
                selection: $selection,
                label: HStack{
                    Text("Picker:")
                    Text(selection)
                }
                    .padding()
                    .foregroundColor(.white)
                    .background(Color.blue)
                ,
                content: {
                    //can also do filterOptions.indices, index in filterOptions[index] type ish
                    ForEach(filterOptions, id: \.self) {
                        option in Text(option)
                            .tag(option)
                    }
                })
            //MenupickerStyle(), wheelpickerstyle()
            .pickerStyle(SegmentedPickerStyle())
        }

    }
}

#Preview {
    PickerBootcamp()
}
