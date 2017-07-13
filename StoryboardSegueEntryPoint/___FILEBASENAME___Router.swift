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
        let view = ___VARIABLE_productName:identifier___View.loadFromStoryboard() as! ___VARIABLE_productName:identifier___View
        let router = ___VARIABLE_productName:identifier___Router(view, completionHandler)
        let controller = ___VARIABLE_productName:identifier___Controller(view, router)
        view.controller = controller

        return view
    }

    static func controller(forView view: ___VARIABLE_productName:identifier___View, completionHandler: ModuleCompletionHandler? = nil) -> ___VARIABLE_productName:identifier___Controller {
        let router = ___VARIABLE_productName:identifier___Router(view, completionHandler)
        let controller = ___VARIABLE_productName:identifier___Controller(view, router)

        return controller
    }

    /*
    // Add these snippets in the view of the presenting module
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let view = segue.destination as? ___VARIABLE_productName:identifier___View {
            view.controller = ___VARIABLE_productName:identifier___Router.controller(forView: view)
        }
    }

    @IBAction func unwindFrom___VARIABLE_productName:identifier___ToModuleFooBar(segue: UIStoryboardSegue) {
        if let _ = segue.source as? ___VARIABLE_productName:identifier___View {
            // Do additional customization here
        }
    }
    */

    func dismissModule() {
        completionHandler?(view)
    }

}
