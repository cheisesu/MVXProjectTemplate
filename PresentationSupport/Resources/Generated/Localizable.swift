// swiftlint:disable all
// Generated using SwiftGen — https://github.com/SwiftGen/SwiftGen

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length

// MARK: - Strings

// swiftlint:disable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:disable nesting type_body_length type_name
public enum L10n {

  public enum Fridge {
    /// My Fridge
    public static let title = L10n.tr("Localizable", "fridge.title")
  }

  public enum Home {
    public enum Tabs {
      /// Cooking Book
      public static let cookingBook = L10n.tr("Localizable", "home.tabs.cookingBook")
      /// My Fridge
      public static let fridge = L10n.tr("Localizable", "home.tabs.fridge")
      /// My Purchases
      public static let purchases = L10n.tr("Localizable", "home.tabs.purchases")
    }
  }

  public enum Splash {
    /// YouCook
    public static let text = L10n.tr("Localizable", "splash.text")
  }
}
// swiftlint:enable explicit_type_interface function_parameter_count identifier_name line_length
// swiftlint:enable nesting type_body_length type_name

// MARK: - Implementation Details

extension L10n {
  private static func tr(_ table: String, _ key: String, _ args: CVarArg...) -> String {
    // swiftlint:disable:next nslocalizedstring_key
    let format = NSLocalizedString(key, tableName: table, bundle: Bundle(for: BundleToken.self), comment: "")
    return String(format: format, locale: Locale.current, arguments: args)
  }
}

private final class BundleToken {}
