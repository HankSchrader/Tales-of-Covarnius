//
//  ChapterSelectViewControllerDelegate.swift
//  Pilot
//
//  Created by Erik Mikac on 6/18/18.
//  Copyright © 2018 Erik Mikac. All rights reserved.
//

import UIKit

@objc
protocol ChapterViewControllerDelegate {
    @objc optional func toggleTableOfContents()
    @objc optional func collapseSidePanels()
}
