//
//  ConvertNinjaNameViewController.swift
//  ninjaname
//
//  Created by Chi on 4/15/2559 BE.
//  Copyright (c) 2559 Chi. All rights reserved.
//
//  This file was generated by the Clean Swift Xcode Templates so you can apply
//  clean architecture to your iOS and Mac projects, see http://clean-swift.com
//

import UIKit

protocol ConvertNinjaNameViewControllerInput
{
  func displaySomething(viewModel: ConvertNinjaNameViewModel)
}

protocol ConvertNinjaNameViewControllerOutput
{
  func doSomething(request: ConvertNinjaNameRequest)
}

class ConvertNinjaNameViewController: UIViewController, ConvertNinjaNameViewControllerInput
{
  var output: ConvertNinjaNameViewControllerOutput!
  var router: ConvertNinjaNameRouter!
  
  // MARK: Object lifecycle
  
  override func awakeFromNib()
  {
    super.awakeFromNib()
    ConvertNinjaNameConfigurator.sharedInstance.configure(self)
  }
  
  // MARK: View lifecycle
  
  override func viewDidLoad()
  {
    super.viewDidLoad()
    doSomethingOnLoad()
  }
  
  // MARK: Event handling
  
  func doSomethingOnLoad()
  {
    // NOTE: Ask the Interactor to do some work
    
    let request = ConvertNinjaNameRequest()
    output.doSomething(request)
  }
  
  // MARK: Display logic
  
  func displaySomething(viewModel: ConvertNinjaNameViewModel)
  {
    // NOTE: Display the result from the Presenter
    
    // nameTextField.text = viewModel.name
  }
}
