//
//  ViewController.swift
//  hetTesting
//
//  Created by Miras Iskakov on 03.01.2024.
//

import UIKit

class ViewController: UIViewController {

    private let view1 = UIView()
    private let view2 = UIView()
    private let view3 = UIView()
    private let view4 = UIView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .cyan
        view1.backgroundColor = .blue
        view2.backgroundColor = .white
        view3.backgroundColor = .black
        view4.backgroundColor = .orange
        
        view.addSubview(view1)
        view.addSubview(view2)
        
        view1.addSubview(view4)
        view2.addSubview(view3)
        
        view2.clipsToBounds = true
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view3.translatesAutoresizingMaskIntoConstraints = false
        view4.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 100),
            view1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            view1.heightAnchor.constraint(equalToConstant: 300),
            
            view4.topAnchor.constraint(equalTo: view1.topAnchor, constant: 50),
            view4.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -50),
            view4.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 50),
            view4.heightAnchor.constraint(equalToConstant: 150),
            
            view2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -100),
            view2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30),
            view2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            view2.heightAnchor.constraint(equalToConstant: 300),
            
            view3.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -50),
            view3.trailingAnchor.constraint(equalTo: view2.trailingAnchor, constant: 50),
            view3.leadingAnchor.constraint(equalTo: view2.leadingAnchor, constant: -50),
            view3.heightAnchor.constraint(equalToConstant: 150)
        ])
        
        view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(viewTouched(tapGestureRecognizer:))))
        view1.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(view1Touched(tapGestureRecognizer:))))
        view2.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(view2Touched(tapGestureRecognizer:))))
        view3.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(view3Touched(tapGestureRecognizer:))))
        view4.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(view4Touched(tapGestureRecognizer:))))
    }

    @objc func viewTouched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("SuperView touched")
    }
    @objc func view1Touched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("blue touched")
    }
    @objc func view2Touched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("white touched")
    }
    @objc func view3Touched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("black touched")
    }
    @objc func view4Touched(tapGestureRecognizer: UITapGestureRecognizer) {
        print("orange touched")
    }
    
    
}

