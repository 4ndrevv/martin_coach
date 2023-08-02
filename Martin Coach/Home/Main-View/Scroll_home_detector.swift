//
//  Scroll_home_detector.swift
//  Martin Coach
//
//  Created by Pierre DOMINGUEZ on 04/07/2023.
//  Copyright © 2023 Martin Sellier. All rights reserved.
//

import SwiftUI

struct Scroll_home_detector: UIViewRepresentable {
    var onScroll: (CGFloat) -> ()
    
    var onDraggingEnd: (CGFloat, CGFloat) -> ()
    
    func makeCoordinator() -> Coordinator {
        return Coordinator(parent: self)
    }
    
    func makeUIView(context: Context) -> some UIView {
        return UIView()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        DispatchQueue.main.async {
            ///adding delegate for only one time
            if let scrollview = uiView.superview?.superview?.superview as? UIScrollView, !context.coordinator.isDelegateAdded {
                
                ///Adding Delegate
                scrollview.delegate = context.coordinator
                context.coordinator.isDelegateAdded = true
            }
        }
    }
    
    ///Scroll view Delegate methods
    class Coordinator: NSObject, UIScrollViewDelegate {
        var parent: Scroll_home_detector
        
        init(parent: Scroll_home_detector){
            self.parent = parent
        }
        
        ///One time Delegate initialisation
        var isDelegateAdded: Bool = false
        
        func scrollViewDidScroll(_ scrollView: UIScrollView) {
            parent.onScroll(scrollView.contentOffset.y)
        }
        
        func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
            parent.onDraggingEnd(targetContentOffset.pointee.y, velocity.y)
        }
    }
}

