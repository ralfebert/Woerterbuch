// © 2019 Ralf Ebert — iOS Beispielprojekt: Woerterbuch
// License: https://opensource.org/licenses/MIT

import UIKit

class ImageViewController: UIViewController {

    // MARK: - State

    var word: Word? {
        didSet {
            self.updateView()
        }
    }

    // MARK: - Outlets

    @IBOutlet var imageView: UIImageView!

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
        self.updateView()
    }

    func updateView() {
        if self.isViewLoaded {
            self.imageView.image = UIImage(named: self.word!.word)
        }
    }

}
