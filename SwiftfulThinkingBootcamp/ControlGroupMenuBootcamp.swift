//
//  ControlGroupMenuBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/28/25.
//

import SwiftUI

struct ControlGroupMenuBootcamp: View {
    var body: some View {
        Menu("My Menu"){
            
            ControlGroup("One"){
                Button("Uno"){
                    
                }
                Button("Dos"){
                    
                }
                Menu("How Are you?"){
                    Button("Good"){
                        
                    }
                    Button("Ok"){
                        
                    }
                }

            }
            Button("Two"){
                
            }
            
            
        }
    }
}

#Preview {
    ControlGroupMenuBootcamp()
}
