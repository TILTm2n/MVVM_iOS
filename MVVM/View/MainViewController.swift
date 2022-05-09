//
//  View.swift
//  MVVM
//
//  Created by Eugene on 07.05.2022.
//

import UIKit



//class MainViewController: UIViewController {
//
//    var viewModel: ViewModelProtocol! {
//        didSet{
//            self.viewModel.greetingDidChange = { [unowned self] viewModel in
//                self.greetingLabel.text = viewModel.greeting
//
//            }
//        }
//    }
//
//    let showGreetingButton = UIButton()
//    let greetingLabel = UILabel()
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        self.showGreetingButton.addTarget(self.viewModel, action: #selector(someMethod), for: .touchUpInside)
//    }
//
//    @objc func someMethod(){
//
//    }
//
//    /*
//    // MARK: - Navigation
//
//    // In a storyboard-based application, you will often want to do a little preparation before navigation
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        // Get the new view controller using segue.destination.
//        // Pass the selected object to the new view controller.
//    }
//    */
//
//}
