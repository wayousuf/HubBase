
import UIKit

public class HubBase {
    
    /// Allow you to convert 6 digit hexadecimal string into a UIColor instance
    /// Warning: The "#" sumbol is stripped from the begining of the string submitted here.
    /// - Parameters:
    ///   - hexString: A 6-degit hex string, User 6 digits ratha than 8, and add the accompaying alpha value in the second parameter
    ///   - alpha: A number between 0.0 and 1.0 indicating how transparent the color is
    /// - Returns: A UiColor defined by the 'hexString' parameter
    internal class func colorFromHexString(_ hexString: String, alpha: CGFloat = 1.0) -> UIColor {
        let r, g, b: CGFloat
        let offset = hexString.hasPrefix("#") ? 1 : 0
        let start = hexString.index(hexString.startIndex, offsetBy: offset)
        let hexColor = String(hexString[start...])
        let scanner = Scanner(string: hexColor)
        var hexNumber: UInt64 = 0
        if scanner.scanHexInt64(&hexNumber) {
            r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
            g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
            b = CGFloat(hexNumber & 0x0000ff) / 255
            return UIColor(red: r, green: g, blue: b, alpha: alpha)
        }
        return UIColor(red: 0, green: 0, blue: 0, alpha: alpha)
    }
    
    /// The primiary colo of the hub base app
    public static var primaryColor: UIColor {
        return self.colorFromHexString("006736")
    }
}
