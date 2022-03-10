//
//  ViewController.swift
//  Navigation Bar custom Design
//
//  Created by TNC on 10/03/2022.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .purple
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 50))
        view.addSubview(button)
        button.center = view.center
        button.backgroundColor = .systemBlue
        button.setTitle("second view", for: .normal)
        button.addTarget(self, action: #selector(didTapButton), for: .touchUpInside)
        
        
        navigationController?.navigationBar.tintColor = .label
        
        configurationitems()
        
    }
    private func configurationitems(){
        navigationItem.rightBarButtonItems = [
            UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(didTapButton)),
                            UIBarButtonItem(barButtonSystemItem: .camera, target: self, action: nil)
        ]
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(
            image: UIImage(systemName: "gear"),
                                                           style: .done,
                                                           target: self,
            action: #selector(didTapButtonview3))
//
        
//        let customView = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 40))
//        customView.text = "Hello"
//        customView.textAlignment = .center
//        customView.backgroundColor = .orange
//        customView.layer.cornerRadius = 8.0
//        customView.layer.masksToBounds = true
//
//        navigationItem.leftBarButtonItem = UIBarButtonItem(customView:  customView)
        
        
    }
    
    @objc func didTapButton(){
        
        
        let vc = UIViewController()
        vc.title = "view 2"
        vc.view.backgroundColor = .systemBrown
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "sign out", style: .plain, target: self, action: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    @objc func didTapButtonview3(){
        
        
        let vc = UIViewController()
        vc.title = "view third"
        vc.view.backgroundColor = .systemCyan
        vc.navigationItem.rightBarButtonItem = UIBarButtonItem(title: "log In", style: .plain, target: self, action: nil)
        navigationController?.pushViewController(vc, animated: true)
        
    }

}

