//
//  GRIDViewBootcamp.swift
//  SwiftfulThinkingBootcamp
//
//  Created by Pedro Marcello on 7/28/25.
//

import SwiftUI

struct GRIDViewBootcamp: View {
    var body: some View {
        
        Grid(alignment: .center, horizontalSpacing: 0, verticalSpacing: 8){
            ForEach(0..<4){
                rowIndex in
                GridRow{
                    ForEach(0..<4){
                        columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        
                        if cellNumber == 7{
                            EmptyView()
                        } else{
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridCellAnchor(.trailing)
                                .gridColumnAlignment(
                                    cellNumber == 1 ? .trailing :
                                        cellNumber == 4 ? .leading : .center
                                
                                )
                        }
                    }
                }
            }
        }
        
        
        
        
//        Grid() {
//            GridRow{
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//            
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            GridRow{
//                cell(int: 4)
//                cell(int: 5)
//            }
//        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .frame(height: int == 10 ? 20 : nil)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GRIDViewBootcamp()
}
