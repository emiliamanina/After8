import Foundation
import SwiftUI
import UIKit

/**
  OTPView is UIViewRepresentable class of [OTPView](https://github.com/Root-vb/OTPFieldView) library on github.

  # Input Variable: #

  - `fieldsCount`: Length of OTP.

  - `displayType`: Display type for Text Field.

  - `defaultBackgroundColor`: Empty text field background color.

  - `fieldBorderWidth`: Border width for Text Fields.

  - `defaultBorderColor`: Empty text field border color.

  - `filledBorderColor`: Filled text field border color.

  - `cursorColor` : Color for Cursor.

  - `fieldSize` : Size of Text Field.

  - `separatorSpace` : Space beetween OTP digit's boxes.

  - `shouldAllowIntermediateEditing` : Allow to edit from middle.

  - `secureEntry` : Shows • instead of text.

  - `fieldFont` : Font for Text Field.

  = `textColor` : Set Text color in otpTextField

  # Example #
 ```
  OTPView(text: $otpValue,
          width: 374.0,
          height: 60.0,
          fieldsCount: 4,
          displayType: .roundedCorner,
          defaultBackgroundColor: UIColor.white,
          fieldSize: 60.0,
          fieldFont: UIFont.systemFont(ofSize: 35))
 ```
 */

struct OTPView: UIViewRepresentable {
    @Binding var text: String

    var width: CGFloat = 200
    var height: CGFloat = 70
    var fieldsCount: Int = 4
    var displayType: DisplayType = .roundedCorner
    var defaultBackgroundColor: Color = .clear
    var filledBackgroundColor: Color = .clear
    var fieldBorderWidth: CGFloat = 2
    var defaultBorderColor: Color = .clear
    var filledBorderColor: Color = .clear
    var cursorColor: Color = .gray
    var fieldSize: CGFloat = 40
    var separatorSpace: CGFloat = 8
    var shouldAllowIntermediateEditing = false
    var secureEntry: Bool = false
    var fieldFont: UIFont = UIFont.systemFont(ofSize: 30)
    var textColor: Color = .black

    func makeUIView(context: Context) -> OTPFieldView {
        let optView =
            OTPFieldView(frame: CGRect(origin: .zero, size: CGSize(width: width, height: height)))
        optView.delegate = context.coordinator
        setupOTPView(otpTextFieldView: optView)
        return optView
    }

    func updateUIView(_: OTPFieldView, context _: Context) {}

    private func setupOTPView(otpTextFieldView: OTPFieldView) {
        otpTextFieldView.fieldsCount = fieldsCount
        otpTextFieldView.fieldBorderWidth = fieldBorderWidth
        otpTextFieldView.defaultBorderColor = UIColor(defaultBorderColor)
        otpTextFieldView.filledBorderColor = UIColor(filledBorderColor)
        otpTextFieldView.cursorColor = UIColor(cursorColor)
        otpTextFieldView.fieldSize = fieldSize
        otpTextFieldView.separatorSpace = separatorSpace
        otpTextFieldView.shouldAllowIntermediateEditing = shouldAllowIntermediateEditing
        otpTextFieldView.displayType = displayType
        otpTextFieldView.secureEntry = secureEntry
        otpTextFieldView.defaultBackgroundColor = UIColor(defaultBackgroundColor)
        otpTextFieldView.filledBackgroundColor = UIColor(filledBackgroundColor)
        otpTextFieldView.fieldFont = fieldFont
        otpTextFieldView.fieldTextColor = UIColor(textColor)

        otpTextFieldView.initializeUI()
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator($text)
    }

    class Coordinator: NSObject, OTPFieldViewDelegate {
        var text: Binding<String>

        init(_ text: Binding<String>) {
            self.text = text
        }

        func shouldBecomeFirstResponderForOTP(otpTextFieldIndex _: Int) -> Bool {
            return true
        }

        func enteredOTP(otp: String) {
            text.wrappedValue = otp
        }

        func hasEnteredAllOTP(hasEnteredAll _: Bool) -> Bool {
            return true
        }
    }

    typealias UIViewType = OTPFieldView
}
