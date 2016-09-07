
import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tf_password: UITextField!
    @IBOutlet weak var tf_user: UITextField!
    
    var users = ["Hao":"123", "Nham":"456", "Hai":"567","lan":"321"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func action_ĐăngNhap(sender: AnyObject) {
        if let password = users[tf_user.text!]
        {
            if password == tf_password.text
            {
                print("Đăng nhập thành công")
            }
            else
            {
                print("Mật khẩu không đúng")
            }
        }
        else
        {
            print("Tài khoản không tồn tại")
        }
        
    }
    @IBAction func bt_list(sender: AnyObject) {
        for i in users{
        print(i)
        }
    }
    
    @IBAction func bt_delete(sender: AnyObject) {
    
       users.removeValueForKey(tf_user.text!)
        
        
    
    }
    @IBAction func bt_repair(sender: AnyObject) {
        users.updateValue(tf_password.text!, forKey: tf_user.text!)
        }
    }


    

        
        



