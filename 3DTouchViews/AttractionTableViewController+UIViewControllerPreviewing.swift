//
//  AttractionTableViewController+UIViewControllerPreviewing.swift
//  3DTouchViews
//
//  Created by Jacob Burke on 11/13/17.
//  Copyright © 2017 Jacob Burke. All rights reserved.
//

import UIKit

extension AttractionTableViewController:

UIViewControllerPreviewingDelegate {
    
    func previewingContext(_ previewingContext: UIViewControllerPreviewing, viewControllerForLocation location: CGPoint) -> UIViewController? {
       
        guard let indexPath = tableView.indexPathForRow(at: location),
            let cell  = tableView.cellForRow(at: indexPath) else {
                return nil }
        
        guard let detailViewController =
                storyboard?.instantiateViewController(
                    withIdentifier: "AttractionDetailViewController") as?
            AttractionDetailViewController else { return nil }
        
        detailViewController.webSite = webAddresses[indexPath.row]
        detailViewController.preferredContentSize =
            CGSize(width: 0.0, height: 600)
    
        
        previewingContext.sourceRect = cell.frame
        
        return detailViewController
        
        
        }

    func previewingContext(_ previewingContext: UIViewControllerPreviewing, commit viewControllerToCommit: UIViewController) {
        show(viewControllerToCommit, sender: self)
    }
    
  }


    

    
    

