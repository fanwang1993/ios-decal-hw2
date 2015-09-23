//
//  KeyboardViewController.swift
//  CalKeyboard
//
//  Created by Gene Yoo on 9/15/15.
//  Copyright © 2015 iOS Decal. All rights reserved.
//

import UIKit

class KeyboardViewController: UIInputViewController {

    @IBOutlet var nextKeyboardButton: UIButton!
    
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBOutlet weak var returnButton: UIButton!
    
    @IBOutlet weak var stringWButton: UIButton!
    @IBOutlet weak var stringAButton: UIButton!
    @IBOutlet weak var stringNButton: UIButton!
    @IBOutlet weak var stringGButton: UIButton!
    @IBOutlet weak var stringFButton: UIButton!
    @IBOutlet weak var stringYButton: UIButton!
    @IBOutlet weak var stringXButton: UIButton!
    @IBOutlet weak var stringIButton: UIButton!
    @IBOutlet weak var stringUButton: UIButton!
    @IBOutlet weak var stringCButton: UIButton!
    
    var keyboardView: UIView!

    override func updateViewConstraints() {
        super.updateViewConstraints()
    
        // Add custom view sizing constraints here
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        loadInterface()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated
    }

    override func textWillChange(textInput: UITextInput?) {
        // The app is about to change the document's contents. Perform any preparation here.
    }

    override func textDidChange(textInput: UITextInput?) {
        // The app has just changed the document's contents, the document context has been updated.
    }

    func loadInterface() {
        let keyboardNib = UINib(nibName: "Keyboard", bundle: nil)
        keyboardView = keyboardNib.instantiateWithOwner(self, options: nil)[0] as! UIView
        keyboardView.frame = view.frame
        view.addSubview(keyboardView)
        view.backgroundColor = keyboardView.backgroundColor
        nextKeyboardButton.addTarget(self, action: "advanceToNextInputMode", forControlEvents: .TouchUpInside) // advanceToNextInputMode is already defined in template
        deleteButton.addTarget(self, action: "didTapDelete", forControlEvents: .TouchUpInside)
        
        returnButton.addTarget(self, action: "didTapReturn", forControlEvents: .TouchUpInside)
        
        stringWButton.addTarget(self, action: "didTapW", forControlEvents: .TouchUpInside)
        
        stringAButton.addTarget(self, action: "didTapA", forControlEvents: .TouchUpInside)
        
        stringNButton.addTarget(self, action: "didTapN", forControlEvents: .TouchUpInside)
        
        stringGButton.addTarget(self, action: "didTapG", forControlEvents: .TouchUpInside)
        
        stringFButton.addTarget(self, action: "didTapF", forControlEvents: .TouchUpInside)
        
        stringYButton.addTarget(self, action: "didTapY", forControlEvents: .TouchUpInside)
        
        stringXButton.addTarget(self, action: "didTapX", forControlEvents: .TouchUpInside)
        
        stringIButton.addTarget(self, action: "didTapI", forControlEvents: .TouchUpInside)
        
        stringUButton.addTarget(self, action: "didTapU", forControlEvents: .TouchUpInside)
        
        stringCButton.addTarget(self, action: "didTapC", forControlEvents: .TouchUpInside)
    }
    
    func didTapDelete() {
        let proxy = textDocumentProxy as UITextDocumentProxy
        proxy.deleteBackward()
    }
    
    func didTapReturn() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("\n")
    }
    
    func didTapW() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("W")
    }
    
    func didTapA() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("A")
    }
    
    func didTapN() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("N")
    }
    
    func didTapG() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("G")
    }
    
    func didTapF() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("F")
    }
    
    func didTapY() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("Y")
    }
    
    func didTapI() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("I")
    }
    
    func didTapX() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("X")
    }
    
    func didTapU() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("U")
    }
    
    func didTapC() {
        var proxy = textDocumentProxy as UITextDocumentProxy
        proxy.insertText("C")
    }
}
