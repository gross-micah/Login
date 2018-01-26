//
//  ViewController.swift
//  Login
//
//  Created by Micah Grossman on 1/24/18.
//  Copyright © 2018 Micah Grossman. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view, typically from a nib.
	}

	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var forgotNameButton: UIButton!
	@IBOutlet weak var forgotPasswordButton: UIButton!
	@IBAction func ForgotNameButtonPressed(_ sender: UIButton) {
		performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotNameButton)
	}
	@IBAction func ForgotPasswordButtonPressed(_ sender: UIButton) {
		performSegue(withIdentifier: "ForgottenUsernameOrPassword", sender: forgotPasswordButton)
	}
	
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		guard let sender = sender as? UIButton else {return}
		if sender == forgotPasswordButton {
			segue.destination.navigationItem.title = "Forgot Password"
		} else if sender == forgotNameButton {
			segue.destination.navigationItem.title = "Forgot Username"
		} else {
			segue.destination.navigationItem.title = textField.text
		}
	}
	
	override func didReceiveMemoryWarning() {
		super.didReceiveMemoryWarning()
		// Dispose of any resources that can be recreated.
	}


}

