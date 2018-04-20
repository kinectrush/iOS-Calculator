
import UIKit

class ViewController: UIViewController
{
   
    @IBOutlet weak var label: UILabel!
    var stringWithMathematicalOperation: String = ""
    var result:Double = 0
    var nho=2
    var dem=0
    var pheptinh=0
    
    
    @IBAction func numbers(_ sender: UIButton)
    {
        
        if sender.tag != 15 && sender.tag != 14 && sender.tag != 13 && sender.tag != 12 && sender.tag != 18 && sender.tag != 17
        {
            
                stringWithMathematicalOperation=stringWithMathematicalOperation + String(sender.tag - 1)
                label.text=stringWithMathematicalOperation
            nho=0
            pheptinh=0
            
        }

        else if label.text != "" && sender.tag == 15 && nho==0
        {
            stringWithMathematicalOperation=stringWithMathematicalOperation + "+"
            label.text=stringWithMathematicalOperation
            nho=2
            pheptinh=1
        }
        
        else if label.text != "" && sender.tag == 14 && nho==0

        {
            stringWithMathematicalOperation=stringWithMathematicalOperation + "-"
            label.text=stringWithMathematicalOperation
            nho=2
            pheptinh=1
        }
        else if label.text != "" && sender.tag == 13 && nho==0

        {
            stringWithMathematicalOperation=stringWithMathematicalOperation + "*"
            label.text=stringWithMathematicalOperation
            nho=2
            pheptinh=1
        }
        else if label.text != "" && sender.tag == 12 && nho==0
        {
            stringWithMathematicalOperation=stringWithMathematicalOperation + "/"
            label.text=stringWithMathematicalOperation
            nho=2
            pheptinh=1
        
        }
        else if sender.tag == 18

        {
            stringWithMathematicalOperation=stringWithMathematicalOperation + "("
            label.text=stringWithMathematicalOperation
            dem=dem+1
            //pheptinh=1
            
        }
        else if sender.tag == 17

        {
            stringWithMathematicalOperation=stringWithMathematicalOperation + ")"
            label.text=stringWithMathematicalOperation
            dem=dem-1
            //pheptinh=1
        }


    }

    
    @IBAction func buttons(_ sender: UIButton)
    {
        if sender.tag == 16 && dem == 0 && pheptinh == 0
        {
            let exp: NSExpression = NSExpression(format: stringWithMathematicalOperation)
            result = exp.expressionValue(with: nil, context: nil) as! Double // 2
            label.text = String(result)
        }
        
        else if sender.tag == 11
        {
            result=0
            stringWithMathematicalOperation = ""
            label.text = ""
        }
        
    }
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

