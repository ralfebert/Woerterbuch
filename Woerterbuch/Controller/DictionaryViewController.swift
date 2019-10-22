// © 2019 Ralf Ebert — iOS Beispielprojekt: Woerterbuch
// License: https://opensource.org/licenses/MIT

import UIKit

class DictionaryViewController: UITableViewController {

    // MARK: - State

    let words = Word.allWords

    // MARK: - UITableViewControllerDataSource

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        self.words.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "LabelCell", for: indexPath)
        let word = self.words[indexPath.row]
        cell.textLabel?.text = "\(word.word) - \(word.translation)"
        return cell
    }

    // MARK: - Segues

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let imageViewController = segue.destination as? ImageViewController, let cell = sender as? UITableViewCell {
            let indexPath = self.tableView.indexPath(for: cell)!
            let word = self.words[indexPath.row]
            imageViewController.word = word
        }
    }

}
