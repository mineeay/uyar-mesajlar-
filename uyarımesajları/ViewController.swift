//
//  ViewController.swift
//  uyarımesajları
//
//  Created by Mine mac on 13.07.2023.
//

import UIKit

class ViewController: UIViewController {
        
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var password2TextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func signuptiklandi(_ sender: Any) {
        
        if emailTextField.text == ""{
            // email girmemişsin
            alertOlustur(titlegirdisi: "Hata!", messagegirdisi: "E mail Girilmedi")
            
        } else if passwordTextField.text == "" {
            //parolanı girmemişsin
            alertOlustur(titlegirdisi: "Hata!", messagegirdisi: "Parolanı Girilmedi")
        }else if password2TextField.text != passwordTextField.text{
            // parolalar uyuşmuyor
            alertOlustur(titlegirdisi: "Hata!", messagegirdisi: "Parolalar Uyuşmuyor")
                   
        }else {
        // başarılı kayıt
            alertOlustur(titlegirdisi: "Tebrikler!", messagegirdisi: "Kullanıcı Oluşturuldu")
            
    }
    
        }
         func alertOlustur(titlegirdisi: String,messagegirdisi:String){
         let uyarimesaji = UIAlertController(title:titlegirdisi, message: messagegirdisi,preferredStyle: UIAlertController.Style.alert)


        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) {(UIAlertAction) in
           print("Ok Buttonuna Tıklandı") // ok butonuna tıklanınca olacaklar
    
}
        uyarimesaji.addAction(okButton)

        self.present(uyarimesaji, animated: true , completion: nil )
}
    }
