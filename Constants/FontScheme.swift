import Foundation
import SwiftUI

class FontScheme: NSObject {
    static func kBrice_SemiBoldExpanded(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kBrice_SemiBoldExpanded, size: size)
    }

    static func kBrice_RegularSemiExpanded(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kBrice_RegularSemiExpanded, size: size)
    }

    static func kBrice_LightSemiExpanded(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kBrice_LightSemiExpanded, size: size)
    }

    static func kBrice_SemiBoldSemiExpanded(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kBrice_SemiBoldSemiExpanded, size: size)
    }

    static func kBrice_LightExpanded(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kBrice_LightExpanded, size: size)
    }

    static func kMontserratMedium(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratMedium, size: size)
    }

    static func kMontserratRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratRegular, size: size)
    }

    static func kMontserratLightItalic(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratLightItalic, size: size)
    }

    static func kMontserratSemiBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratSemiBold, size: size)
    }

    static func kMontserratThin(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratThin, size: size)
    }

    static func kMontserratLight(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratLight, size: size)
    }

    static func kMontserratBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kMontserratBold, size: size)
    }

    static func kAvenirBook(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kAvenirBook, size: size)
    }

    static func kSFProTextRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProTextRegular, size: size)
    }

    static func kSFProRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kSFProRegular, size: size)
    }

    static func kPoppinsRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPoppinsRegular, size: size)
    }

    static func kRalewayRegular(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kRalewayRegular, size: size)
    }

    static func kPangramBold(size: CGFloat) -> Font {
        return Font.custom(FontConstant.kPangramBold, size: size)
    }

    static func fontFromConstant(fontName: String, size: CGFloat) -> Font {
        var result = Font.system(size: size)

        switch fontName {
        case "kBrice_SemiBoldExpanded":
            result = self.kBrice_SemiBoldExpanded(size: size)
        case "kBrice_RegularSemiExpanded":
            result = self.kBrice_RegularSemiExpanded(size: size)
        case "kBrice_LightSemiExpanded":
            result = self.kBrice_LightSemiExpanded(size: size)
        case "kBrice_SemiBoldSemiExpanded":
            result = self.kBrice_SemiBoldSemiExpanded(size: size)
        case "kBrice_LightExpanded":
            result = self.kBrice_LightExpanded(size: size)
        case "kMontserratMedium":
            result = self.kMontserratMedium(size: size)
        case "kMontserratRegular":
            result = self.kMontserratRegular(size: size)
        case "kMontserratLightItalic":
            result = self.kMontserratLightItalic(size: size)
        case "kMontserratSemiBold":
            result = self.kMontserratSemiBold(size: size)
        case "kMontserratThin":
            result = self.kMontserratThin(size: size)
        case "kMontserratLight":
            result = self.kMontserratLight(size: size)
        case "kMontserratBold":
            result = self.kMontserratBold(size: size)
        case "kAvenirBook":
            result = self.kAvenirBook(size: size)
        case "kSFProTextRegular":
            result = self.kSFProTextRegular(size: size)
        case "kSFProRegular":
            result = self.kSFProRegular(size: size)
        case "kPoppinsRegular":
            result = self.kPoppinsRegular(size: size)
        case "kRalewayRegular":
            result = self.kRalewayRegular(size: size)
        case "kPangramBold":
            result = self.kPangramBold(size: size)
        default:
            result = self.kBrice_SemiBoldExpanded(size: size)
        }
        return result
    }

    enum FontConstant {
        /**
         * Please Add this fonts Manually
         */
        static let kBrice_SemiBoldExpanded: String = "Brice_SemiBold-Expanded"
        /**
         * Please Add this fonts Manually
         */
        static let kBrice_RegularSemiExpanded: String = "Brice_Regular-SemiExpanded"
        /**
         * Please Add this fonts Manually
         */
        static let kBrice_LightSemiExpanded: String = "Brice_Light-SemiExpanded"
        /**
         * Please Add this fonts Manually
         */
        static let kBrice_SemiBoldSemiExpanded: String = "Brice_SemiBold-SemiExpanded"
        /**
         * Please Add this fonts Manually
         */
        static let kBrice_LightExpanded: String = "Brice_Light-Expanded"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratMedium: String = "Montserrat-Medium"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratRegular: String = "Montserrat-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratLightItalic: String = "Montserrat-LightItalic"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratSemiBold: String = "Montserrat-SemiBold"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratThin: String = "Montserrat-Thin"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratLight: String = "Montserrat-Light"
        /**
         * Please Add this fonts Manually
         */
        static let kMontserratBold: String = "Montserrat-Bold"
        /**
         * Please Add this fonts Manually
         */
        static let kAvenirBook: String = "Avenir-Book"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProTextRegular: String = "SFProText-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kSFProRegular: String = "SFPro-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPoppinsRegular: String = "Poppins-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kRalewayRegular: String = "Raleway-Regular"
        /**
         * Please Add this fonts Manually
         */
        static let kPangramBold: String = "Pangram-Bold"
    }
}
