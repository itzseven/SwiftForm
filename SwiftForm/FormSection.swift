//
//  FormSection.swift
//  SwiftForm
//
//  Copyright © 2019 itzseven. All rights reserved.
//

import Foundation

protocol FormSection {
  var items: [FormItem] { get }
  
  var isHidden: Bool { get set }
}

class BaseFormSection: FormSection {
  private var _items: [FormItem] = []
  
  var items: [FormItem] {
    get {
      return _items.filter { !$0.isHidden }
    }
    
    set {
      _items = newValue
    }
  }
  
  var isHidden: Bool = false
}
