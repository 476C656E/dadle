//
//  MBTIButtonView.swift
//  dadle
//
//  Created by 강민규 on 2022/10/19.
//

import SwiftUI

struct MBTIButtonView: View {
    
    @Binding var index : Int
    
    var body: some View {
        HStack{
            Spacer()
            Button {
                increaseIdx()
            } label: {
                Text("1")
            }
            Spacer()
            Button {
                increaseIdx()
            } label: {
                Text("2")
            }
            Spacer()
        }
    }
    
    func increaseIdx(){
        let maxIndex = 4
        
        if index >= maxIndex - 1 {
            index = 0
        } else {
            index += 1
        }
    }
}

struct MBTIButtonView_Previews: PreviewProvider {
    static var previews: some View {
        MBTIButtonView(index: .constant(0))
    }
}
