//
//  ButtonExtension.swift
//  dadle
//
//  Created by Whiskey on 2022/09/29.
//

import SwiftUI

extension EdgeInsets {
  var horizontalInsets: CGFloat { self.trailing + self.leading }
  var verticalInsets: CGFloat { self.top + self.bottom }
  var left: CGFloat { self.leading }
  var right: CGFloat { self.trailing }
  
  static func with(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) -> EdgeInsets {
    EdgeInsets(top: top, leading: left, bottom: bottom, trailing: right)
  }
  
  static func horizontal(_ horizontal: CGFloat, top: CGFloat = 0, bottom: CGFloat = 0) -> UIEdgeInsets {
    UIEdgeInsets(
      top: top,
      left: horizontal,
      bottom: bottom,
      right: horizontal
    )
  }
  
  static func vertical(_ vertical: CGFloat, left: CGFloat = 0, right: CGFloat = 0) -> UIEdgeInsets {
    UIEdgeInsets(
      top: vertical,
      left: left,
      bottom: vertical,
      right: right
    )
  }
  
  init(_ all: CGFloat) {
    self = EdgeInsets(top: all, leading: all, bottom: all, trailing: all)
  }
  
  init(top: CGFloat = 0, left: CGFloat = 0, bottom: CGFloat = 0, right: CGFloat = 0) {
    self = EdgeInsets(top: top, leading: left, bottom: bottom, trailing: right)
  }
  
  init(horizontal: CGFloat = 0, vertical: CGFloat = 0) {
    self = EdgeInsets(top: vertical, leading: horizontal, bottom: vertical, trailing: horizontal)
  }
  
  func with(left: CGFloat? = nil, right: CGFloat? = nil, top: CGFloat? = nil, bottom: CGFloat? = nil) -> UIEdgeInsets {
    UIEdgeInsets(
      top: top ?? self.top,
      left: left ?? self.left,
      bottom: bottom ?? self.bottom,
      right: right ?? self.right
    )
  }
  
  func with(horizontal: CGFloat, top: CGFloat? = nil, bottom: CGFloat? = nil) -> UIEdgeInsets {
    UIEdgeInsets(
      top: top ?? self.top,
      left: horizontal,
      bottom: bottom ?? self.bottom,
      right: horizontal
    )
  }
  
  func with(vertical: CGFloat, left: CGFloat? = nil, right: CGFloat? = nil) -> UIEdgeInsets {
    UIEdgeInsets(
      top: vertical,
      left: left ?? self.left,
      bottom: vertical,
      right: right ?? self.right
    )
  }
}

struct ScaleButton: ButtonStyle {
    var labelColor = Color.white
    var backgroundColor = Color.blue
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration.label
            .foregroundColor(labelColor)
            .padding(.init(horizontal: 100, vertical: 13))
//            .frame(width: 200, height: 200)
            .background(backgroundColor)
            .cornerRadius(10)
    }
}

struct ButtonExtension: View {
    var body: some View {
        Button("Inset Button") {
            print("tap Button")
        }
        .buttonStyle(ScaleButton(labelColor: .white, backgroundColor: .black))
    }
}

struct ButtonExtension_Previews: PreviewProvider {
    static var previews: some View {
        ButtonExtension()
    }
}
