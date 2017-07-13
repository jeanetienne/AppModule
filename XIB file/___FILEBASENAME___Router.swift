//  ___FILEHEADER___

import UIKit

class ___FILEBASENAMEASIDENTIFIER___ {

    weak var view: ___VARIABLE_productName:identifier___View!
    let completionHandler: ModuleCompletionHandler?

    init(_ aView: ___VARIABLE_productName:identifier___View, _ aCompletionHandler: ModuleCompletionHandler? = nil) {
        view = aView
        completionHandler = aCompletionHandler
    }

    static func entryPoint(_ completionHandler: ModuleCompletionHandler? = nil) -> UIViewController {
        let view = ___VARIABLE_productName:identifier___View(nibName: nil, bundle: nil)
        let router = ___VARIABLE_productName:identifier___Router(view, completionHandler)
        let controller = ___VARIABLE_productName:identifier___Controller(view, router)
        view.controller = controller

        return view
    }

    func dismissModule() {
        completionHandler?(view)
    }

}
