//
//  ViewController.swift
//  hW2.8
//
//  Created by Алексей Трофимов on 20.11.2021.
//


import Spring

class ViewController: UIViewController {

    @IBOutlet var colorView: SpringView!
    @IBOutlet var animationName: UIButton!
    @IBOutlet var nameAnimationLabel: UILabel!
    
    var animation = Animation.names.shuffled()
    
    override func viewDidLoad() {
        animationName.setTitle(animation.first, for: .normal)
        super.viewDidLoad()
    }
    var i = 0
    @IBAction func nextButton(_ sender: UIButton) {
        guard i < animation.count  else { return }
        if i < animation.count - 1 {
            animationName.setTitle(animation[i + 1], for: .normal)
        } else {
            animationName.setTitle("End", for: .normal)
        }
        nameAnimationLabel.text = animation[i]
        colorView.animation = animation[i]
        colorView.animate()
    i += 1
        }
      
}
        

  
    


//extension UIButton {
//    func pulsate() {
//     let pulse = CASpringAnimation(keyPath: "transform.scale")
//        pulse.fromValue = 0.9
//        pulse.toValue = 1
//        pulse.duration = 0.3
//        pulse.autoreverses = true
//        pulse.repeatCount = 2
//        layer.add(pulse, forKey: nil)
//    }
//}
