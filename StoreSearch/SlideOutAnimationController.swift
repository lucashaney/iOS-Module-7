//
//  SlideOutAnimationController.swift
//  StoreSearch
//
//  Created by Lucas Haney on 2/27/21.
//

import UIKit

class SlideOutAnimationController: NSObject, UIViewControllerAnimatedTransitioning {
    
    // Determines how long animation is
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    // Performs animation
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        if let fromView = transitionContext.view(forKey: UITransitionContextViewKey.from) {
            let containerView = transitionContext.containerView
            let time = transitionDuration(using: transitionContext)
            UIView.animate(withDuration: time, animations: {
                fromView.center.y -= containerView.bounds.size.height
                fromView.transform = CGAffineTransform(scaleX: 0.5, y: 0.5)
            }, completion: { finished in
                transitionContext.completeTransition(finished)
            })
        }
    }
}
