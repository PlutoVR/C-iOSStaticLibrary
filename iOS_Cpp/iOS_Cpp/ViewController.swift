//
//  ViewController.swift
//  iOS_Cpp
//
//  Created by Tobin on 3/22/20.
//  Copyright © 2020 Tobin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()

	}

	@IBAction func onPress(_ sender: Any) {
		let num = getPetAge()
		print(num)
	}

}

