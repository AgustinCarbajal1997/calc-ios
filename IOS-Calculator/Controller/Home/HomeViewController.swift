import UIKit

final class HomeViewController: UIViewController {

    // MARK - initializing
    
    init(){
        super.init(nibName: nil, bundle: nil) // si le ponemos nil y nil por defecto se va a asociar al xib que pusimos por defecto para asociar
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK - life cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }



}
