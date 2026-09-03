import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'bringin_translations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of BringinTranslations
/// returned by `BringinTranslations.of(context)`.
///
/// Applications need to include `BringinTranslations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'generated/bringin_translations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: BringinTranslations.localizationsDelegates,
///   supportedLocales: BringinTranslations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the BringinTranslations.supportedLocales
/// property.
abstract class BringinTranslations {
  BringinTranslations(String locale)
      : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static BringinTranslations? of(BuildContext context) {
    return Localizations.of<BringinTranslations>(context, BringinTranslations);
  }

  static const LocalizationsDelegate<BringinTranslations> delegate =
      _BringinTranslationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[Locale('en')];

  /// No description provided for @amount_form_denomination.
  ///
  /// In en, this message translates to:
  /// **'Amount in {denomination}'**
  String amount_form_denomination(String denomination);

  /// No description provided for @amount_form_insert_hint.
  ///
  /// In en, this message translates to:
  /// **'Please enter the amount in {denomination}'**
  String amount_form_insert_hint(String denomination);

  /// No description provided for @amount_form_error_invalid_amount.
  ///
  /// In en, this message translates to:
  /// **'Invalid amount'**
  String get amount_form_error_invalid_amount;

  /// No description provided for @bringin_type_fiat_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'Euro Withdrawal'**
  String get bringin_type_fiat_withdrawal;

  /// No description provided for @bringin_type_offramp.
  ///
  /// In en, this message translates to:
  /// **'Sold Bitcoin'**
  String get bringin_type_offramp;

  /// No description provided for @bringin_type_onramp_partial_fiat_deposit.
  ///
  /// In en, this message translates to:
  /// **'Bought Bitcoin'**
  String get bringin_type_onramp_partial_fiat_deposit;

  /// No description provided for @bringin_type_offramp_without_fiat_withdrawl.
  ///
  /// In en, this message translates to:
  /// **'Sold Bitcoin'**
  String get bringin_type_offramp_without_fiat_withdrawl;

  /// No description provided for @bringin_type_fiat_deposit.
  ///
  /// In en, this message translates to:
  /// **'Euro Deposit'**
  String get bringin_type_fiat_deposit;

  /// No description provided for @bringin_type_fiat_pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get bringin_type_fiat_pending;

  /// No description provided for @bringin_type_bitcoin_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin Withdrawal'**
  String get bringin_type_bitcoin_withdrawal;

  /// No description provided for @bringin_type_card_authorization.
  ///
  /// In en, this message translates to:
  /// **'Card Payment'**
  String get bringin_type_card_authorization;

  /// No description provided for @bringin_type_card_authorization_reversal.
  ///
  /// In en, this message translates to:
  /// **'Card Reversal'**
  String get bringin_type_card_authorization_reversal;

  /// No description provided for @bringin_type_card_tx_refund.
  ///
  /// In en, this message translates to:
  /// **'Card Refund'**
  String get bringin_type_card_tx_refund;

  /// No description provided for @bringin_type_card_tx_release.
  ///
  /// In en, this message translates to:
  /// **'Card Release'**
  String get bringin_type_card_tx_release;

  /// No description provided for @bringin_type_card_tx_atm.
  ///
  /// In en, this message translates to:
  /// **'ATM Withdrawal'**
  String get bringin_type_card_tx_atm;

  /// No description provided for @bringin_type_card_tx_declined.
  ///
  /// In en, this message translates to:
  /// **'Card Declined'**
  String get bringin_type_card_tx_declined;

  /// No description provided for @bringin_type_card_tx_settlement_confirmed.
  ///
  /// In en, this message translates to:
  /// **'Card Payment'**
  String get bringin_type_card_tx_settlement_confirmed;

  /// No description provided for @bringin_type_push_funds.
  ///
  /// In en, this message translates to:
  /// **'Refund'**
  String get bringin_type_push_funds;

  /// No description provided for @bringin_type_rewards.
  ///
  /// In en, this message translates to:
  /// **'Rewards'**
  String get bringin_type_rewards;

  /// No description provided for @bringin_type_cashback.
  ///
  /// In en, this message translates to:
  /// **'Cashback'**
  String get bringin_type_cashback;

  /// No description provided for @bringin_type_exchange_rate_change.
  ///
  /// In en, this message translates to:
  /// **'Exchange rate change'**
  String get bringin_type_exchange_rate_change;

  /// No description provided for @bringin_type_deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get bringin_type_deposit;

  /// No description provided for @bringin_type_ln_address_deposit.
  ///
  /// In en, this message translates to:
  /// **'Lightning Deposit'**
  String get bringin_type_ln_address_deposit;

  /// No description provided for @bringin_type_swap_currency.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin To Euro Swap'**
  String get bringin_type_swap_currency;

  /// No description provided for @bringin_type_card_creation_fee.
  ///
  /// In en, this message translates to:
  /// **'Card Creation Fee'**
  String get bringin_type_card_creation_fee;

  /// No description provided for @bringin_card_type_physical.
  ///
  /// In en, this message translates to:
  /// **'Physical'**
  String get bringin_card_type_physical;

  /// No description provided for @bringin_card_type_virtual.
  ///
  /// In en, this message translates to:
  /// **'Virtual'**
  String get bringin_card_type_virtual;

  /// No description provided for @bringin_card_type_label.
  ///
  /// In en, this message translates to:
  /// **'Card Type'**
  String get bringin_card_type_label;

  /// No description provided for @currency_converter_dialog_error_exchange_rate.
  ///
  /// In en, this message translates to:
  /// **'Failed to retrieve BTC exchange rate.'**
  String get currency_converter_dialog_error_exchange_rate;

  /// No description provided for @fee_chooser_option_economy.
  ///
  /// In en, this message translates to:
  /// **'Economy'**
  String get fee_chooser_option_economy;

  /// No description provided for @fee_chooser_option_regular.
  ///
  /// In en, this message translates to:
  /// **'Regular'**
  String get fee_chooser_option_regular;

  /// No description provided for @fee_chooser_option_priority.
  ///
  /// In en, this message translates to:
  /// **'Priority'**
  String get fee_chooser_option_priority;

  /// No description provided for @invoice_btc_address_deposit_address.
  ///
  /// In en, this message translates to:
  /// **'Deposit Address'**
  String get invoice_btc_address_deposit_address;

  /// No description provided for @invoice_payment_validator_error_payment_exceeded_limit.
  ///
  /// In en, this message translates to:
  /// **'Payment exceeds the limit ({maxSats})'**
  String invoice_payment_validator_error_payment_exceeded_limit(String maxSats);

  /// No description provided for @invoice_payment_validator_error_payment_below_invoice_limit.
  ///
  /// In en, this message translates to:
  /// **'Payment is below the limit ({minSats})'**
  String invoice_payment_validator_error_payment_below_invoice_limit(
      String minSats);

  /// No description provided for @invoice_payment_validator_error_insufficient_local_balance.
  ///
  /// In en, this message translates to:
  /// **'Insufficient local balance'**
  String get invoice_payment_validator_error_insufficient_local_balance;

  /// No description provided for @invoice_payment_validator_error_unknown.
  ///
  /// In en, this message translates to:
  /// **'Validation error {error}'**
  String invoice_payment_validator_error_unknown(String error);

  /// No description provided for @enter_backup_phrase_error.
  ///
  /// In en, this message translates to:
  /// **'Failed to restore from backup. Please make sure backup phrase was correctly entered and try again.'**
  String get enter_backup_phrase_error;

  /// No description provided for @keyboard_done_action.
  ///
  /// In en, this message translates to:
  /// **'Done'**
  String get keyboard_done_action;

  /// No description provided for @lsp_error_cannot_open_channel.
  ///
  /// In en, this message translates to:
  /// **'Bringin cannot open new channels at the moment. Please try again later.'**
  String get lsp_error_cannot_open_channel;

  /// No description provided for @lnurl_fetch_invoice_min.
  ///
  /// In en, this message translates to:
  /// **'Enter an amount between {min}'**
  String lnurl_fetch_invoice_min(String min);

  /// No description provided for @lnurl_fetch_invoice_and.
  ///
  /// In en, this message translates to:
  /// **' and {max}'**
  String lnurl_fetch_invoice_and(String max);

  /// No description provided for @lnurl_payment_page_error_exceeds_limit.
  ///
  /// In en, this message translates to:
  /// **'Exceeds maximum sendable amount: {amount}'**
  String lnurl_payment_page_error_exceeds_limit(int amount);

  /// No description provided for @lnurl_payment_page_error_below_limit.
  ///
  /// In en, this message translates to:
  /// **'Below minimum accepted amount: {amount}'**
  String lnurl_payment_page_error_below_limit(int amount);

  /// No description provided for @link_launcher_failed_to_launch.
  ///
  /// In en, this message translates to:
  /// **'Could not launch {url}'**
  String link_launcher_failed_to_launch(String url);

  /// No description provided for @ln_payment_action_retry.
  ///
  /// In en, this message translates to:
  /// **'RETRY'**
  String get ln_payment_action_retry;

  /// No description provided for @no_connection_flushbar_title.
  ///
  /// In en, this message translates to:
  /// **'No internet connection'**
  String get no_connection_flushbar_title;

  /// No description provided for @no_connection_flushbar_action_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get no_connection_flushbar_action_retry;

  /// No description provided for @payment_error_insufficient_balance.
  ///
  /// In en, this message translates to:
  /// **'Insufficient balance'**
  String get payment_error_insufficient_balance;

  /// No description provided for @payment_error_incorrect_payment_details.
  ///
  /// In en, this message translates to:
  /// **'Incorrect payment details'**
  String get payment_error_incorrect_payment_details;

  /// No description provided for @payment_error_unexpected_error.
  ///
  /// In en, this message translates to:
  /// **'Unexpected error'**
  String get payment_error_unexpected_error;

  /// No description provided for @payment_error_no_route.
  ///
  /// In en, this message translates to:
  /// **'No route'**
  String get payment_error_no_route;

  /// No description provided for @payment_error_payment_timeout_exceeded.
  ///
  /// In en, this message translates to:
  /// **'Payment timeout exceeded'**
  String get payment_error_payment_timeout_exceeded;

  /// No description provided for @payment_error_none.
  ///
  /// In en, this message translates to:
  /// **''**
  String get payment_error_none;

  /// No description provided for @payment_info_title_bitcoin_transfer.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin Transfer'**
  String get payment_info_title_bitcoin_transfer;

  /// No description provided for @payment_info_title_closed_channel.
  ///
  /// In en, this message translates to:
  /// **'Closed Channel'**
  String get payment_info_title_closed_channel;

  /// No description provided for @payment_info_title_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get payment_info_title_unknown;

  /// No description provided for @payment_info_title_bitcoin_deposit.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin Deposit'**
  String get payment_info_title_bitcoin_deposit;

  /// No description provided for @payment_info_title_bitcoin_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin Withdrawal'**
  String get payment_info_title_bitcoin_withdrawal;

  /// No description provided for @payment_info_title_token_transfer.
  ///
  /// In en, this message translates to:
  /// **'Token Transfer'**
  String get payment_info_title_token_transfer;

  /// No description provided for @payment_info_title_lightning_payment.
  ///
  /// In en, this message translates to:
  /// **'Lightning Payment'**
  String get payment_info_title_lightning_payment;

  /// No description provided for @payment_info_title_spark_transfer.
  ///
  /// In en, this message translates to:
  /// **'Spark Transfer'**
  String get payment_info_title_spark_transfer;

  /// No description provided for @payment_info_type_lightning.
  ///
  /// In en, this message translates to:
  /// **'Lightning'**
  String get payment_info_type_lightning;

  /// No description provided for @payment_info_type_onchain.
  ///
  /// In en, this message translates to:
  /// **'On-chain'**
  String get payment_info_type_onchain;

  /// No description provided for @payment_info_type_spark.
  ///
  /// In en, this message translates to:
  /// **'Spark'**
  String get payment_info_type_spark;

  /// No description provided for @payment_info_type_token.
  ///
  /// In en, this message translates to:
  /// **'Token'**
  String get payment_info_type_token;

  /// No description provided for @payment_info_title_pending_closed_channel.
  ///
  /// In en, this message translates to:
  /// **'Pending Closed Channel'**
  String get payment_info_title_pending_closed_channel;

  /// No description provided for @payment_error_to_send_unknown_reason.
  ///
  /// In en, this message translates to:
  /// **'Failed to send payment'**
  String get payment_error_to_send_unknown_reason;

  /// No description provided for @payment_error_to_send.
  ///
  /// In en, this message translates to:
  /// **'Failed to send payment: {error}'**
  String payment_error_to_send(String error);

  /// No description provided for @payment_info_title_opened_channel.
  ///
  /// In en, this message translates to:
  /// **'Opened Channel'**
  String get payment_info_title_opened_channel;

  /// No description provided for @payment_info_title_pending_opened_channel.
  ///
  /// In en, this message translates to:
  /// **'Pending Opened Channel'**
  String get payment_info_title_pending_opened_channel;

  /// No description provided for @payment_info_dialog_error_unsupported_input.
  ///
  /// In en, this message translates to:
  /// **'Unsupported input'**
  String get payment_info_dialog_error_unsupported_input;

  /// No description provided for @payment_info_dialog_error_qrcode.
  ///
  /// In en, this message translates to:
  /// **'QR code wasn\'t detected.'**
  String get payment_info_dialog_error_qrcode;

  /// No description provided for @payment_request_dialog_requested.
  ///
  /// In en, this message translates to:
  /// **'You are requested to pay:'**
  String get payment_request_dialog_requested;

  /// No description provided for @payment_request_dialog_action_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get payment_request_dialog_action_cancel;

  /// No description provided for @payment_request_dialog_action_approve.
  ///
  /// In en, this message translates to:
  /// **'Approve'**
  String get payment_request_dialog_action_approve;

  /// No description provided for @processing_payment_dialog_wait.
  ///
  /// In en, this message translates to:
  /// **'Please wait while your payment is being processed'**
  String get processing_payment_dialog_wait;

  /// No description provided for @payment_confirmation_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Payment Confirmation'**
  String get payment_confirmation_dialog_title;

  /// No description provided for @payment_confirmation_dialog_confirmation.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to pay'**
  String get payment_confirmation_dialog_confirmation;

  /// No description provided for @payment_confirmation_dialog_confirmation_end.
  ///
  /// In en, this message translates to:
  /// **' ?'**
  String get payment_confirmation_dialog_confirmation_end;

  /// No description provided for @payment_confirmation_dialog_action_no.
  ///
  /// In en, this message translates to:
  /// **'NO'**
  String get payment_confirmation_dialog_action_no;

  /// No description provided for @payment_confirmation_dialog_action_yes.
  ///
  /// In en, this message translates to:
  /// **'YES'**
  String get payment_confirmation_dialog_action_yes;

  /// No description provided for @payment_details_dialog_share_transaction.
  ///
  /// In en, this message translates to:
  /// **'Share Transaction Hash'**
  String get payment_details_dialog_share_transaction;

  /// No description provided for @payment_details_dialog_copy_action.
  ///
  /// In en, this message translates to:
  /// **'Copy {title}'**
  String payment_details_dialog_copy_action(String title);

  /// No description provided for @payment_details_dialog_copied.
  ///
  /// In en, this message translates to:
  /// **'{title} was copied to your clipboard.'**
  String payment_details_dialog_copied(String title);

  /// No description provided for @payment_request_zero_amount_not_supported.
  ///
  /// In en, this message translates to:
  /// **'Zero-amount lightning payments are not supported.'**
  String get payment_request_zero_amount_not_supported;

  /// No description provided for @generic_network_error.
  ///
  /// In en, this message translates to:
  /// **'Failed to connect to Bringin. Please check your internet connection and try again.'**
  String get generic_network_error;

  /// No description provided for @qr_code_dialog_warning_message.
  ///
  /// In en, this message translates to:
  /// **'Keep Bringin open until the payment is completed.'**
  String get qr_code_dialog_warning_message;

  /// No description provided for @qr_action_button_error_code_not_detected.
  ///
  /// In en, this message translates to:
  /// **'QR code wasn\'t detected.'**
  String get qr_action_button_error_code_not_detected;

  /// No description provided for @successful_payment_received.
  ///
  /// In en, this message translates to:
  /// **'Payment received!'**
  String get successful_payment_received;

  /// No description provided for @success_title_payment_received.
  ///
  /// In en, this message translates to:
  /// **'Payment received'**
  String get success_title_payment_received;

  /// No description provided for @success_title_purchase_complete.
  ///
  /// In en, this message translates to:
  /// **'Purchase Complete!'**
  String get success_title_purchase_complete;

  /// No description provided for @success_title_payment_completed.
  ///
  /// In en, this message translates to:
  /// **'Payment completed successfully! 🎉'**
  String get success_title_payment_completed;

  /// No description provided for @successful_payment_sent_title.
  ///
  /// In en, this message translates to:
  /// **'Payment was\nsuccessfully sent!'**
  String get successful_payment_sent_title;

  /// No description provided for @valid_payment_error_exceeds_the_limit.
  ///
  /// In en, this message translates to:
  /// **'Payment exceeds the limit {amount}.'**
  String valid_payment_error_exceeds_the_limit(String amount);

  /// No description provided for @wallet_dashboard_payment_item_no_title.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get wallet_dashboard_payment_item_no_title;

  /// No description provided for @withdraw_funds_use_all_funds.
  ///
  /// In en, this message translates to:
  /// **'Use all Funds'**
  String get withdraw_funds_use_all_funds;

  /// No description provided for @withdraw_funds_btc_address.
  ///
  /// In en, this message translates to:
  /// **'BTC Address'**
  String get withdraw_funds_btc_address;

  /// No description provided for @withdraw_funds_action_next.
  ///
  /// In en, this message translates to:
  /// **'NEXT'**
  String get withdraw_funds_action_next;

  /// No description provided for @locale.
  ///
  /// In en, this message translates to:
  /// **'en'**
  String get locale;

  /// No description provided for @app_name.
  ///
  /// In en, this message translates to:
  /// **'Bringin'**
  String get app_name;

  /// No description provided for @home_sca_error_title.
  ///
  /// In en, this message translates to:
  /// **'Session verification unavailable'**
  String get home_sca_error_title;

  /// No description provided for @home_sca_error_message.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t reach our security service. Please check your connection and try again.'**
  String get home_sca_error_message;

  /// No description provided for @home_sca_error_action_logout.
  ///
  /// In en, this message translates to:
  /// **'Log out'**
  String get home_sca_error_action_logout;

  /// No description provided for @home_sca_error_action_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get home_sca_error_action_retry;

  /// No description provided for @home_showcase_nav_title.
  ///
  /// In en, this message translates to:
  /// **'Navigate the app'**
  String get home_showcase_nav_title;

  /// No description provided for @home_showcase_nav_description.
  ///
  /// In en, this message translates to:
  /// **'Switch between Home, Connect, Cards, and Profile to reach every part of the app.'**
  String get home_showcase_nav_description;

  /// No description provided for @home_showcase_balance_title.
  ///
  /// In en, this message translates to:
  /// **'Your total balance'**
  String get home_showcase_balance_title;

  /// No description provided for @home_showcase_balance_description.
  ///
  /// In en, this message translates to:
  /// **'All your Bitcoin, Euro, and card balances in one place. Tap the eye to hide.'**
  String get home_showcase_balance_description;

  /// No description provided for @home_showcase_actions_title.
  ///
  /// In en, this message translates to:
  /// **'Move money fast'**
  String get home_showcase_actions_title;

  /// No description provided for @home_showcase_actions_description.
  ///
  /// In en, this message translates to:
  /// **'Add funds or send Bitcoin / Euro in a couple of taps.'**
  String get home_showcase_actions_description;

  /// No description provided for @home_showcase_swaps_title.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin ↔ Euro swaps'**
  String get home_showcase_swaps_title;

  /// No description provided for @home_showcase_swaps_description.
  ///
  /// In en, this message translates to:
  /// **'Buy Bitcoin into your wallet, or sell directly back to your bank.'**
  String get home_showcase_swaps_description;

  /// No description provided for @home_nav_label_home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home_nav_label_home;

  /// No description provided for @home_nav_label_connect.
  ///
  /// In en, this message translates to:
  /// **'Connect'**
  String get home_nav_label_connect;

  /// No description provided for @home_nav_label_cards.
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get home_nav_label_cards;

  /// No description provided for @home_nav_label_profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get home_nav_label_profile;

  /// No description provided for @home_balance_label_total.
  ///
  /// In en, this message translates to:
  /// **'Total balance'**
  String get home_balance_label_total;

  /// No description provided for @home_accounts_title.
  ///
  /// In en, this message translates to:
  /// **'Wallet & accounts'**
  String get home_accounts_title;

  /// No description provided for @home_accounts_bitcoin_label.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin'**
  String get home_accounts_bitcoin_label;

  /// No description provided for @home_accounts_bitcoin_activate.
  ///
  /// In en, this message translates to:
  /// **'Activate wallet'**
  String get home_accounts_bitcoin_activate;

  /// No description provided for @home_accounts_euro_label.
  ///
  /// In en, this message translates to:
  /// **'Euro'**
  String get home_accounts_euro_label;

  /// No description provided for @home_accounts_card_balance_label.
  ///
  /// In en, this message translates to:
  /// **'Card balance'**
  String get home_accounts_card_balance_label;

  /// No description provided for @home_accounts_balance_syncing.
  ///
  /// In en, this message translates to:
  /// **'Syncing…'**
  String get home_accounts_balance_syncing;

  /// No description provided for @home_accounts_balance_update_failed.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t update your balance. The amount shown may not be current.'**
  String get home_accounts_balance_update_failed;

  /// No description provided for @home_accounts_balance_fetch_failed.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t fetch your balance.'**
  String get home_accounts_balance_fetch_failed;

  /// No description provided for @home_accounts_balance_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get home_accounts_balance_retry;

  /// No description provided for @home_accounts_transactions_in_progress.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 transaction in progress} other{{count} transactions in progress}}'**
  String home_accounts_transactions_in_progress(int count);

  /// No description provided for @home_action_add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get home_action_add;

  /// No description provided for @home_action_send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get home_action_send;

  /// No description provided for @home_action_scan.
  ///
  /// In en, this message translates to:
  /// **'Scan'**
  String get home_action_scan;

  /// No description provided for @home_swaps_title.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin swaps'**
  String get home_swaps_title;

  /// No description provided for @home_swaps_buy_to_wallets.
  ///
  /// In en, this message translates to:
  /// **'Buy to wallets'**
  String get home_swaps_buy_to_wallets;

  /// No description provided for @home_swaps_sell_to_banks.
  ///
  /// In en, this message translates to:
  /// **'Sell to banks'**
  String get home_swaps_sell_to_banks;

  /// No description provided for @home_transactions_title.
  ///
  /// In en, this message translates to:
  /// **'All transactions'**
  String get home_transactions_title;

  /// No description provided for @home_action_needed_title.
  ///
  /// In en, this message translates to:
  /// **'Action needed'**
  String get home_action_needed_title;

  /// No description provided for @home_action_needed_description.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 item needs your review.} other{{count} items need your review.}}'**
  String home_action_needed_description(int count);

  /// No description provided for @home_tx_filter_all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get home_tx_filter_all;

  /// No description provided for @home_tx_filter_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin'**
  String get home_tx_filter_bitcoin;

  /// No description provided for @home_tx_filter_euro_account.
  ///
  /// In en, this message translates to:
  /// **'Euro account'**
  String get home_tx_filter_euro_account;

  /// No description provided for @home_tx_filter_cards.
  ///
  /// In en, this message translates to:
  /// **'Cards'**
  String get home_tx_filter_cards;

  /// No description provided for @home_tx_filter_swaps.
  ///
  /// In en, this message translates to:
  /// **'Swaps'**
  String get home_tx_filter_swaps;

  /// No description provided for @home_transactions_empty.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet'**
  String get home_transactions_empty;

  /// No description provided for @wallet_transactions_syncing.
  ///
  /// In en, this message translates to:
  /// **'Syncing your transactions…'**
  String get wallet_transactions_syncing;

  /// No description provided for @home_transactions_empty_filtered.
  ///
  /// In en, this message translates to:
  /// **'Nothing here in your recent transactions.'**
  String get home_transactions_empty_filtered;

  /// No description provided for @home_resume_loader_message.
  ///
  /// In en, this message translates to:
  /// **'Picking up where you left off.'**
  String get home_resume_loader_message;

  /// No description provided for @home_error_generic.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong.'**
  String get home_error_generic;

  /// No description provided for @home_purchase_processing_title.
  ///
  /// In en, this message translates to:
  /// **'Getting your purchase ready'**
  String get home_purchase_processing_title;

  /// No description provided for @home_purchase_processing_subtitle.
  ///
  /// In en, this message translates to:
  /// **'This won\'t take long.'**
  String get home_purchase_processing_subtitle;

  /// No description provided for @home_update_banner_required.
  ///
  /// In en, this message translates to:
  /// **'A new required version of Bringin is available. Update now to keep using the app.'**
  String get home_update_banner_required;

  /// No description provided for @home_update_banner_optional.
  ///
  /// In en, this message translates to:
  /// **'A new version of Bringin is available.'**
  String get home_update_banner_optional;

  /// No description provided for @home_update_banner_action.
  ///
  /// In en, this message translates to:
  /// **'Update now'**
  String get home_update_banner_action;

  /// No description provided for @tx_label_card_payment.
  ///
  /// In en, this message translates to:
  /// **'Card payment'**
  String get tx_label_card_payment;

  /// No description provided for @tx_label_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin'**
  String get tx_label_bitcoin;

  /// No description provided for @tx_label_top_up.
  ///
  /// In en, this message translates to:
  /// **'Top up'**
  String get tx_label_top_up;

  /// No description provided for @tx_label_sell_btc.
  ///
  /// In en, this message translates to:
  /// **'Sell BTC'**
  String get tx_label_sell_btc;

  /// No description provided for @tx_label_wallet.
  ///
  /// In en, this message translates to:
  /// **'Wallet'**
  String get tx_label_wallet;

  /// No description provided for @tx_label_to_euro_account.
  ///
  /// In en, this message translates to:
  /// **'To Euro account'**
  String get tx_label_to_euro_account;

  /// No description provided for @tx_label_to_bank.
  ///
  /// In en, this message translates to:
  /// **'To Bank'**
  String get tx_label_to_bank;

  /// No description provided for @tx_label_atm_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'ATM Withdrawal'**
  String get tx_label_atm_withdrawal;

  /// No description provided for @tx_label_to_ln_address.
  ///
  /// In en, this message translates to:
  /// **'To LN address'**
  String get tx_label_to_ln_address;

  /// No description provided for @tx_label_to_bitcoin_wallet.
  ///
  /// In en, this message translates to:
  /// **'To Bitcoin wallet'**
  String get tx_label_to_bitcoin_wallet;

  /// No description provided for @tx_label_to_destination.
  ///
  /// In en, this message translates to:
  /// **'To {destination}'**
  String tx_label_to_destination(String destination);

  /// No description provided for @tx_subtype_received.
  ///
  /// In en, this message translates to:
  /// **'Received'**
  String get tx_subtype_received;

  /// No description provided for @tx_subtype_sent.
  ///
  /// In en, this message translates to:
  /// **'Sent'**
  String get tx_subtype_sent;

  /// No description provided for @tx_subtype_pro.
  ///
  /// In en, this message translates to:
  /// **'Pro'**
  String get tx_subtype_pro;

  /// No description provided for @tx_subtype_buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get tx_subtype_buy;

  /// No description provided for @tx_subtype_sell.
  ///
  /// In en, this message translates to:
  /// **'Sell'**
  String get tx_subtype_sell;

  /// No description provided for @tx_subtype_send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get tx_subtype_send;

  /// No description provided for @tx_subtype_add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get tx_subtype_add;

  /// No description provided for @tx_subtype_card_fee.
  ///
  /// In en, this message translates to:
  /// **'Card fee'**
  String get tx_subtype_card_fee;

  /// No description provided for @tx_subtype_refund.
  ///
  /// In en, this message translates to:
  /// **'Refund'**
  String get tx_subtype_refund;

  /// No description provided for @tx_subtype_cashback.
  ///
  /// In en, this message translates to:
  /// **'Cashback'**
  String get tx_subtype_cashback;

  /// No description provided for @tx_subtype_rewards.
  ///
  /// In en, this message translates to:
  /// **'Rewards'**
  String get tx_subtype_rewards;

  /// No description provided for @tx_subtype_deposit.
  ///
  /// In en, this message translates to:
  /// **'Deposit'**
  String get tx_subtype_deposit;

  /// No description provided for @tx_subtype_swap.
  ///
  /// In en, this message translates to:
  /// **'Swap'**
  String get tx_subtype_swap;

  /// No description provided for @tx_label_bringin_inc.
  ///
  /// In en, this message translates to:
  /// **'Bringin INC'**
  String get tx_label_bringin_inc;

  /// No description provided for @tx_label_bringin.
  ///
  /// In en, this message translates to:
  /// **'Bringin'**
  String get tx_label_bringin;

  /// No description provided for @field_label_email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get field_label_email;

  /// No description provided for @field_hint_email.
  ///
  /// In en, this message translates to:
  /// **'Add your email'**
  String get field_hint_email;

  /// No description provided for @field_error_email_empty.
  ///
  /// In en, this message translates to:
  /// **'Your email can\'t be empty.'**
  String get field_error_email_empty;

  /// No description provided for @field_error_email_invalid.
  ///
  /// In en, this message translates to:
  /// **'This email is not valid.'**
  String get field_error_email_invalid;

  /// No description provided for @field_label_password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get field_label_password;

  /// No description provided for @action_next.
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get action_next;

  /// No description provided for @action_back.
  ///
  /// In en, this message translates to:
  /// **'Back'**
  String get action_back;

  /// No description provided for @action_close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get action_close;

  /// No description provided for @action_try_again.
  ///
  /// In en, this message translates to:
  /// **'Try again'**
  String get action_try_again;

  /// No description provided for @error_generic.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong!'**
  String get error_generic;

  /// No description provided for @error_generic_retry.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again.'**
  String get error_generic_retry;

  /// No description provided for @password_error_empty.
  ///
  /// In en, this message translates to:
  /// **'Password is required'**
  String get password_error_empty;

  /// No description provided for @password_error_too_short.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 8 characters'**
  String get password_error_too_short;

  /// No description provided for @password_error_too_long.
  ///
  /// In en, this message translates to:
  /// **'Password is too long'**
  String get password_error_too_long;

  /// No description provided for @password_error_no_uppercase.
  ///
  /// In en, this message translates to:
  /// **'Add at least one uppercase letter'**
  String get password_error_no_uppercase;

  /// No description provided for @password_error_no_lowercase.
  ///
  /// In en, this message translates to:
  /// **'Add at least one lowercase letter'**
  String get password_error_no_lowercase;

  /// No description provided for @password_error_no_special.
  ///
  /// In en, this message translates to:
  /// **'Add at least one special character'**
  String get password_error_no_special;

  /// No description provided for @password_error_no_digit.
  ///
  /// In en, this message translates to:
  /// **'Add at least one number'**
  String get password_error_no_digit;

  /// No description provided for @password_confirm_error_empty.
  ///
  /// In en, this message translates to:
  /// **'Please confirm your password'**
  String get password_confirm_error_empty;

  /// No description provided for @password_confirm_error_mismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords don\'t match'**
  String get password_confirm_error_mismatch;

  /// No description provided for @password_rule_min_length.
  ///
  /// In en, this message translates to:
  /// **'At least 8 characters'**
  String get password_rule_min_length;

  /// No description provided for @password_rule_uppercase.
  ///
  /// In en, this message translates to:
  /// **'An uppercase letter (A–Z)'**
  String get password_rule_uppercase;

  /// No description provided for @password_rule_lowercase.
  ///
  /// In en, this message translates to:
  /// **'A lowercase letter (a–z)'**
  String get password_rule_lowercase;

  /// No description provided for @password_rule_digit.
  ///
  /// In en, this message translates to:
  /// **'A number (0–9)'**
  String get password_rule_digit;

  /// No description provided for @password_rule_special.
  ///
  /// In en, this message translates to:
  /// **'A special character (!@#\$…)'**
  String get password_rule_special;

  /// No description provided for @password_pwned_title.
  ///
  /// In en, this message translates to:
  /// **'Choose a different password'**
  String get password_pwned_title;

  /// No description provided for @password_pwned_message.
  ///
  /// In en, this message translates to:
  /// **'This password has appeared in a public data breach and isn\'t safe to use. Please pick a new one you haven\'t used on other sites.'**
  String get password_pwned_message;

  /// No description provided for @login_action_get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get login_action_get_started;

  /// No description provided for @login_divider_or.
  ///
  /// In en, this message translates to:
  /// **'OR'**
  String get login_divider_or;

  /// No description provided for @login_action_continue_google.
  ///
  /// In en, this message translates to:
  /// **'Continue with Google'**
  String get login_action_continue_google;

  /// No description provided for @login_action_continue_apple.
  ///
  /// In en, this message translates to:
  /// **'Continue with Apple'**
  String get login_action_continue_apple;

  /// No description provided for @login_error_google_token.
  ///
  /// In en, this message translates to:
  /// **'Unable to get authentication token from Google.'**
  String get login_error_google_token;

  /// No description provided for @login_error_google_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to sign in with Google. Please try again.'**
  String get login_error_google_generic;

  /// No description provided for @login_error_apple_token.
  ///
  /// In en, this message translates to:
  /// **'Unable to get authentication token from Apple.'**
  String get login_error_apple_token;

  /// No description provided for @login_error_apple_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to sign in with Apple. Please try again.'**
  String get login_error_apple_generic;

  /// No description provided for @login_password_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter your password'**
  String get login_password_hint;

  /// No description provided for @login_action_forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot password?'**
  String get login_action_forgot_password;

  /// No description provided for @login_action_log_in.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login_action_log_in;

  /// No description provided for @login_title.
  ///
  /// In en, this message translates to:
  /// **'Log in'**
  String get login_title;

  /// No description provided for @account_locked_title.
  ///
  /// In en, this message translates to:
  /// **'Account locked'**
  String get account_locked_title;

  /// No description provided for @account_suspended_title.
  ///
  /// In en, this message translates to:
  /// **'Account suspended'**
  String get account_suspended_title;

  /// No description provided for @account_locked_try_again_in.
  ///
  /// In en, this message translates to:
  /// **'Try again in {duration}'**
  String account_locked_try_again_in(String duration);

  /// No description provided for @account_locked_failed_attempts.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 failed attempt.} other{{count} failed attempts.}}'**
  String account_locked_failed_attempts(int count);

  /// No description provided for @account_locked_action_support.
  ///
  /// In en, this message translates to:
  /// **'Contact support'**
  String get account_locked_action_support;

  /// No description provided for @create_account_title.
  ///
  /// In en, this message translates to:
  /// **'Sign up with email'**
  String get create_account_title;

  /// No description provided for @create_account_field_label_first_name.
  ///
  /// In en, this message translates to:
  /// **'First name'**
  String get create_account_field_label_first_name;

  /// No description provided for @create_account_field_hint_first_name.
  ///
  /// In en, this message translates to:
  /// **'Add your first name'**
  String get create_account_field_hint_first_name;

  /// No description provided for @create_account_error_first_name_empty.
  ///
  /// In en, this message translates to:
  /// **'Your firstname can\'t be empty'**
  String get create_account_error_first_name_empty;

  /// No description provided for @create_account_error_first_name_invalid.
  ///
  /// In en, this message translates to:
  /// **'This firstname is not valid'**
  String get create_account_error_first_name_invalid;

  /// No description provided for @create_account_field_label_last_name.
  ///
  /// In en, this message translates to:
  /// **'Last name'**
  String get create_account_field_label_last_name;

  /// No description provided for @create_account_field_hint_last_name.
  ///
  /// In en, this message translates to:
  /// **'Add your last name'**
  String get create_account_field_hint_last_name;

  /// No description provided for @create_account_error_last_name_empty.
  ///
  /// In en, this message translates to:
  /// **'Your lastname can\'t be empty'**
  String get create_account_error_last_name_empty;

  /// No description provided for @create_account_error_last_name_invalid.
  ///
  /// In en, this message translates to:
  /// **'This lastname is not valid'**
  String get create_account_error_last_name_invalid;

  /// No description provided for @create_account_field_label_referral.
  ///
  /// In en, this message translates to:
  /// **'Referral Code'**
  String get create_account_field_label_referral;

  /// No description provided for @create_account_field_hint_referral.
  ///
  /// In en, this message translates to:
  /// **'Enter referral code'**
  String get create_account_field_hint_referral;

  /// No description provided for @create_account_referral_prefilled.
  ///
  /// In en, this message translates to:
  /// **'Referral code pre-filled from your invitation link'**
  String get create_account_referral_prefilled;

  /// No description provided for @create_account_terms_label.
  ///
  /// In en, this message translates to:
  /// **'Accept terms and condition'**
  String get create_account_terms_label;

  /// No description provided for @create_account_terms_prefix.
  ///
  /// In en, this message translates to:
  /// **'You agree to our '**
  String get create_account_terms_prefix;

  /// No description provided for @create_account_terms_link.
  ///
  /// In en, this message translates to:
  /// **'Terms & conditions'**
  String get create_account_terms_link;

  /// No description provided for @create_account_terms_separator.
  ///
  /// In en, this message translates to:
  /// **' and '**
  String get create_account_terms_separator;

  /// No description provided for @create_account_privacy_link.
  ///
  /// In en, this message translates to:
  /// **'Privacy policy'**
  String get create_account_privacy_link;

  /// No description provided for @create_account_terms_suffix.
  ///
  /// In en, this message translates to:
  /// **' (As applicable on our website and from our third party service providers).'**
  String get create_account_terms_suffix;

  /// No description provided for @create_account_error_terms_required.
  ///
  /// In en, this message translates to:
  /// **'Please accept our Terms & Conditions'**
  String get create_account_error_terms_required;

  /// No description provided for @create_account_error_already_registered.
  ///
  /// In en, this message translates to:
  /// **'User is already registered!'**
  String get create_account_error_already_registered;

  /// No description provided for @create_account_error_page_title.
  ///
  /// In en, this message translates to:
  /// **'Oops!'**
  String get create_account_error_page_title;

  /// No description provided for @verify_email_signup_title.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get verify_email_signup_title;

  /// No description provided for @verify_email_heading.
  ///
  /// In en, this message translates to:
  /// **'Verify your email'**
  String get verify_email_heading;

  /// No description provided for @verify_email_subtitle_prefix.
  ///
  /// In en, this message translates to:
  /// **'Add the verification code send to your email address '**
  String get verify_email_subtitle_prefix;

  /// No description provided for @verify_otp_subtitle_prefix.
  ///
  /// In en, this message translates to:
  /// **'Enter the verification code sent to '**
  String get verify_otp_subtitle_prefix;

  /// No description provided for @verify_email_error_invalid_code.
  ///
  /// In en, this message translates to:
  /// **'Invalid verification code. Please try again.'**
  String get verify_email_error_invalid_code;

  /// No description provided for @verify_email_error_code_expired.
  ///
  /// In en, this message translates to:
  /// **'Verification code expired. Tap resend.'**
  String get verify_email_error_code_expired;

  /// No description provided for @verify_email_error_invalid_code_retry.
  ///
  /// In en, this message translates to:
  /// **'Invalid verification code. Retry'**
  String get verify_email_error_invalid_code_retry;

  /// No description provided for @create_password_title.
  ///
  /// In en, this message translates to:
  /// **'Set your password'**
  String get create_password_title;

  /// No description provided for @create_password_message.
  ///
  /// In en, this message translates to:
  /// **'For your security, please set a password. You\'ll use it to sign in from now on.'**
  String get create_password_message;

  /// No description provided for @create_password_field_hint.
  ///
  /// In en, this message translates to:
  /// **'Create a password'**
  String get create_password_field_hint;

  /// No description provided for @create_password_field_label_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm password'**
  String get create_password_field_label_confirm;

  /// No description provided for @create_password_field_hint_confirm.
  ///
  /// In en, this message translates to:
  /// **'Re-enter your password'**
  String get create_password_field_hint_confirm;

  /// No description provided for @create_password_action_submit.
  ///
  /// In en, this message translates to:
  /// **'Create Password'**
  String get create_password_action_submit;

  /// No description provided for @create_password_error_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to create your password. Please try again.'**
  String get create_password_error_generic;

  /// No description provided for @reset_password_title.
  ///
  /// In en, this message translates to:
  /// **'Set a new password'**
  String get reset_password_title;

  /// No description provided for @reset_password_message.
  ///
  /// In en, this message translates to:
  /// **'Your existing password has expired. Please set a new one to continue.'**
  String get reset_password_message;

  /// No description provided for @reset_password_field_label_new.
  ///
  /// In en, this message translates to:
  /// **'New password'**
  String get reset_password_field_label_new;

  /// No description provided for @reset_password_field_hint_new.
  ///
  /// In en, this message translates to:
  /// **'Enter a new password'**
  String get reset_password_field_hint_new;

  /// No description provided for @reset_password_field_label_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm new password'**
  String get reset_password_field_label_confirm;

  /// No description provided for @reset_password_field_hint_confirm.
  ///
  /// In en, this message translates to:
  /// **'Re-enter your new password'**
  String get reset_password_field_hint_confirm;

  /// No description provided for @reset_password_action_submit.
  ///
  /// In en, this message translates to:
  /// **'Set new password'**
  String get reset_password_action_submit;

  /// No description provided for @reset_password_error_session_expired.
  ///
  /// In en, this message translates to:
  /// **'Reset session expired. Please sign in again.'**
  String get reset_password_error_session_expired;

  /// No description provided for @reset_password_error_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to reset your password. Please try again.'**
  String get reset_password_error_generic;

  /// No description provided for @forgot_password_title.
  ///
  /// In en, this message translates to:
  /// **'Reset your password'**
  String get forgot_password_title;

  /// No description provided for @forgot_password_message.
  ///
  /// In en, this message translates to:
  /// **'Enter the email address you used to sign in. We\'ll send you a link to reset your password.'**
  String get forgot_password_message;

  /// No description provided for @forgot_password_action_submit.
  ///
  /// In en, this message translates to:
  /// **'Send reset link'**
  String get forgot_password_action_submit;

  /// No description provided for @forgot_password_success_title.
  ///
  /// In en, this message translates to:
  /// **'Check your inbox'**
  String get forgot_password_success_title;

  /// No description provided for @forgot_password_success_heading.
  ///
  /// In en, this message translates to:
  /// **'We\'ve sent a reset link'**
  String get forgot_password_success_heading;

  /// No description provided for @forgot_password_success_message.
  ///
  /// In en, this message translates to:
  /// **'We\'ve emailed a password-reset link to {email}. Tap the link in your inbox to set a new password. It expires in an hour.'**
  String forgot_password_success_message(String email);

  /// No description provided for @forgot_password_success_action_back.
  ///
  /// In en, this message translates to:
  /// **'Back to sign in'**
  String get forgot_password_success_action_back;

  /// No description provided for @invoice_error_amount_empty.
  ///
  /// In en, this message translates to:
  /// **'Amount cannot be empty'**
  String get invoice_error_amount_empty;

  /// No description provided for @invoice_fetching_rate.
  ///
  /// In en, this message translates to:
  /// **'Fetching rate...'**
  String get invoice_fetching_rate;

  /// No description provided for @paste_invoice_field_label.
  ///
  /// In en, this message translates to:
  /// **'Lightning Invoice or Address'**
  String get paste_invoice_field_label;

  /// No description provided for @paste_invoice_field_hint.
  ///
  /// In en, this message translates to:
  /// **'Paste invoice or address'**
  String get paste_invoice_field_hint;

  /// No description provided for @paste_invoice_validating_helper.
  ///
  /// In en, this message translates to:
  /// **'Validating address...'**
  String get paste_invoice_validating_helper;

  /// No description provided for @paste_invoice_action_validating.
  ///
  /// In en, this message translates to:
  /// **'Validating...'**
  String get paste_invoice_action_validating;

  /// No description provided for @paste_invoice_amount_sats.
  ///
  /// In en, this message translates to:
  /// **'{sats} sats'**
  String paste_invoice_amount_sats(String sats);

  /// No description provided for @paste_invoice_error_too_long.
  ///
  /// In en, this message translates to:
  /// **'Input is too long to be a valid invoice or address'**
  String get paste_invoice_error_too_long;

  /// No description provided for @paste_invoice_error_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid lightning invoice or address'**
  String get paste_invoice_error_invalid;

  /// No description provided for @paste_invoice_error_zero_amount.
  ///
  /// In en, this message translates to:
  /// **'We don\'t support zero-sat invoices'**
  String get paste_invoice_error_zero_amount;

  /// No description provided for @invoice_qr_instruction.
  ///
  /// In en, this message translates to:
  /// **'Please scan the QR code from any Bitcoin Lightning wallet to complete the payment.'**
  String get invoice_qr_instruction;

  /// No description provided for @invoice_qr_expires_in.
  ///
  /// In en, this message translates to:
  /// **'Expires in '**
  String get invoice_qr_expires_in;

  /// No description provided for @invoice_qr_amount_sats.
  ///
  /// In en, this message translates to:
  /// **'Amount: {amount} SATS'**
  String invoice_qr_amount_sats(String amount);

  /// No description provided for @invoice_qr_copied.
  ///
  /// In en, this message translates to:
  /// **'Lightning invoice was copied to your clipboard'**
  String get invoice_qr_copied;

  /// No description provided for @buy_invoice_headline.
  ///
  /// In en, this message translates to:
  /// **'How much Bitcoin do you want to buy?'**
  String get buy_invoice_headline;

  /// No description provided for @buy_invoice_field_label_amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get buy_invoice_field_label_amount;

  /// No description provided for @buy_invoice_error_below_minimum.
  ///
  /// In en, this message translates to:
  /// **'Try a higher amount than €{minimum}'**
  String buy_invoice_error_below_minimum(String minimum);

  /// No description provided for @buy_invoice_receive_upto.
  ///
  /// In en, this message translates to:
  /// **'Receive upto: {sats} Sats'**
  String buy_invoice_receive_upto(String sats);

  /// No description provided for @buy_invoice_error_insufficient_balance.
  ///
  /// In en, this message translates to:
  /// **'Insufficient balance'**
  String get buy_invoice_error_insufficient_balance;

  /// No description provided for @buy_invoice_error_minimum_transaction.
  ///
  /// In en, this message translates to:
  /// **'The minimum amount for this transaction is €{minimum}'**
  String buy_invoice_error_minimum_transaction(String minimum);

  /// No description provided for @buy_invoice_error_convert_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to convert amount: {error}'**
  String buy_invoice_error_convert_failed(String error);

  /// No description provided for @buy_invoice_balance_btc.
  ///
  /// In en, this message translates to:
  /// **'Balance: {btc} BTC'**
  String buy_invoice_balance_btc(String btc);

  /// No description provided for @create_invoice_field_label_amount.
  ///
  /// In en, this message translates to:
  /// **'Amount (in {unit})'**
  String create_invoice_field_label_amount(String unit);

  /// No description provided for @create_invoice_error_amount_too_low.
  ///
  /// In en, this message translates to:
  /// **'Try a higher amount'**
  String get create_invoice_error_amount_too_low;

  /// No description provided for @create_invoice_field_label_description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get create_invoice_field_label_description;

  /// No description provided for @action_skip.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get action_skip;

  /// No description provided for @action_continue.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get action_continue;

  /// No description provided for @action_go_back.
  ///
  /// In en, this message translates to:
  /// **'Go back'**
  String get action_go_back;

  /// No description provided for @action_home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get action_home;

  /// No description provided for @badge_advanced.
  ///
  /// In en, this message translates to:
  /// **'Advanced'**
  String get badge_advanced;

  /// No description provided for @add_wallet_title.
  ///
  /// In en, this message translates to:
  /// **'Set up a Bitcoin wallet'**
  String get add_wallet_title;

  /// No description provided for @add_wallet_intro.
  ///
  /// In en, this message translates to:
  /// **'Bringin lets you use a self-custody wallet. Create a new wallet with us or connect an existing hardware or software wallet.'**
  String get add_wallet_intro;

  /// No description provided for @add_wallet_option_create_title.
  ///
  /// In en, this message translates to:
  /// **'Create a new wallet'**
  String get add_wallet_option_create_title;

  /// No description provided for @add_wallet_option_create_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Set up a new self-custody wallet.'**
  String get add_wallet_option_create_subtitle;

  /// No description provided for @add_wallet_option_restore_title.
  ///
  /// In en, this message translates to:
  /// **'Restore a wallet'**
  String get add_wallet_option_restore_title;

  /// No description provided for @add_wallet_option_restore_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Recover from your backup or 12-word recovery phrase.'**
  String get add_wallet_option_restore_subtitle;

  /// No description provided for @add_wallet_option_external_title.
  ///
  /// In en, this message translates to:
  /// **'Link an external wallet'**
  String get add_wallet_option_external_title;

  /// No description provided for @add_wallet_option_external_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Link an external NWC wallet. (Coming soon)'**
  String get add_wallet_option_external_subtitle;

  /// No description provided for @add_wallet_external_coming_soon.
  ///
  /// In en, this message translates to:
  /// **'Linking an external wallet is coming soon'**
  String get add_wallet_external_coming_soon;

  /// No description provided for @add_wallet_loader_restoring.
  ///
  /// In en, this message translates to:
  /// **'Restoring your wallet. This won\'t take long.'**
  String get add_wallet_loader_restoring;

  /// No description provided for @add_wallet_loader_creating.
  ///
  /// In en, this message translates to:
  /// **'Creating your new wallet. Almost there!'**
  String get add_wallet_loader_creating;

  /// No description provided for @add_wallet_loader_checking.
  ///
  /// In en, this message translates to:
  /// **'Checking your wallet.'**
  String get add_wallet_loader_checking;

  /// No description provided for @add_wallet_loader_spark_setup.
  ///
  /// In en, this message translates to:
  /// **'Setting up Spark wallet...'**
  String get add_wallet_loader_spark_setup;

  /// No description provided for @backup_prompt_title_create.
  ///
  /// In en, this message translates to:
  /// **'Create a new wallet'**
  String get backup_prompt_title_create;

  /// No description provided for @backup_prompt_intro.
  ///
  /// In en, this message translates to:
  /// **'You’re using a non-custodial wallet—only you have access to your funds. We don’t hold your keys or control your Bitcoin.'**
  String get backup_prompt_intro;

  /// No description provided for @backup_prompt_heading.
  ///
  /// In en, this message translates to:
  /// **'Back up your wallet'**
  String get backup_prompt_heading;

  /// No description provided for @backup_prompt_why_title.
  ///
  /// In en, this message translates to:
  /// **'Why back up?'**
  String get backup_prompt_why_title;

  /// No description provided for @backup_prompt_why_description.
  ///
  /// In en, this message translates to:
  /// **'Backing up your wallet ensures you can recover your Bitcoin if you lose access to your device or app. Without a backup, your funds cannot be recovered.'**
  String get backup_prompt_why_description;

  /// No description provided for @backup_option_cloud_title.
  ///
  /// In en, this message translates to:
  /// **'Back up to Google Drive / iCloud'**
  String get backup_option_cloud_title;

  /// No description provided for @backup_option_cloud_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Automatic backup. If you lose your device, you can recover your wallet easily.'**
  String get backup_option_cloud_subtitle;

  /// No description provided for @backup_option_write_down_title.
  ///
  /// In en, this message translates to:
  /// **'Write down recovery phrase'**
  String get backup_option_write_down_title;

  /// No description provided for @backup_option_write_down_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Save your 12-word phrase securely. It’s the only way to recover your wallet.'**
  String get backup_option_write_down_subtitle;

  /// No description provided for @backup_prompt_action_skip.
  ///
  /// In en, this message translates to:
  /// **'Skip backup and create wallet'**
  String get backup_prompt_action_skip;

  /// No description provided for @backup_action_submit.
  ///
  /// In en, this message translates to:
  /// **'Back up wallet'**
  String get backup_action_submit;

  /// No description provided for @backup_cloud_title.
  ///
  /// In en, this message translates to:
  /// **'Back up to cloud'**
  String get backup_cloud_title;

  /// No description provided for @backup_cloud_option_plain_title.
  ///
  /// In en, this message translates to:
  /// **'Back up without additional password'**
  String get backup_cloud_option_plain_title;

  /// No description provided for @backup_cloud_option_plain_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Automatic backup. Recover your wallet easily if you lose access to your device.'**
  String get backup_cloud_option_plain_subtitle;

  /// No description provided for @backup_cloud_option_password_title.
  ///
  /// In en, this message translates to:
  /// **'Back up with additional password'**
  String get backup_cloud_option_password_title;

  /// No description provided for @backup_cloud_option_password_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Encrypt your backup with a password. Only use this if you can store it safely—losing it means you will not be able to restore your wallet.'**
  String get backup_cloud_option_password_subtitle;

  /// No description provided for @backup_cloud_option_1.
  ///
  /// In en, this message translates to:
  /// **'OPTION 1'**
  String get backup_cloud_option_1;

  /// No description provided for @backup_cloud_option_2.
  ///
  /// In en, this message translates to:
  /// **'OPTION 2'**
  String get backup_cloud_option_2;

  /// No description provided for @backup_cloud_icloud_coming_soon.
  ///
  /// In en, this message translates to:
  /// **'iCloud backup coming soon'**
  String get backup_cloud_icloud_coming_soon;

  /// No description provided for @cloud_picker_title.
  ///
  /// In en, this message translates to:
  /// **'Sign in to your cloud storage'**
  String get cloud_picker_title;

  /// No description provided for @cloud_picker_google_drive.
  ///
  /// In en, this message translates to:
  /// **'Sign in to Google Drive'**
  String get cloud_picker_google_drive;

  /// No description provided for @cloud_picker_icloud.
  ///
  /// In en, this message translates to:
  /// **'Sign in to iCloud'**
  String get cloud_picker_icloud;

  /// No description provided for @cloud_picker_coming_soon.
  ///
  /// In en, this message translates to:
  /// **'(Coming soon)'**
  String get cloud_picker_coming_soon;

  /// No description provided for @restore_wallet_title.
  ///
  /// In en, this message translates to:
  /// **'Restore a wallet'**
  String get restore_wallet_title;

  /// No description provided for @restore_wallet_heading.
  ///
  /// In en, this message translates to:
  /// **'Restore'**
  String get restore_wallet_heading;

  /// No description provided for @restore_option_cloud_title.
  ///
  /// In en, this message translates to:
  /// **'From Google Drive / iCloud'**
  String get restore_option_cloud_title;

  /// No description provided for @restore_option_cloud_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign in to your cloud storage to restore your wallet if you’ve created a backup.'**
  String get restore_option_cloud_subtitle;

  /// No description provided for @restore_option_phrase_title.
  ///
  /// In en, this message translates to:
  /// **'From your recovery phrase'**
  String get restore_option_phrase_title;

  /// No description provided for @restore_option_phrase_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Restore your wallet using your securely stored 12-word recovery phrase.'**
  String get restore_option_phrase_subtitle;

  /// No description provided for @restore_wallet_action_submit.
  ///
  /// In en, this message translates to:
  /// **'Restore wallet'**
  String get restore_wallet_action_submit;

  /// No description provided for @restore_wallet_icloud_coming_soon.
  ///
  /// In en, this message translates to:
  /// **'iCloud restore coming soon'**
  String get restore_wallet_icloud_coming_soon;

  /// No description provided for @restore_wallet_loader_checking.
  ///
  /// In en, this message translates to:
  /// **'Checking your backup.'**
  String get restore_wallet_loader_checking;

  /// No description provided for @restore_wallet_error_no_backup.
  ///
  /// In en, this message translates to:
  /// **'No backup found on this Google account. Try a different account, or restore using your recovery phrase.'**
  String get restore_wallet_error_no_backup;

  /// No description provided for @restore_wallet_error_corrupted.
  ///
  /// In en, this message translates to:
  /// **'This backup looks corrupted (expected a 12-word phrase). Try another account or restore using your recovery phrase.'**
  String get restore_wallet_error_corrupted;

  /// No description provided for @migration_title.
  ///
  /// In en, this message translates to:
  /// **'Wallet migration'**
  String get migration_title;

  /// No description provided for @migration_heading.
  ///
  /// In en, this message translates to:
  /// **'Migrate your wallet to continue'**
  String get migration_heading;

  /// No description provided for @migration_found_wallet_prefix.
  ///
  /// In en, this message translates to:
  /// **'We found an existing wallet with '**
  String get migration_found_wallet_prefix;

  /// No description provided for @migration_found_wallet_amount.
  ///
  /// In en, this message translates to:
  /// **'{sats} sats'**
  String migration_found_wallet_amount(String sats);

  /// No description provided for @migration_upgrade_title.
  ///
  /// In en, this message translates to:
  /// **'We’ve upgraded our network.'**
  String get migration_upgrade_title;

  /// No description provided for @migration_upgrade_description.
  ///
  /// In en, this message translates to:
  /// **'We’ve upgraded to a new blockchain (Spark) for improved features and reliability. To continue using your wallet, it needs to be migrated.\n\nYour funds will be transferred securely, and you can continue using your wallet as usual.'**
  String get migration_upgrade_description;

  /// No description provided for @migration_no_migrate_note.
  ///
  /// In en, this message translates to:
  /// **'If you choose not to migrate, you can create a new wallet, but your existing funds will not be carried over.'**
  String get migration_no_migrate_note;

  /// No description provided for @migration_existing_wallet_label.
  ///
  /// In en, this message translates to:
  /// **'Existing wallet'**
  String get migration_existing_wallet_label;

  /// No description provided for @migration_fees_label.
  ///
  /// In en, this message translates to:
  /// **'Network fees'**
  String get migration_fees_label;

  /// No description provided for @migration_balance_after_label.
  ///
  /// In en, this message translates to:
  /// **'Balance after migration'**
  String get migration_balance_after_label;

  /// No description provided for @migration_action_create_new.
  ///
  /// In en, this message translates to:
  /// **'Create new wallet instead'**
  String get migration_action_create_new;

  /// No description provided for @migration_action_migrate.
  ///
  /// In en, this message translates to:
  /// **'Migrate wallet'**
  String get migration_action_migrate;

  /// No description provided for @migration_confirm_title.
  ///
  /// In en, this message translates to:
  /// **'Create a new wallet?'**
  String get migration_confirm_title;

  /// No description provided for @migration_confirm_bullet_holds.
  ///
  /// In en, this message translates to:
  /// **'Your existing wallet holds {sats} sats on Liquid Blockchain.'**
  String migration_confirm_bullet_holds(String sats);

  /// No description provided for @migration_confirm_bullet_inaccessible.
  ///
  /// In en, this message translates to:
  /// **'If you continue, these funds will not be accessible in the new wallet.'**
  String get migration_confirm_bullet_inaccessible;

  /// No description provided for @migration_confirm_acknowledge.
  ///
  /// In en, this message translates to:
  /// **'I understand my existing funds will not be carried over.'**
  String get migration_confirm_acknowledge;

  /// No description provided for @migration_confirm_action_create.
  ///
  /// In en, this message translates to:
  /// **'Create wallet'**
  String get migration_confirm_action_create;

  /// No description provided for @migration_progress_label.
  ///
  /// In en, this message translates to:
  /// **'Migrating'**
  String get migration_progress_label;

  /// No description provided for @migration_progress_from_to.
  ///
  /// In en, this message translates to:
  /// **'from Liquid to Spark'**
  String get migration_progress_from_to;

  /// No description provided for @migration_step_connecting.
  ///
  /// In en, this message translates to:
  /// **'Connecting to Liquid wallet...'**
  String get migration_step_connecting;

  /// No description provided for @migration_step_complete.
  ///
  /// In en, this message translates to:
  /// **'Migration completed successfully!'**
  String get migration_step_complete;

  /// No description provided for @migration_step_failed.
  ///
  /// In en, this message translates to:
  /// **'Migration failed'**
  String get migration_step_failed;

  /// No description provided for @migration_error_with_detail.
  ///
  /// In en, this message translates to:
  /// **'Migration failed: {details}'**
  String migration_error_with_detail(String details);

  /// No description provided for @migration_dust_title.
  ///
  /// In en, this message translates to:
  /// **'Balance too small to migrate'**
  String get migration_dust_title;

  /// No description provided for @migration_dust_message.
  ///
  /// In en, this message translates to:
  /// **'Migration isn’t possible for balances under {minSats} sats due to network fees. We’ll create a fresh wallet instead.'**
  String migration_dust_message(String minSats);

  /// No description provided for @migration_success_title_migrated.
  ///
  /// In en, this message translates to:
  /// **'Wallet migrated successfully!'**
  String get migration_success_title_migrated;

  /// No description provided for @migration_success_subtitle_migrated.
  ///
  /// In en, this message translates to:
  /// **'Your funds have been transferred to the new network. You can continue using your wallet as usual.'**
  String get migration_success_subtitle_migrated;

  /// No description provided for @migration_success_title_created.
  ///
  /// In en, this message translates to:
  /// **'New wallet created!'**
  String get migration_success_title_created;

  /// No description provided for @migration_success_subtitle_created.
  ///
  /// In en, this message translates to:
  /// **'Your new wallet is ready to use. Your existing funds stay on the old network.'**
  String get migration_success_subtitle_created;

  /// No description provided for @migration_success_history_title.
  ///
  /// In en, this message translates to:
  /// **'Transaction history'**
  String get migration_success_history_title;

  /// No description provided for @migration_success_history_description.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{We found 1 transaction on your old wallet. Since you’re moving to a new network, this history won’t be available in the app. Do you want to save a copy?} other{We found {count} transactions on your old wallet. Since you’re moving to a new network, this history won’t be available in the app. Do you want to save a copy?}}'**
  String migration_success_history_description(int count);

  /// No description provided for @liquid_export_title.
  ///
  /// In en, this message translates to:
  /// **'Save Transaction History'**
  String get liquid_export_title;

  /// No description provided for @liquid_export_message.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Your Liquid wallet had 1 transaction. Since you’re moving to Spark, you won’t be able to view these in the app. Would you like to save a copy?} other{Your Liquid wallet had {count} transactions. Since you’re moving to Spark, you won’t be able to view these in the app. Would you like to save a copy?}}'**
  String liquid_export_message(int count);

  /// No description provided for @liquid_export_action_download.
  ///
  /// In en, this message translates to:
  /// **'Download CSV'**
  String get liquid_export_action_download;

  /// No description provided for @liquid_export_action_download_again.
  ///
  /// In en, this message translates to:
  /// **'Download Again'**
  String get liquid_export_action_download_again;

  /// No description provided for @liquid_export_share_title.
  ///
  /// In en, this message translates to:
  /// **'Liquid Transaction History'**
  String get liquid_export_share_title;

  /// No description provided for @liquid_export_error.
  ///
  /// In en, this message translates to:
  /// **'Failed to export transactions'**
  String get liquid_export_error;

  /// No description provided for @wallet_success_title_active.
  ///
  /// In en, this message translates to:
  /// **'Back up secure & wallet active!'**
  String get wallet_success_title_active;

  /// No description provided for @wallet_success_title_logged_out.
  ///
  /// In en, this message translates to:
  /// **'Back up secure & logged out!'**
  String get wallet_success_title_logged_out;

  /// No description provided for @wallet_success_title_disconnected.
  ///
  /// In en, this message translates to:
  /// **'Back up secure & wallet disconnected!'**
  String get wallet_success_title_disconnected;

  /// No description provided for @wallet_success_bullet_only_backup.
  ///
  /// In en, this message translates to:
  /// **'Your recovery phrase is your only backup.'**
  String get wallet_success_bullet_only_backup;

  /// No description provided for @wallet_success_bullet_keep_private.
  ///
  /// In en, this message translates to:
  /// **'Keep it private and stored offline.'**
  String get wallet_success_bullet_keep_private;

  /// No description provided for @wallet_success_bullet_now_active.
  ///
  /// In en, this message translates to:
  /// **'Your wallet is now active.'**
  String get wallet_success_bullet_now_active;

  /// No description provided for @wallet_success_cloud_prefix.
  ///
  /// In en, this message translates to:
  /// **'You have cloud backup on your Google drive as '**
  String get wallet_success_cloud_prefix;

  /// No description provided for @wallet_success_cloud_suffix.
  ///
  /// In en, this message translates to:
  /// **'. Your wallet is now active.'**
  String get wallet_success_cloud_suffix;

  /// No description provided for @wallet_success_cloud_no_email.
  ///
  /// In en, this message translates to:
  /// **'You have cloud backup on your Google drive. Your wallet is now active.'**
  String get wallet_success_cloud_no_email;

  /// No description provided for @wallet_success_backed_up_prefix.
  ///
  /// In en, this message translates to:
  /// **'Your wallet is backed up to your Google drive as '**
  String get wallet_success_backed_up_prefix;

  /// No description provided for @wallet_success_logout_suffix.
  ///
  /// In en, this message translates to:
  /// **'. Sign back in anytime to restore it.'**
  String get wallet_success_logout_suffix;

  /// No description provided for @wallet_success_logout_no_email.
  ///
  /// In en, this message translates to:
  /// **'Your wallet is backed up to your Google drive. Sign back in anytime to restore it.'**
  String get wallet_success_logout_no_email;

  /// No description provided for @wallet_success_disconnect_suffix.
  ///
  /// In en, this message translates to:
  /// **'. Sign in and restore your wallet anytime.'**
  String get wallet_success_disconnect_suffix;

  /// No description provided for @wallet_success_disconnect_no_email.
  ///
  /// In en, this message translates to:
  /// **'Your wallet is backed up to your Google drive. Sign in and restore your wallet anytime.'**
  String get wallet_success_disconnect_no_email;

  /// No description provided for @wallet_success_write_down_logout.
  ///
  /// In en, this message translates to:
  /// **'Keep your 12-word recovery phrase safe. Sign back in anytime to restore your wallet.'**
  String get wallet_success_write_down_logout;

  /// No description provided for @wallet_success_write_down_disconnect.
  ///
  /// In en, this message translates to:
  /// **'Keep your 12-word recovery phrase safe. You can restore your wallet anytime from the Bringin app.'**
  String get wallet_success_write_down_disconnect;

  /// No description provided for @wallet_backup_failure_message.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t set up your backup. Please try again.'**
  String get wallet_backup_failure_message;

  /// No description provided for @login_required_title.
  ///
  /// In en, this message translates to:
  /// **'Login Required'**
  String get login_required_title;

  /// No description provided for @login_required_message.
  ///
  /// In en, this message translates to:
  /// **'To use the swap feature, you need to log in to your Bringin account. This allows you to exchange between Bitcoin and Euros.'**
  String get login_required_message;

  /// No description provided for @login_required_action_login_title.
  ///
  /// In en, this message translates to:
  /// **'Login to Bringin'**
  String get login_required_action_login_title;

  /// No description provided for @login_required_action_login_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Access full features including Euro account and swap functionality'**
  String get login_required_action_login_subtitle;

  /// No description provided for @login_required_action_bitcoin_only_title.
  ///
  /// In en, this message translates to:
  /// **'Continue with Bitcoin only'**
  String get login_required_action_bitcoin_only_title;

  /// No description provided for @login_required_action_bitcoin_only_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Keep using your Bitcoin wallet without Euro features'**
  String get login_required_action_bitcoin_only_subtitle;

  /// No description provided for @wallet_bitcoin_label.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin wallet'**
  String get wallet_bitcoin_label;

  /// No description provided for @send_title.
  ///
  /// In en, this message translates to:
  /// **'Send money'**
  String get send_title;

  /// No description provided for @send_action_swipe.
  ///
  /// In en, this message translates to:
  /// **'Swipe to send'**
  String get send_action_swipe;

  /// No description provided for @send_use_full_balance.
  ///
  /// In en, this message translates to:
  /// **'Use the full wallet balance'**
  String get send_use_full_balance;

  /// No description provided for @send_label_recipient_receives.
  ///
  /// In en, this message translates to:
  /// **'Recipient receives'**
  String get send_label_recipient_receives;

  /// No description provided for @send_label_reference.
  ///
  /// In en, this message translates to:
  /// **'Reference'**
  String get send_label_reference;

  /// No description provided for @send_label_transaction_id.
  ///
  /// In en, this message translates to:
  /// **'Transaction ID'**
  String get send_label_transaction_id;

  /// No description provided for @send_label_network_fee.
  ///
  /// In en, this message translates to:
  /// **'Network fee'**
  String get send_label_network_fee;

  /// No description provided for @send_label_total_payable.
  ///
  /// In en, this message translates to:
  /// **'Total payable'**
  String get send_label_total_payable;

  /// No description provided for @send_success_title.
  ///
  /// In en, this message translates to:
  /// **'Sent successfully!'**
  String get send_success_title;

  /// No description provided for @send_pay_to_bringin_address.
  ///
  /// In en, this message translates to:
  /// **'Pay to my Bringin address'**
  String get send_pay_to_bringin_address;

  /// No description provided for @send_sent_to_bringin.
  ///
  /// In en, this message translates to:
  /// **'Sent to Bringin'**
  String get send_sent_to_bringin;

  /// No description provided for @send_to_bringin.
  ///
  /// In en, this message translates to:
  /// **'To Bringin'**
  String get send_to_bringin;

  /// No description provided for @send_lightning_payment_label.
  ///
  /// In en, this message translates to:
  /// **'Lightning payment'**
  String get send_lightning_payment_label;

  /// No description provided for @send_lightning_address_label.
  ///
  /// In en, this message translates to:
  /// **'Lightning Address'**
  String get send_lightning_address_label;

  /// No description provided for @send_entry_title.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send_entry_title;

  /// No description provided for @send_entry_hint.
  ///
  /// In en, this message translates to:
  /// **'Paste your LN Invoice or LN address or BTC address below'**
  String get send_entry_hint;

  /// No description provided for @send_confirm_prompt.
  ///
  /// In en, this message translates to:
  /// **'Do you want to confirm the following details?'**
  String get send_confirm_prompt;

  /// No description provided for @send_confirm_label_amount.
  ///
  /// In en, this message translates to:
  /// **'Amount'**
  String get send_confirm_label_amount;

  /// No description provided for @send_confirm_label_invoice_amount.
  ///
  /// In en, this message translates to:
  /// **'Invoice Amount'**
  String get send_confirm_label_invoice_amount;

  /// No description provided for @send_confirm_label_total_amount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get send_confirm_label_total_amount;

  /// No description provided for @send_confirm_label_description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get send_confirm_label_description;

  /// No description provided for @send_confirm_label_destination.
  ///
  /// In en, this message translates to:
  /// **'Destination'**
  String get send_confirm_label_destination;

  /// No description provided for @send_confirm_label_recipient_address.
  ///
  /// In en, this message translates to:
  /// **'Recipient Address'**
  String get send_confirm_label_recipient_address;

  /// No description provided for @send_fee_calculating.
  ///
  /// In en, this message translates to:
  /// **'Calculating...'**
  String get send_fee_calculating;

  /// No description provided for @send_fee_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown'**
  String get send_fee_unknown;

  /// No description provided for @send_confirm_you_will_pay.
  ///
  /// In en, this message translates to:
  /// **'You will pay'**
  String get send_confirm_you_will_pay;

  /// No description provided for @send_confirm_you_pay.
  ///
  /// In en, this message translates to:
  /// **'You pay '**
  String get send_confirm_you_pay;

  /// No description provided for @send_confirm_incl_fees.
  ///
  /// In en, this message translates to:
  /// **' (incl. fees)'**
  String get send_confirm_incl_fees;

  /// No description provided for @send_confirm_total_suffix.
  ///
  /// In en, this message translates to:
  /// **' total.'**
  String get send_confirm_total_suffix;

  /// No description provided for @send_confirm_amount_sats.
  ///
  /// In en, this message translates to:
  /// **' {sats} sats'**
  String send_confirm_amount_sats(String sats);

  /// No description provided for @send_action_confirm_payment.
  ///
  /// In en, this message translates to:
  /// **'CONFIRM PAYMENT'**
  String get send_action_confirm_payment;

  /// No description provided for @send_action_confirm_send.
  ///
  /// In en, this message translates to:
  /// **'CONFIRM SEND'**
  String get send_action_confirm_send;

  /// No description provided for @send_amount_field_label.
  ///
  /// In en, this message translates to:
  /// **'Amount (sats)'**
  String get send_amount_field_label;

  /// No description provided for @send_amount_error_required.
  ///
  /// In en, this message translates to:
  /// **'Amount is required'**
  String get send_amount_error_required;

  /// No description provided for @send_amount_error_invalid.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid sats amount'**
  String get send_amount_error_invalid;

  /// No description provided for @send_amount_error_below_minimum.
  ///
  /// In en, this message translates to:
  /// **'Minimum amount is {min} sats'**
  String send_amount_error_below_minimum(String min);

  /// No description provided for @send_amount_error_exceeds_balance.
  ///
  /// In en, this message translates to:
  /// **'Amount exceeds your balance of {balance} sats'**
  String send_amount_error_exceeds_balance(String balance);

  /// No description provided for @send_amount_error_rate_unavailable.
  ///
  /// In en, this message translates to:
  /// **'Conversion rate unavailable'**
  String get send_amount_error_rate_unavailable;

  /// No description provided for @send_amount_error_invalid_value.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid amount'**
  String get send_amount_error_invalid_value;

  /// No description provided for @send_amount_error_above_zero.
  ///
  /// In en, this message translates to:
  /// **'Amount must be greater than zero'**
  String get send_amount_error_above_zero;

  /// No description provided for @send_amount_error_insufficient_funds.
  ///
  /// In en, this message translates to:
  /// **'Insufficient funds'**
  String get send_amount_error_insufficient_funds;

  /// No description provided for @send_amount_error_minimum_sats.
  ///
  /// In en, this message translates to:
  /// **'Minimum is {min} sats'**
  String send_amount_error_minimum_sats(int min);

  /// No description provided for @send_amount_error_minimum_btc.
  ///
  /// In en, this message translates to:
  /// **'Minimum is {min} BTC'**
  String send_amount_error_minimum_btc(String min);

  /// No description provided for @send_amount_error_maximum_sats.
  ///
  /// In en, this message translates to:
  /// **'Maximum is {max} sats'**
  String send_amount_error_maximum_sats(int max);

  /// No description provided for @send_amount_convert_from_eur.
  ///
  /// In en, this message translates to:
  /// **'Convert from EUR'**
  String get send_amount_convert_from_eur;

  /// No description provided for @send_amount_prompt_for_destination.
  ///
  /// In en, this message translates to:
  /// **'Enter the amount to send to {destination}'**
  String send_amount_prompt_for_destination(String destination);

  /// No description provided for @send_amount_processing.
  ///
  /// In en, this message translates to:
  /// **'Processing...'**
  String get send_amount_processing;

  /// No description provided for @send_amount_balance.
  ///
  /// In en, this message translates to:
  /// **'Balance: {balance}'**
  String send_amount_balance(String balance);

  /// No description provided for @send_amount_hint_min_prefix.
  ///
  /// In en, this message translates to:
  /// **'Min: '**
  String get send_amount_hint_min_prefix;

  /// No description provided for @send_amount_hint_max_prefix.
  ///
  /// In en, this message translates to:
  /// **'  ·  Max: '**
  String get send_amount_hint_max_prefix;

  /// No description provided for @send_amount_hint_sats_suffix.
  ///
  /// In en, this message translates to:
  /// **' sats.'**
  String get send_amount_hint_sats_suffix;

  /// No description provided for @send_onchain_amount_prompt.
  ///
  /// In en, this message translates to:
  /// **'How much do you want to send?'**
  String get send_onchain_amount_prompt;

  /// No description provided for @send_onchain_loader_checking.
  ///
  /// In en, this message translates to:
  /// **'Checking your payment details.'**
  String get send_onchain_loader_checking;

  /// No description provided for @send_onchain_success_title.
  ///
  /// In en, this message translates to:
  /// **'Payment Sent!'**
  String get send_onchain_success_title;

  /// No description provided for @send_onchain_success_message.
  ///
  /// In en, this message translates to:
  /// **'Onchain payment sent successfully!'**
  String get send_onchain_success_message;

  /// No description provided for @send_onchain_loader_sending.
  ///
  /// In en, this message translates to:
  /// **'Sending your payment. This won\'t take long.'**
  String get send_onchain_loader_sending;

  /// No description provided for @send_error_title.
  ///
  /// In en, this message translates to:
  /// **'Error'**
  String get send_error_title;

  /// No description provided for @send_error_payment_title.
  ///
  /// In en, this message translates to:
  /// **'Payment Error'**
  String get send_error_payment_title;

  /// No description provided for @send_error_payment_failed_title.
  ///
  /// In en, this message translates to:
  /// **'Payment Failed'**
  String get send_error_payment_failed_title;

  /// No description provided for @send_error_unknown_reason.
  ///
  /// In en, this message translates to:
  /// **'Payment failed for unknown reason'**
  String get send_error_unknown_reason;

  /// No description provided for @send_error_payment_detail.
  ///
  /// In en, this message translates to:
  /// **'Payment error: {message}'**
  String send_error_payment_detail(String message);

  /// No description provided for @send_error_generic_detail.
  ///
  /// In en, this message translates to:
  /// **'Error: {message}'**
  String send_error_generic_detail(String message);

  /// No description provided for @action_cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get action_cancel;

  /// No description provided for @mnemonics_phrase_label.
  ///
  /// In en, this message translates to:
  /// **'12-word phrase'**
  String get mnemonics_phrase_label;

  /// No description provided for @mnemonics_caution_title.
  ///
  /// In en, this message translates to:
  /// **'Caution!'**
  String get mnemonics_caution_title;

  /// No description provided for @mnemonics_caution_message.
  ///
  /// In en, this message translates to:
  /// **'This phrase gives access to your Bitcoin. If you lose it, your wallet cannot be recovered—even by Bringin.'**
  String get mnemonics_caution_message;

  /// No description provided for @mnemonics_word_index.
  ///
  /// In en, this message translates to:
  /// **'Word {index}'**
  String mnemonics_word_index(int index);

  /// No description provided for @verify_backup_title.
  ///
  /// In en, this message translates to:
  /// **'Verify back up'**
  String get verify_backup_title;

  /// No description provided for @verify_backup_heading.
  ///
  /// In en, this message translates to:
  /// **'Confirm your recovery phrase.'**
  String get verify_backup_heading;

  /// No description provided for @verify_backup_description.
  ///
  /// In en, this message translates to:
  /// **'Enter the requested words from your 12-word phrase to verify you’ve saved it correctly.'**
  String get verify_backup_description;

  /// No description provided for @verify_backup_hint_word.
  ///
  /// In en, this message translates to:
  /// **'Add word {index}'**
  String verify_backup_hint_word(int index);

  /// No description provided for @verify_backup_error_required.
  ///
  /// In en, this message translates to:
  /// **'This field is required'**
  String get verify_backup_error_required;

  /// No description provided for @verify_backup_error_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Incorrect word'**
  String get verify_backup_error_incorrect;

  /// No description provided for @send_sheet_field_label.
  ///
  /// In en, this message translates to:
  /// **'On-chain/ lightning address or invoice'**
  String get send_sheet_field_label;

  /// No description provided for @send_sheet_error_invalid_input.
  ///
  /// In en, this message translates to:
  /// **'Invalid address or invoice'**
  String get send_sheet_error_invalid_input;

  /// No description provided for @send_sheet_error_parse_failed.
  ///
  /// In en, this message translates to:
  /// **'Could not parse input'**
  String get send_sheet_error_parse_failed;

  /// No description provided for @send_sheet_detected_ln_invoice.
  ///
  /// In en, this message translates to:
  /// **'Lightning invoice detected'**
  String get send_sheet_detected_ln_invoice;

  /// No description provided for @send_sheet_detected_ln_address.
  ///
  /// In en, this message translates to:
  /// **'Lightning address detected'**
  String get send_sheet_detected_ln_address;

  /// No description provided for @send_sheet_detected_btc_address.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin address detected'**
  String get send_sheet_detected_btc_address;

  /// No description provided for @payment_details_title.
  ///
  /// In en, this message translates to:
  /// **'Transaction details'**
  String get payment_details_title;

  /// No description provided for @payment_details_label_payment_type.
  ///
  /// In en, this message translates to:
  /// **'Payment type'**
  String get payment_details_label_payment_type;

  /// No description provided for @payment_details_label_fee.
  ///
  /// In en, this message translates to:
  /// **'Fee'**
  String get payment_details_label_fee;

  /// No description provided for @payment_details_label_status.
  ///
  /// In en, this message translates to:
  /// **'Transaction status'**
  String get payment_details_label_status;

  /// No description provided for @payment_details_label_date.
  ///
  /// In en, this message translates to:
  /// **'Date'**
  String get payment_details_label_date;

  /// No description provided for @payment_details_label_comment.
  ///
  /// In en, this message translates to:
  /// **'Comment'**
  String get payment_details_label_comment;

  /// No description provided for @payment_details_label_lnurl_domain.
  ///
  /// In en, this message translates to:
  /// **'LNURL pay domain'**
  String get payment_details_label_lnurl_domain;

  /// No description provided for @payment_details_label_message.
  ///
  /// In en, this message translates to:
  /// **'Message'**
  String get payment_details_label_message;

  /// No description provided for @payment_details_label_invoice.
  ///
  /// In en, this message translates to:
  /// **'Invoice'**
  String get payment_details_label_invoice;

  /// No description provided for @payment_details_label_preimage.
  ///
  /// In en, this message translates to:
  /// **'Payment preimage'**
  String get payment_details_label_preimage;

  /// No description provided for @payment_details_label_onchain_tx.
  ///
  /// In en, this message translates to:
  /// **'On-chain transaction'**
  String get payment_details_label_onchain_tx;

  /// No description provided for @payment_details_action_view_explorer.
  ///
  /// In en, this message translates to:
  /// **'View on explorer'**
  String get payment_details_action_view_explorer;

  /// No description provided for @payment_details_label_order_id.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get payment_details_label_order_id;

  /// No description provided for @payment_details_label_transaction_type.
  ///
  /// In en, this message translates to:
  /// **'Transaction type'**
  String get payment_details_label_transaction_type;

  /// No description provided for @payment_details_label_amount_btc.
  ///
  /// In en, this message translates to:
  /// **'Amount in Bitcoin'**
  String get payment_details_label_amount_btc;

  /// No description provided for @payment_details_label_amount_eur.
  ///
  /// In en, this message translates to:
  /// **'Amount in Euro'**
  String get payment_details_label_amount_eur;

  /// No description provided for @payment_details_label_deposit_transaction.
  ///
  /// In en, this message translates to:
  /// **'Deposit transaction'**
  String get payment_details_label_deposit_transaction;

  /// No description provided for @payment_details_label_deposit_iban.
  ///
  /// In en, this message translates to:
  /// **'Deposit IBAN'**
  String get payment_details_label_deposit_iban;

  /// No description provided for @payment_details_label_deposit_name.
  ///
  /// In en, this message translates to:
  /// **'Deposit name'**
  String get payment_details_label_deposit_name;

  /// No description provided for @payment_details_label_destination_iban.
  ///
  /// In en, this message translates to:
  /// **'Destination IBAN'**
  String get payment_details_label_destination_iban;

  /// No description provided for @payment_details_label_blockchain_hash.
  ///
  /// In en, this message translates to:
  /// **'Blockchain hash'**
  String get payment_details_label_blockchain_hash;

  /// No description provided for @payment_details_label_rate.
  ///
  /// In en, this message translates to:
  /// **'Rate'**
  String get payment_details_label_rate;

  /// No description provided for @payment_details_label_fees.
  ///
  /// In en, this message translates to:
  /// **'Fees'**
  String get payment_details_label_fees;

  /// No description provided for @payment_details_fee_line_exchange.
  ///
  /// In en, this message translates to:
  /// **'Exchange: {amount}'**
  String payment_details_fee_line_exchange(String amount);

  /// No description provided for @payment_details_fee_line_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'Withdrawal: {amount}'**
  String payment_details_fee_line_withdrawal(String amount);

  /// No description provided for @payment_details_compliance_title.
  ///
  /// In en, this message translates to:
  /// **'Under compliance review'**
  String get payment_details_compliance_title;

  /// No description provided for @payment_details_compliance_description.
  ///
  /// In en, this message translates to:
  /// **'Your transaction is under a routine compliance review by our payment partner. Your funds are safe and we\'ll notify you as soon as the review clears.\n\nThere\'s nothing you need to do. The compliance team will reach out directly if any information is needed from you.\n\nIf the transaction is still pending two days from now, please contact us at support@bringin.xyz.'**
  String get payment_details_compliance_description;

  /// No description provided for @payment_details_action_retry_transaction.
  ///
  /// In en, this message translates to:
  /// **'Retry Transaction'**
  String get payment_details_action_retry_transaction;

  /// No description provided for @payment_details_toast_resumed.
  ///
  /// In en, this message translates to:
  /// **'Transaction resumed successfully'**
  String get payment_details_toast_resumed;

  /// No description provided for @payment_details_error_generic.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong!'**
  String get payment_details_error_generic;

  /// No description provided for @payment_details_error_open_link.
  ///
  /// In en, this message translates to:
  /// **'Failed to open link.'**
  String get payment_details_error_open_link;

  /// No description provided for @payment_details_copied.
  ///
  /// In en, this message translates to:
  /// **'Copied to clipboard'**
  String get payment_details_copied;

  /// No description provided for @payment_status_pending.
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get payment_status_pending;

  /// No description provided for @payment_status_completed.
  ///
  /// In en, this message translates to:
  /// **'Completed'**
  String get payment_status_completed;

  /// No description provided for @payment_status_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed'**
  String get payment_status_failed;

  /// No description provided for @manage_wallet_title.
  ///
  /// In en, this message translates to:
  /// **'Manage Bitcoin wallet'**
  String get manage_wallet_title;

  /// No description provided for @manage_wallet_non_custodial_title.
  ///
  /// In en, this message translates to:
  /// **'Non custodial wallet'**
  String get manage_wallet_non_custodial_title;

  /// No description provided for @manage_wallet_section_details.
  ///
  /// In en, this message translates to:
  /// **'Wallet details'**
  String get manage_wallet_section_details;

  /// No description provided for @manage_wallet_section_transactions.
  ///
  /// In en, this message translates to:
  /// **'Transactions'**
  String get manage_wallet_section_transactions;

  /// No description provided for @manage_wallet_row_backup.
  ///
  /// In en, this message translates to:
  /// **'Wallet backup'**
  String get manage_wallet_row_backup;

  /// No description provided for @manage_wallet_row_disconnect.
  ///
  /// In en, this message translates to:
  /// **'Disconnect wallet'**
  String get manage_wallet_row_disconnect;

  /// No description provided for @manage_wallet_no_recovery_phrase.
  ///
  /// In en, this message translates to:
  /// **'No recovery phrase available.'**
  String get manage_wallet_no_recovery_phrase;

  /// No description provided for @manage_wallet_not_backed_up_banner.
  ///
  /// In en, this message translates to:
  /// **'Wallet not backed up. Backup your wallet'**
  String get manage_wallet_not_backed_up_banner;

  /// No description provided for @manage_wallet_disconnect_confirm_title.
  ///
  /// In en, this message translates to:
  /// **'Disconnect wallet?'**
  String get manage_wallet_disconnect_confirm_title;

  /// No description provided for @manage_wallet_disconnect_confirm_message.
  ///
  /// In en, this message translates to:
  /// **'Your Bitcoin wallet will be removed from this device. You’ll stay signed in to Bringin. If you have your recovery phrase, you can restore this wallet later.'**
  String get manage_wallet_disconnect_confirm_message;

  /// No description provided for @manage_wallet_disconnect_payment_in_progress.
  ///
  /// In en, this message translates to:
  /// **'You have a payment in progress. Disconnecting now may interrupt it.'**
  String get manage_wallet_disconnect_payment_in_progress;

  /// No description provided for @manage_wallet_action_disconnect.
  ///
  /// In en, this message translates to:
  /// **'Disconnect'**
  String get manage_wallet_action_disconnect;

  /// No description provided for @manage_wallet_action_disconnect_anyway.
  ///
  /// In en, this message translates to:
  /// **'I understand, disconnect anyway'**
  String get manage_wallet_action_disconnect_anyway;

  /// No description provided for @manage_wallet_secure_now_title.
  ///
  /// In en, this message translates to:
  /// **'Secure your Bitcoin now'**
  String get manage_wallet_secure_now_title;

  /// No description provided for @manage_wallet_secure_now_message.
  ///
  /// In en, this message translates to:
  /// **'Your wallet isn’t backed up. If you lose access, your Bitcoin will be permanently lost.'**
  String get manage_wallet_secure_now_message;

  /// No description provided for @manage_wallet_secure_now_note.
  ///
  /// In en, this message translates to:
  /// **'Bringin cannot recover it, as we do not store your keys.'**
  String get manage_wallet_secure_now_note;

  /// No description provided for @action_retry.
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get action_retry;

  /// Shared button label: verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get action_verify;

  /// No description provided for @label_from.
  ///
  /// In en, this message translates to:
  /// **'From'**
  String get label_from;

  /// No description provided for @label_to.
  ///
  /// In en, this message translates to:
  /// **'To'**
  String get label_to;

  /// No description provided for @error_unknown.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred'**
  String get error_unknown;

  /// No description provided for @receive_amount_sats.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{1 sat} other{{count} sats}}'**
  String receive_amount_sats(int count);

  /// No description provided for @receive_payment_received.
  ///
  /// In en, this message translates to:
  /// **'Payment received: {amount}'**
  String receive_payment_received(String amount);

  /// No description provided for @add_money_title.
  ///
  /// In en, this message translates to:
  /// **'Add money'**
  String get add_money_title;

  /// No description provided for @add_money_scan_qr.
  ///
  /// In en, this message translates to:
  /// **'Scan QR to add money.'**
  String get add_money_scan_qr;

  /// No description provided for @add_money_scan_qr_with_fee.
  ///
  /// In en, this message translates to:
  /// **'Scan QR to add money. A flat fee of {fee} sats applicable.'**
  String add_money_scan_qr_with_fee(String fee);

  /// No description provided for @add_money_scan_qr_with_estimated_fee.
  ///
  /// In en, this message translates to:
  /// **'Scan QR to add money. A flat fee of ~{fee} sats applicable.'**
  String add_money_scan_qr_with_estimated_fee(String fee);

  /// No description provided for @add_money_scan_qr_fixed_invoice.
  ///
  /// In en, this message translates to:
  /// **'Scan QR to add money. Add amount for fixed invoice.'**
  String get add_money_scan_qr_fixed_invoice;

  /// No description provided for @add_money_use_bitcoin_wallet.
  ///
  /// In en, this message translates to:
  /// **'Use your Bitcoin wallet'**
  String get add_money_use_bitcoin_wallet;

  /// No description provided for @add_money_use_lightning_wallet.
  ///
  /// In en, this message translates to:
  /// **'Use your Lightning wallet'**
  String get add_money_use_lightning_wallet;

  /// No description provided for @add_money_label_onchain_address.
  ///
  /// In en, this message translates to:
  /// **'On-chain address'**
  String get add_money_label_onchain_address;

  /// No description provided for @add_money_label_invoice_amount.
  ///
  /// In en, this message translates to:
  /// **'Invoice amount'**
  String get add_money_label_invoice_amount;

  /// No description provided for @add_money_label_invoice_code.
  ///
  /// In en, this message translates to:
  /// **'Invoice code'**
  String get add_money_label_invoice_code;

  /// No description provided for @add_money_ln_address_unavailable.
  ///
  /// In en, this message translates to:
  /// **'Lightning address not available'**
  String get add_money_ln_address_unavailable;

  /// No description provided for @receive_label_transaction_link.
  ///
  /// In en, this message translates to:
  /// **'Transaction link'**
  String get receive_label_transaction_link;

  /// No description provided for @receive_label_transaction_fees.
  ///
  /// In en, this message translates to:
  /// **'Transaction fees'**
  String get receive_label_transaction_fees;

  /// No description provided for @receive_label_exchange_rate.
  ///
  /// In en, this message translates to:
  /// **'Exchange rate'**
  String get receive_label_exchange_rate;

  /// No description provided for @eur_amount_field_label.
  ///
  /// In en, this message translates to:
  /// **'Amount in EUR'**
  String get eur_amount_field_label;

  /// No description provided for @eur_amount_error_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid amount'**
  String get eur_amount_error_invalid;

  /// No description provided for @eur_amount_rate.
  ///
  /// In en, this message translates to:
  /// **'1 BTC = {rate} EUR'**
  String eur_amount_rate(String rate);

  /// No description provided for @fees_type_payment_request.
  ///
  /// In en, this message translates to:
  /// **'payment request'**
  String get fees_type_payment_request;

  /// No description provided for @fees_message.
  ///
  /// In en, this message translates to:
  /// **'A fee of {fee} sats is applied to this {type}.{warning}'**
  String fees_message(String fee, String type, String warning);

  /// No description provided for @create_invoice_title.
  ///
  /// In en, this message translates to:
  /// **'Bringin Invoice'**
  String get create_invoice_title;

  /// No description provided for @create_invoice_error_parse.
  ///
  /// In en, this message translates to:
  /// **'Failed to parse invoice'**
  String get create_invoice_error_parse;

  /// No description provided for @create_invoice_prompt.
  ///
  /// In en, this message translates to:
  /// **'Enter the amount and description for the invoice'**
  String get create_invoice_prompt;

  /// No description provided for @create_invoice_amount_label.
  ///
  /// In en, this message translates to:
  /// **'Amount in sats'**
  String get create_invoice_amount_label;

  /// No description provided for @create_invoice_minimum_hint.
  ///
  /// In en, this message translates to:
  /// **'Minimum amount: {min} sats'**
  String create_invoice_minimum_hint(String min);

  /// No description provided for @create_invoice_error_description_required.
  ///
  /// In en, this message translates to:
  /// **'Description is required'**
  String get create_invoice_error_description_required;

  /// No description provided for @create_invoice_error_description_too_long.
  ///
  /// In en, this message translates to:
  /// **'Description must be 280 characters or less'**
  String get create_invoice_error_description_too_long;

  /// No description provided for @create_invoice_action_creating.
  ///
  /// In en, this message translates to:
  /// **'Creating...'**
  String get create_invoice_action_creating;

  /// No description provided for @receive_address_generating.
  ///
  /// In en, this message translates to:
  /// **'Generating Bitcoin address...'**
  String get receive_address_generating;

  /// No description provided for @receive_address_error_generate.
  ///
  /// In en, this message translates to:
  /// **'Failed to generate address'**
  String get receive_address_error_generate;

  /// No description provided for @receive_address_qr_instruction.
  ///
  /// In en, this message translates to:
  /// **'Please scan the QR code from any Bitcoin wallet to complete the payment.'**
  String get receive_address_qr_instruction;

  /// No description provided for @receive_address_estimated_fee.
  ///
  /// In en, this message translates to:
  /// **'Estimated claim fee: {fee} sats'**
  String receive_address_estimated_fee(String fee);

  /// No description provided for @receive_address_estimated_fee_variable.
  ///
  /// In en, this message translates to:
  /// **'Estimated claim fee: ~{fee} sats (may vary with network conditions)'**
  String receive_address_estimated_fee_variable(String fee);

  /// No description provided for @receive_address_fee_note.
  ///
  /// In en, this message translates to:
  /// **'A small fee will be deducted upon deposit.'**
  String get receive_address_fee_note;

  /// No description provided for @receive_address_confirm_note.
  ///
  /// In en, this message translates to:
  /// **'Most payments confirm within an hour, but sometimes it can take longer.'**
  String get receive_address_confirm_note;

  /// No description provided for @receive_deposit_waiting.
  ///
  /// In en, this message translates to:
  /// **'Waiting for payment...'**
  String get receive_deposit_waiting;

  /// No description provided for @receive_deposit_on_the_way.
  ///
  /// In en, this message translates to:
  /// **'+ {sats} sats on the way'**
  String receive_deposit_on_the_way(String sats);

  /// No description provided for @receive_deposit_on_the_way_conf.
  ///
  /// In en, this message translates to:
  /// **'+ {sats} sats on the way ({confirmations}/3 conf)'**
  String receive_deposit_on_the_way_conf(String sats, int confirmations);

  /// No description provided for @receive_deposit_claiming.
  ///
  /// In en, this message translates to:
  /// **'Claiming {sats} sats...'**
  String receive_deposit_claiming(String sats);

  /// No description provided for @receive_deposit_claimed.
  ///
  /// In en, this message translates to:
  /// **'Deposit claimed!'**
  String get receive_deposit_claimed;

  /// No description provided for @receive_deposit_confirmed.
  ///
  /// In en, this message translates to:
  /// **'{sats} sats confirmed — claiming soon...'**
  String receive_deposit_confirmed(String sats);

  /// No description provided for @buy_confirm_label_transaction_fee.
  ///
  /// In en, this message translates to:
  /// **'Transaction Fee'**
  String get buy_confirm_label_transaction_fee;

  /// No description provided for @buy_confirm_label_processing_fee.
  ///
  /// In en, this message translates to:
  /// **'Processing Fee'**
  String get buy_confirm_label_processing_fee;

  /// No description provided for @buy_confirm_label_liquid_network_fee.
  ///
  /// In en, this message translates to:
  /// **'Liquid Network Fee'**
  String get buy_confirm_label_liquid_network_fee;

  /// No description provided for @buy_confirm_label_discount.
  ///
  /// In en, this message translates to:
  /// **'Discount - Transaction Fee ({percentage}%)'**
  String buy_confirm_label_discount(String percentage);

  /// No description provided for @buy_confirm_you_pay_approx.
  ///
  /// In en, this message translates to:
  /// **'You pay ~'**
  String get buy_confirm_you_pay_approx;

  /// No description provided for @buy_confirm_network_fee_suffix.
  ///
  /// In en, this message translates to:
  /// **' + {sats} sats network fee'**
  String buy_confirm_network_fee_suffix(String sats);

  /// No description provided for @buy_confirm_error_insufficient_funds.
  ///
  /// In en, this message translates to:
  /// **'Insufficient funds to pay'**
  String get buy_confirm_error_insufficient_funds;

  /// No description provided for @buy_confirm_error_status_failed.
  ///
  /// In en, this message translates to:
  /// **'Transaction status failed!'**
  String get buy_confirm_error_status_failed;

  /// No description provided for @buy_confirm_error_generic.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again later.'**
  String get buy_confirm_error_generic;

  /// No description provided for @buy_confirm_loader_preparing.
  ///
  /// In en, this message translates to:
  /// **'Getting things ready for you.'**
  String get buy_confirm_loader_preparing;

  /// No description provided for @buy_confirm_loader_confirming.
  ///
  /// In en, this message translates to:
  /// **'Getting everything ready.'**
  String get buy_confirm_loader_confirming;

  /// No description provided for @buy_confirm_status_verifying.
  ///
  /// In en, this message translates to:
  /// **'Verifying, one moment.'**
  String get buy_confirm_status_verifying;

  /// No description provided for @buy_confirm_status_almost_there.
  ///
  /// In en, this message translates to:
  /// **'Almost there, just a moment.'**
  String get buy_confirm_status_almost_there;

  /// No description provided for @buy_confirm_status_finishing.
  ///
  /// In en, this message translates to:
  /// **'Looking good! Finishing up.'**
  String get buy_confirm_status_finishing;

  /// No description provided for @buy_confirm_status_on_the_way.
  ///
  /// In en, this message translates to:
  /// **'Your Bitcoin is on its way. Hang tight!'**
  String get buy_confirm_status_on_the_way;

  /// No description provided for @buy_invoice_loader_generating.
  ///
  /// In en, this message translates to:
  /// **'Generating your invoice.'**
  String get buy_invoice_loader_generating;

  /// No description provided for @buy_invoice_default_description.
  ///
  /// In en, this message translates to:
  /// **'Top Up - Buy Bitcoin to Breez'**
  String get buy_invoice_default_description;

  /// No description provided for @restore_phrase_title.
  ///
  /// In en, this message translates to:
  /// **'Use recovery phrase'**
  String get restore_phrase_title;

  /// No description provided for @restore_phrase_instruction.
  ///
  /// In en, this message translates to:
  /// **'Type in your complete 12-word recovery phrase.'**
  String get restore_phrase_instruction;

  /// No description provided for @restore_phrase_word_hint.
  ///
  /// In en, this message translates to:
  /// **'Add word {index}'**
  String restore_phrase_word_hint(int index);

  /// No description provided for @restore_phrase_action_submit.
  ///
  /// In en, this message translates to:
  /// **'Recover wallet'**
  String get restore_phrase_action_submit;

  /// No description provided for @restore_phrase_error_required.
  ///
  /// In en, this message translates to:
  /// **'Required'**
  String get restore_phrase_error_required;

  /// No description provided for @restore_phrase_error_invalid_word.
  ///
  /// In en, this message translates to:
  /// **'Invalid word'**
  String get restore_phrase_error_invalid_word;

  /// No description provided for @restore_password_title.
  ///
  /// In en, this message translates to:
  /// **'Your cloud password'**
  String get restore_password_title;

  /// No description provided for @restore_password_message.
  ///
  /// In en, this message translates to:
  /// **'Access your back up with the password you used for your cloud backup.'**
  String get restore_password_message;

  /// No description provided for @restore_password_action_unlock.
  ///
  /// In en, this message translates to:
  /// **'Access backup'**
  String get restore_password_action_unlock;

  /// No description provided for @restore_password_error_incorrect.
  ///
  /// In en, this message translates to:
  /// **'Incorrect password. Please try again.'**
  String get restore_password_error_incorrect;

  /// No description provided for @action_delete.
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get action_delete;

  /// No description provided for @action_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get action_confirm;

  /// No description provided for @connect_copied_lightning_address.
  ///
  /// In en, this message translates to:
  /// **'Lightning address copied to clipboard'**
  String get connect_copied_lightning_address;

  /// No description provided for @connect_copied_address.
  ///
  /// In en, this message translates to:
  /// **'Address copied to clipboard'**
  String get connect_copied_address;

  /// No description provided for @connect_copied_iban.
  ///
  /// In en, this message translates to:
  /// **'IBAN copied to clipboard'**
  String get connect_copied_iban;

  /// No description provided for @connect_destination_bank.
  ///
  /// In en, this message translates to:
  /// **'your bank'**
  String get connect_destination_bank;

  /// No description provided for @connect_destination_wallet.
  ///
  /// In en, this message translates to:
  /// **'your wallet'**
  String get connect_destination_wallet;

  /// No description provided for @connect_success_title.
  ///
  /// In en, this message translates to:
  /// **'You\'re all set!'**
  String get connect_success_title;

  /// No description provided for @connect_success_message.
  ///
  /// In en, this message translates to:
  /// **'You\'ve created a permanent connection.'**
  String get connect_success_message;

  /// No description provided for @connect_success_instruction_lightning.
  ///
  /// In en, this message translates to:
  /// **'Send BTC via Lightning to this address — it\'ll arrive as euros in your bank, instantly.'**
  String get connect_success_instruction_lightning;

  /// No description provided for @connect_success_label_lightning_address.
  ///
  /// In en, this message translates to:
  /// **'Your Lightning address:'**
  String get connect_success_label_lightning_address;

  /// No description provided for @connect_success_instruction_onchain.
  ///
  /// In en, this message translates to:
  /// **'Send BTC to this address from any wallet — it\'ll arrive as euros in your bank, instantly.'**
  String get connect_success_instruction_onchain;

  /// No description provided for @connect_success_label_btc_address.
  ///
  /// In en, this message translates to:
  /// **'Your dedicated Bitcoin deposit address:'**
  String get connect_success_label_btc_address;

  /// No description provided for @connect_success_instruction_viban.
  ///
  /// In en, this message translates to:
  /// **'Send euros to this vIBAN from any bank — they\'ll arrive as Bitcoin in {destination}, instantly.'**
  String connect_success_instruction_viban(String destination);

  /// No description provided for @connect_success_label_viban.
  ///
  /// In en, this message translates to:
  /// **'Your dedicated vIBAN:'**
  String get connect_success_label_viban;

  /// No description provided for @connect_limits_heading.
  ///
  /// In en, this message translates to:
  /// **'Allowed limits per transaction:'**
  String get connect_limits_heading;

  /// No description provided for @connect_limit_min.
  ///
  /// In en, this message translates to:
  /// **'Min: 30 €'**
  String get connect_limit_min;

  /// No description provided for @connect_limit_max.
  ///
  /// In en, this message translates to:
  /// **'Max: {max} €'**
  String connect_limit_max(String max);

  /// No description provided for @connect_manage_note.
  ///
  /// In en, this message translates to:
  /// **'You may manage your connection anytime from Bringin Connect.'**
  String get connect_manage_note;

  /// No description provided for @connect_action_go_to_connect.
  ///
  /// In en, this message translates to:
  /// **'Go to Bringin Connect'**
  String get connect_action_go_to_connect;

  /// No description provided for @connect_sell_success_title.
  ///
  /// In en, this message translates to:
  /// **'Your sell connection is ready!'**
  String get connect_sell_success_title;

  /// No description provided for @connect_sell_label_lightning_address.
  ///
  /// In en, this message translates to:
  /// **'Your lightning address'**
  String get connect_sell_label_lightning_address;

  /// No description provided for @connect_sell_label_btc_address.
  ///
  /// In en, this message translates to:
  /// **'Your Bitcoin address'**
  String get connect_sell_label_btc_address;

  /// No description provided for @connect_sell_instruction_lightning.
  ///
  /// In en, this message translates to:
  /// **'Send Bitcoin from any wallet to this lightning address— funds arrive instantly as euros in your account.'**
  String get connect_sell_instruction_lightning;

  /// No description provided for @connect_sell_instruction_onchain.
  ///
  /// In en, this message translates to:
  /// **'Send Bitcoin from any wallet to this Bitcoin address— funds arrive instantly as euros in your account.'**
  String get connect_sell_instruction_onchain;

  /// No description provided for @connect_buy_success_title.
  ///
  /// In en, this message translates to:
  /// **'Your buy connection is ready!'**
  String get connect_buy_success_title;

  /// No description provided for @connect_buy_label_viban.
  ///
  /// In en, this message translates to:
  /// **'Your dedicated vIBAN'**
  String get connect_buy_label_viban;

  /// No description provided for @connect_buy_instruction_viban.
  ///
  /// In en, this message translates to:
  /// **'Send Bitcoin from any bank to this vIBAN— funds arrive instantly as Bitcoin in your wallet.'**
  String get connect_buy_instruction_viban;

  /// No description provided for @connect_loader_rotating_1.
  ///
  /// In en, this message translates to:
  /// **'The hamsters powering our servers are running extra fast.'**
  String get connect_loader_rotating_1;

  /// No description provided for @connect_loader_rotating_2.
  ///
  /// In en, this message translates to:
  /// **'Brewing your connection with extra care...'**
  String get connect_loader_rotating_2;

  /// No description provided for @connect_loader_rotating_3.
  ///
  /// In en, this message translates to:
  /// **'Hang tight — this is the boring part so you don\'t have to deal with it.'**
  String get connect_loader_rotating_3;

  /// No description provided for @connect_loader_rotating_4.
  ///
  /// In en, this message translates to:
  /// **'Still here? Great. So are we. Working on it.'**
  String get connect_loader_rotating_4;

  /// No description provided for @connect_loader_deleting_1.
  ///
  /// In en, this message translates to:
  /// **'Cleaning things up for you...'**
  String get connect_loader_deleting_1;

  /// No description provided for @connect_loader_deleting_2.
  ///
  /// In en, this message translates to:
  /// **'Removing the connection safely...'**
  String get connect_loader_deleting_2;

  /// No description provided for @connect_loader_deleting_3.
  ///
  /// In en, this message translates to:
  /// **'Hang tight — almost done.'**
  String get connect_loader_deleting_3;

  /// No description provided for @connect_loader_deleting_4.
  ///
  /// In en, this message translates to:
  /// **'Still here? Great. Wrapping up.'**
  String get connect_loader_deleting_4;

  /// No description provided for @connect_loader_finalising_deletion.
  ///
  /// In en, this message translates to:
  /// **'Finalising the deletion...'**
  String get connect_loader_finalising_deletion;

  /// No description provided for @connect_loader_final_touches.
  ///
  /// In en, this message translates to:
  /// **'Putting the final touches on your connection...'**
  String get connect_loader_final_touches;

  /// No description provided for @connect_loader_almost_done.
  ///
  /// In en, this message translates to:
  /// **'Almost done! Just a few more seconds.'**
  String get connect_loader_almost_done;

  /// No description provided for @connect_loader_may_take_minutes.
  ///
  /// In en, this message translates to:
  /// **'It may take a couple of minutes.'**
  String get connect_loader_may_take_minutes;

  /// No description provided for @connect_buy_loader_1.
  ///
  /// In en, this message translates to:
  /// **'Getting things ready...'**
  String get connect_buy_loader_1;

  /// No description provided for @connect_buy_loader_2.
  ///
  /// In en, this message translates to:
  /// **'Almost there...'**
  String get connect_buy_loader_2;

  /// No description provided for @connect_buy_loader_3.
  ///
  /// In en, this message translates to:
  /// **'Setting things up...'**
  String get connect_buy_loader_3;

  /// No description provided for @connect_buy_loader_4.
  ///
  /// In en, this message translates to:
  /// **'Finishing up...'**
  String get connect_buy_loader_4;

  /// No description provided for @connect_error_verify_failed.
  ///
  /// In en, this message translates to:
  /// **'Unable to verify connection. Please try again.'**
  String get connect_error_verify_failed;

  /// No description provided for @connect_error_setup_failed.
  ///
  /// In en, this message translates to:
  /// **'Connection setup failed. Please try again.'**
  String get connect_error_setup_failed;

  /// No description provided for @connect_error_resume_verification.
  ///
  /// In en, this message translates to:
  /// **'Unable to resume verification. Please try again.'**
  String get connect_error_resume_verification;

  /// No description provided for @connect_error_timeout.
  ///
  /// In en, this message translates to:
  /// **'Taking longer than expected. Check your connection and try again.'**
  String get connect_error_timeout;

  /// No description provided for @connect_error_network.
  ///
  /// In en, this message translates to:
  /// **'Network unavailable. Please check your connection and try again.'**
  String get connect_error_network;

  /// No description provided for @connect_label_required.
  ///
  /// In en, this message translates to:
  /// **'Label is required'**
  String get connect_label_required;

  /// No description provided for @connect_label_too_short.
  ///
  /// In en, this message translates to:
  /// **'Label must be at least {min} characters'**
  String connect_label_too_short(int min);

  /// No description provided for @connect_label_duplicate.
  ///
  /// In en, this message translates to:
  /// **'This name is already used'**
  String get connect_label_duplicate;

  /// No description provided for @connect_buy_setup_title.
  ///
  /// In en, this message translates to:
  /// **'Setup a buy connection'**
  String get connect_buy_setup_title;

  /// No description provided for @connect_buy_setup_description.
  ///
  /// In en, this message translates to:
  /// **'Link your Bitcoin wallet to get a dedicated vIBAN. Send euros from any bank—funds arrive instantly as BTC in your wallet.'**
  String get connect_buy_setup_description;

  /// No description provided for @connect_field_label.
  ///
  /// In en, this message translates to:
  /// **'Label'**
  String get connect_field_label;

  /// No description provided for @connect_field_label_hint_suffix.
  ///
  /// In en, this message translates to:
  /// **'(Destination name)'**
  String get connect_field_label_hint_suffix;

  /// No description provided for @connect_buy_field_label_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Blue wallet'**
  String get connect_buy_field_label_placeholder;

  /// No description provided for @connect_buy_select_wallet.
  ///
  /// In en, this message translates to:
  /// **'Select/ add your wallet'**
  String get connect_buy_select_wallet;

  /// No description provided for @connect_buy_label_address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get connect_buy_label_address;

  /// No description provided for @connect_buy_error_load_addresses.
  ///
  /// In en, this message translates to:
  /// **'Failed to load addresses'**
  String get connect_buy_error_load_addresses;

  /// No description provided for @connect_buy_no_wallets.
  ///
  /// In en, this message translates to:
  /// **'No onchain wallets found. Tap + to add one.'**
  String get connect_buy_no_wallets;

  /// No description provided for @connect_buy_all_wallets_connected.
  ///
  /// In en, this message translates to:
  /// **'All your onchain wallets already have a buy connection. Tap + to add a new wallet.'**
  String get connect_buy_all_wallets_connected;

  /// No description provided for @add_wallet_page_title.
  ///
  /// In en, this message translates to:
  /// **'Add a new wallet'**
  String get add_wallet_page_title;

  /// No description provided for @add_wallet_hint_address.
  ///
  /// In en, this message translates to:
  /// **'Paste an address'**
  String get add_wallet_hint_address;

  /// No description provided for @add_wallet_label_field.
  ///
  /// In en, this message translates to:
  /// **'Wallet label'**
  String get add_wallet_label_field;

  /// No description provided for @add_wallet_hint_label.
  ///
  /// In en, this message translates to:
  /// **'Add a label for this wallet'**
  String get add_wallet_hint_label;

  /// No description provided for @add_wallet_action_add.
  ///
  /// In en, this message translates to:
  /// **'Add wallet'**
  String get add_wallet_action_add;

  /// No description provided for @add_wallet_error_onchain_only.
  ///
  /// In en, this message translates to:
  /// **'Only Bitcoin on-chain addresses are supported'**
  String get add_wallet_error_onchain_only;

  /// No description provided for @add_wallet_error_invalid_address.
  ///
  /// In en, this message translates to:
  /// **'Invalid Bitcoin address'**
  String get add_wallet_error_invalid_address;

  /// No description provided for @add_wallet_error_activation_failed_retry.
  ///
  /// In en, this message translates to:
  /// **'Address could not be activated. Try again.'**
  String get add_wallet_error_activation_failed_retry;

  /// No description provided for @add_wallet_error_not_found.
  ///
  /// In en, this message translates to:
  /// **'Address not found. Try again.'**
  String get add_wallet_error_not_found;

  /// No description provided for @add_wallet_error_activation_failed.
  ///
  /// In en, this message translates to:
  /// **'Address activation failed.'**
  String get add_wallet_error_activation_failed;

  /// No description provided for @add_wallet_error_verify_failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to verify address. Try again.'**
  String get add_wallet_error_verify_failed;

  /// No description provided for @connect_verify_buy_title.
  ///
  /// In en, this message translates to:
  /// **'Verify buy connection'**
  String get connect_verify_buy_title;

  /// No description provided for @connect_verify_passkey_prompt.
  ///
  /// In en, this message translates to:
  /// **'Authenticate with your passkey.'**
  String get connect_verify_passkey_prompt;

  /// No description provided for @connect_verify_totp_prompt.
  ///
  /// In en, this message translates to:
  /// **'Enter the code from your authenticator app.'**
  String get connect_verify_totp_prompt;

  /// No description provided for @connect_verify_sms_prompt_prefix.
  ///
  /// In en, this message translates to:
  /// **'Add the verification code sent to your '**
  String get connect_verify_sms_prompt_prefix;

  /// No description provided for @connect_verify_sms_prompt_target.
  ///
  /// In en, this message translates to:
  /// **'mobile number '**
  String get connect_verify_sms_prompt_target;

  /// No description provided for @connect_verify_action_submit.
  ///
  /// In en, this message translates to:
  /// **'Submit'**
  String get connect_verify_action_submit;

  /// No description provided for @connect_verify_action_passkey.
  ///
  /// In en, this message translates to:
  /// **'Verify with passkey'**
  String get connect_verify_action_passkey;

  /// No description provided for @connect_verify_action_passkey_retry.
  ///
  /// In en, this message translates to:
  /// **'Try passkey again'**
  String get connect_verify_action_passkey_retry;

  /// No description provided for @connect_verify_action_use_sms.
  ///
  /// In en, this message translates to:
  /// **'Use SMS instead'**
  String get connect_verify_action_use_sms;

  /// No description provided for @connect_verify_field_label.
  ///
  /// In en, this message translates to:
  /// **'Enter code'**
  String get connect_verify_field_label;

  /// No description provided for @connect_verify_error_generic.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Try again.'**
  String get connect_verify_error_generic;

  /// No description provided for @connect_verify_error_resend.
  ///
  /// In en, this message translates to:
  /// **'Failed to resend code. Try again.'**
  String get connect_verify_error_resend;

  /// No description provided for @connect_verify_error_sms_switch.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t switch to SMS. Try again.'**
  String get connect_verify_error_sms_switch;

  /// No description provided for @connect_verify_error_cancel.
  ///
  /// In en, this message translates to:
  /// **'Failed to cancel. Please try again.'**
  String get connect_verify_error_cancel;

  /// No description provided for @connect_verify_cancel_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Cancel connection setup?'**
  String get connect_verify_cancel_dialog_title;

  /// No description provided for @connect_verify_cancel_dialog_message.
  ///
  /// In en, this message translates to:
  /// **'If you go back now, the connection setup will be cancelled. You can start again anytime.'**
  String get connect_verify_cancel_dialog_message;

  /// No description provided for @connect_verify_cancel_dialog_confirm.
  ///
  /// In en, this message translates to:
  /// **'Cancel setup'**
  String get connect_verify_cancel_dialog_confirm;

  /// No description provided for @connect_sell_setup_title.
  ///
  /// In en, this message translates to:
  /// **'Setup a sell connection'**
  String get connect_sell_setup_title;

  /// No description provided for @connect_sell_setup_description.
  ///
  /// In en, this message translates to:
  /// **'Link your bank account to get a dedicated Bitcoin address. Send Bitcoin from any wallet—funds arrive instantly as euros in your account.'**
  String get connect_sell_setup_description;

  /// No description provided for @connect_sell_field_label_placeholder.
  ///
  /// In en, this message translates to:
  /// **'Wise'**
  String get connect_sell_field_label_placeholder;

  /// No description provided for @connect_sell_toast_beneficiary_added.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary added'**
  String get connect_sell_toast_beneficiary_added;

  /// No description provided for @connect_sell_error_ln_address_required.
  ///
  /// In en, this message translates to:
  /// **'Lightning address is required'**
  String get connect_sell_error_ln_address_required;

  /// No description provided for @connect_sell_error_ln_address_length.
  ///
  /// In en, this message translates to:
  /// **'Must be {min}-{max} characters'**
  String connect_sell_error_ln_address_length(int min, int max);

  /// No description provided for @connect_sell_error_ln_address_charset.
  ///
  /// In en, this message translates to:
  /// **'Only lowercase letters, numbers, hyphens and underscores allowed'**
  String get connect_sell_error_ln_address_charset;

  /// No description provided for @connect_sell_ln_address_heading.
  ///
  /// In en, this message translates to:
  /// **'Create your Lightning address'**
  String get connect_sell_ln_address_heading;

  /// No description provided for @connect_sell_ln_address_description.
  ///
  /// In en, this message translates to:
  /// **'Claim a unique Lightning address for your bank. We recommend including your bank name for clarity (e.g. yourname_bankname).'**
  String get connect_sell_ln_address_description;

  /// No description provided for @connect_sell_ln_address_hint.
  ///
  /// In en, this message translates to:
  /// **'Add username/ handle'**
  String get connect_sell_ln_address_hint;

  /// No description provided for @connect_sell_network_type.
  ///
  /// In en, this message translates to:
  /// **'Network type'**
  String get connect_sell_network_type;

  /// No description provided for @connect_sell_network_onchain_title.
  ///
  /// In en, this message translates to:
  /// **'On-chain'**
  String get connect_sell_network_onchain_title;

  /// No description provided for @connect_sell_network_onchain_description.
  ///
  /// In en, this message translates to:
  /// **'We will generate the address for you.'**
  String get connect_sell_network_onchain_description;

  /// No description provided for @connect_sell_network_lightning_title.
  ///
  /// In en, this message translates to:
  /// **'Lightning'**
  String get connect_sell_network_lightning_title;

  /// No description provided for @connect_sell_network_lightning_description.
  ///
  /// In en, this message translates to:
  /// **'You can create your own username/ handle.'**
  String get connect_sell_network_lightning_description;

  /// No description provided for @connect_sell_select_bank.
  ///
  /// In en, this message translates to:
  /// **'Select/ add your bank'**
  String get connect_sell_select_bank;

  /// No description provided for @connect_sell_error_load_banks.
  ///
  /// In en, this message translates to:
  /// **'Failed to load bank accounts'**
  String get connect_sell_error_load_banks;

  /// No description provided for @connect_sell_no_banks.
  ///
  /// In en, this message translates to:
  /// **'No bank accounts yet. Tap + to add one.'**
  String get connect_sell_no_banks;

  /// No description provided for @connect_sell_bank_has_connections.
  ///
  /// In en, this message translates to:
  /// **'There are existing connections with this bank.'**
  String get connect_sell_bank_has_connections;

  /// No description provided for @connect_sell_bank_has_onchain.
  ///
  /// In en, this message translates to:
  /// **'There is an on-chain connection with this bank.'**
  String get connect_sell_bank_has_onchain;

  /// No description provided for @connect_sell_bank_has_lightning.
  ///
  /// In en, this message translates to:
  /// **'There is a lightning connection with this bank.'**
  String get connect_sell_bank_has_lightning;

  /// No description provided for @connect_verify_sell_title.
  ///
  /// In en, this message translates to:
  /// **'Verify sell connection'**
  String get connect_verify_sell_title;

  /// No description provided for @connect_detail_fallback_name_buy.
  ///
  /// In en, this message translates to:
  /// **'Buy Connection'**
  String get connect_detail_fallback_name_buy;

  /// No description provided for @connect_detail_fallback_name_sell.
  ///
  /// In en, this message translates to:
  /// **'Sell Connection'**
  String get connect_detail_fallback_name_sell;

  /// No description provided for @connect_detail_type_buy.
  ///
  /// In en, this message translates to:
  /// **'Buy connection'**
  String get connect_detail_type_buy;

  /// No description provided for @connect_detail_type_sell.
  ///
  /// In en, this message translates to:
  /// **'Sell connection'**
  String get connect_detail_type_sell;

  /// No description provided for @connect_detail_deposit_label_viban.
  ///
  /// In en, this message translates to:
  /// **'Your dedicated vIBAN'**
  String get connect_detail_deposit_label_viban;

  /// No description provided for @connect_detail_deposit_label_ln.
  ///
  /// In en, this message translates to:
  /// **'Your dedicated Lightning address'**
  String get connect_detail_deposit_label_ln;

  /// No description provided for @connect_detail_deposit_label_onchain.
  ///
  /// In en, this message translates to:
  /// **'Your dedicated Bitcoin address'**
  String get connect_detail_deposit_label_onchain;

  /// No description provided for @connect_detail_destination_label_address.
  ///
  /// In en, this message translates to:
  /// **'Destination address'**
  String get connect_detail_destination_label_address;

  /// No description provided for @connect_detail_banner_reenable_title.
  ///
  /// In en, this message translates to:
  /// **'Review and re-enable connection'**
  String get connect_detail_banner_reenable_title;

  /// No description provided for @connect_detail_banner_reenable_buy.
  ///
  /// In en, this message translates to:
  /// **'Please review your connection details and continue to re-enable it. As part of the Travel Rule requirement, you\'ll need to declare the nature of your destination address in the next steps. A fresh vIBAN will be issued for this Buy connection. Your linked destination wallet stays the same.'**
  String get connect_detail_banner_reenable_buy;

  /// No description provided for @connect_detail_banner_reenable_ln_sell.
  ///
  /// In en, this message translates to:
  /// **'Please review your connection details and continue to re-enable it. Your Lightning deposit address and linked bank account both stay the same — re-enabling reactivates the automatic conversion of incoming Lightning to euros.'**
  String get connect_detail_banner_reenable_ln_sell;

  /// No description provided for @connect_detail_banner_reenable_onchain_sell.
  ///
  /// In en, this message translates to:
  /// **'Please review your connection details and continue to re-enable it. A fresh Bitcoin deposit address will be issued for this Sell connection. Your linked bank account stays the same.'**
  String get connect_detail_banner_reenable_onchain_sell;

  /// No description provided for @connect_detail_banner_pending_passkey.
  ///
  /// In en, this message translates to:
  /// **'This connection needs to be verified. Tap Activate to approve it with your passkey.'**
  String get connect_detail_banner_pending_passkey;

  /// No description provided for @connect_detail_banner_pending_totp.
  ///
  /// In en, this message translates to:
  /// **'This connection needs to be verified. Tap Activate to enter the code from your authenticator app.'**
  String get connect_detail_banner_pending_totp;

  /// No description provided for @connect_detail_banner_pending_sms.
  ///
  /// In en, this message translates to:
  /// **'This connection needs to be verified. Tap Activate to enter the 6-digit code sent to your phone or email.'**
  String get connect_detail_banner_pending_sms;

  /// No description provided for @connect_detail_action_reenable.
  ///
  /// In en, this message translates to:
  /// **'Re-enable'**
  String get connect_detail_action_reenable;

  /// No description provided for @connect_detail_action_activate.
  ///
  /// In en, this message translates to:
  /// **'Activate'**
  String get connect_detail_action_activate;

  /// No description provided for @connect_detail_error_activation_title.
  ///
  /// In en, this message translates to:
  /// **'Activation failed'**
  String get connect_detail_error_activation_title;

  /// No description provided for @connect_detail_error_reenable_title.
  ///
  /// In en, this message translates to:
  /// **'Re-enable failed'**
  String get connect_detail_error_reenable_title;

  /// No description provided for @connect_detail_error_delete_title.
  ///
  /// In en, this message translates to:
  /// **'Delete failed'**
  String get connect_detail_error_delete_title;

  /// No description provided for @connect_detail_error_missing_destination_address.
  ///
  /// In en, this message translates to:
  /// **'This connection is missing its destination address. Contact support to recover it.'**
  String get connect_detail_error_missing_destination_address;

  /// No description provided for @connect_detail_error_missing_destination_iban.
  ///
  /// In en, this message translates to:
  /// **'This connection is missing its destination IBAN. Contact support to recover it.'**
  String get connect_detail_error_missing_destination_iban;

  /// No description provided for @connect_detail_error_beneficiary_not_found.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t find the bank account this connection was linked to. Try creating a new sell connection from the Connect tab.'**
  String get connect_detail_error_beneficiary_not_found;

  /// No description provided for @connect_detail_error_missing_standing_order.
  ///
  /// In en, this message translates to:
  /// **'Unable to delete: missing standing order ID.'**
  String get connect_detail_error_missing_standing_order;

  /// No description provided for @connect_detail_error_unexpected_response.
  ///
  /// In en, this message translates to:
  /// **'Unexpected response from server.'**
  String get connect_detail_error_unexpected_response;

  /// No description provided for @connect_detail_toast_deleted.
  ///
  /// In en, this message translates to:
  /// **'Connection deleted'**
  String get connect_detail_toast_deleted;

  /// No description provided for @connect_detail_sca_delete_title.
  ///
  /// In en, this message translates to:
  /// **'Verify to delete this connection'**
  String get connect_detail_sca_delete_title;

  /// No description provided for @connect_detail_sca_delete_subtitle_passkey.
  ///
  /// In en, this message translates to:
  /// **'Verify it\'s you with your face or fingerprint.'**
  String get connect_detail_sca_delete_subtitle_passkey;

  /// No description provided for @connect_detail_sca_delete_action.
  ///
  /// In en, this message translates to:
  /// **'Delete connection'**
  String get connect_detail_sca_delete_action;

  /// No description provided for @connect_detail_error_load_transactions.
  ///
  /// In en, this message translates to:
  /// **'Failed to load transactions.'**
  String get connect_detail_error_load_transactions;

  /// No description provided for @connect_detail_action_load_more.
  ///
  /// In en, this message translates to:
  /// **'Load more'**
  String get connect_detail_action_load_more;

  /// No description provided for @connect_detail_delete_dialog_title.
  ///
  /// In en, this message translates to:
  /// **'Delete connection?'**
  String get connect_detail_delete_dialog_title;

  /// No description provided for @connect_detail_delete_dialog_message.
  ///
  /// In en, this message translates to:
  /// **'Delete this Connection for your Wallet? You can add them again later.'**
  String get connect_detail_delete_dialog_message;

  /// No description provided for @connect_detail_delete_dialog_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm delete'**
  String get connect_detail_delete_dialog_confirm;

  /// No description provided for @exception_account_setup_in_progress.
  ///
  /// In en, this message translates to:
  /// **'Your account is being set up. Please wait a moment.'**
  String get exception_account_setup_in_progress;

  /// No description provided for @exception_auto_swap_required.
  ///
  /// In en, this message translates to:
  /// **'Set up auto-swap to sell Bitcoin to your bank account.'**
  String get exception_auto_swap_required;

  /// No description provided for @exception_beneficiary_not_trusted.
  ///
  /// In en, this message translates to:
  /// **'This account needs to be verified before you can sell to it.'**
  String get exception_beneficiary_not_trusted;

  /// No description provided for @exception_blink_oauth_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to complete the Blink OAuth process at this time. Please try again later.'**
  String get exception_blink_oauth_generic;

  /// No description provided for @exception_breez_relay_rate_limited.
  ///
  /// In en, this message translates to:
  /// **'Too many Breez link changes. Please wait a while and try again.'**
  String get exception_breez_relay_rate_limited;

  /// No description provided for @exception_card_link_account_already_linked.
  ///
  /// In en, this message translates to:
  /// **'This card is already linked to that account.'**
  String get exception_card_link_account_already_linked;

  /// No description provided for @exception_card_link_account_card_closed.
  ///
  /// In en, this message translates to:
  /// **'This card is closed and can\'t be updated.'**
  String get exception_card_link_account_card_closed;

  /// No description provided for @exception_card_link_account_provisioning.
  ///
  /// In en, this message translates to:
  /// **'Setting up your card balance — please try again in a moment.'**
  String get exception_card_link_account_provisioning;

  /// No description provided for @exception_card_wallet_send_onchain_insufficient_balance.
  ///
  /// In en, this message translates to:
  /// **'Insufficient card balance to complete this withdrawal.'**
  String get exception_card_wallet_send_onchain_insufficient_balance;

  /// No description provided for @exception_card_wallet_topup_insufficient_balance.
  ///
  /// In en, this message translates to:
  /// **'Insufficient EUR balance to top up your Bitcoin card.'**
  String get exception_card_wallet_topup_insufficient_balance;

  /// No description provided for @exception_cashback_withdraw_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to withdraw cashback at this time. Please try again later.'**
  String get exception_cashback_withdraw_generic;

  /// No description provided for @exception_check_blink_ln_invoice_status_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to check the status of the Blink LN invoice at this time. Please try again later.'**
  String get exception_check_blink_ln_invoice_status_generic;

  /// No description provided for @exception_concurrent_request.
  ///
  /// In en, this message translates to:
  /// **'Another request is already in progress. Please wait.'**
  String get exception_concurrent_request;

  /// No description provided for @exception_confirm_striga_consent_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to confirm Striga consent at this time. Please try again later.'**
  String get exception_confirm_striga_consent_generic;

  /// No description provided for @exception_create_blink_ln_invoice_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to create a Blink LN invoice at this time. Please try again later.'**
  String get exception_create_blink_ln_invoice_generic;

  /// No description provided for @exception_create_blink_onchain_address_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to create a Blink on-chain address at this time. Please try again later.'**
  String get exception_create_blink_onchain_address_generic;

  /// No description provided for @exception_create_card_prepayment_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to create the card prepayment at this time. Please try again later.'**
  String get exception_create_card_prepayment_generic;

  /// No description provided for @exception_delete_beneficiary_generic.
  ///
  /// In en, this message translates to:
  /// **'Failed to delete beneficiary. Please try again later.'**
  String get exception_delete_beneficiary_generic;

  /// No description provided for @exception_delete_card_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to delete the card at this time. Please try again later.'**
  String get exception_delete_card_generic;

  /// No description provided for @exception_discount_price_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve the discount price at this time. Please try again later.'**
  String get exception_discount_price_generic;

  /// No description provided for @exception_duplicate_bringin_link.
  ///
  /// In en, this message translates to:
  /// **'A connection already exists for this recipient.'**
  String get exception_duplicate_bringin_link;

  /// No description provided for @exception_duplicate_destination_address.
  ///
  /// In en, this message translates to:
  /// **'A connection already exists for this Bitcoin address.'**
  String get exception_duplicate_destination_address;

  /// No description provided for @exception_duplicate_iban.
  ///
  /// In en, this message translates to:
  /// **'A connection already exists for this bank account.'**
  String get exception_duplicate_iban;

  /// No description provided for @exception_edit_beneficiary_generic.
  ///
  /// In en, this message translates to:
  /// **'Failed to edit beneficiary. Please try again later.'**
  String get exception_edit_beneficiary_generic;

  /// No description provided for @exception_email_not_verified_for_ln_address.
  ///
  /// In en, this message translates to:
  /// **'Verify your email before reserving a Lightning address.'**
  String get exception_email_not_verified_for_ln_address;

  /// No description provided for @exception_export_transaction_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to export transactions. Please try again later.'**
  String get exception_export_transaction_generic;

  /// No description provided for @exception_fiat_setup_generic.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t finish setting up your Euro account. Try again later.'**
  String get exception_fiat_setup_generic;

  /// No description provided for @exception_fiat_setup_in_progress.
  ///
  /// In en, this message translates to:
  /// **'Setup is already in progress.'**
  String get exception_fiat_setup_in_progress;

  /// No description provided for @exception_fiat_setup_requires_session.
  ///
  /// In en, this message translates to:
  /// **'Please complete verification and try again.'**
  String get exception_fiat_setup_requires_session;

  /// No description provided for @exception_forgot_password_session_expired.
  ///
  /// In en, this message translates to:
  /// **'Password reset session expired. Please start the flow again.'**
  String get exception_forgot_password_session_expired;

  /// No description provided for @exception_freeze_card_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to freeze the card at this time. Please try again later.'**
  String get exception_freeze_card_generic;

  /// No description provided for @exception_get_affiliate_participation_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve the affiliate participation at this time. Please try again later.'**
  String get exception_get_affiliate_participation_generic;

  /// No description provided for @exception_get_affiliate_program_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve the affiliate program at this time. Please try again later.'**
  String get exception_get_affiliate_program_generic;

  /// No description provided for @exception_get_all_cards_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve all cards at this time. Please try again later.'**
  String get exception_get_all_cards_generic;

  /// No description provided for @exception_get_balance_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve balance. Please try again later.'**
  String get exception_get_balance_generic;

  /// No description provided for @exception_get_bank_details_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve bank details at this time. Please try again later.'**
  String get exception_get_bank_details_generic;

  /// No description provided for @exception_get_blink_account_details_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve Blink account details at this time. Please try again later.'**
  String get exception_get_blink_account_details_generic;

  /// No description provided for @exception_get_card_details_by_card_id_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve the card details at this time. Please try again later.'**
  String get exception_get_card_details_by_card_id_generic;

  /// No description provided for @exception_get_card_prepayment_info_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve the card prepayment information at this time. Please try again later.'**
  String get exception_get_card_prepayment_info_generic;

  /// No description provided for @exception_get_card_pricing_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve the card pricing at this time. Please try again later.'**
  String get exception_get_card_pricing_generic;

  /// No description provided for @exception_get_card_statements_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve the card statements at this time. Please try again later.'**
  String get exception_get_card_statements_generic;

  /// No description provided for @exception_get_card_wallet_balance_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve card wallet balance. Please try again later.'**
  String get exception_get_card_wallet_balance_generic;

  /// No description provided for @exception_get_details_by_email_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve details for the provided email. Please try again later.'**
  String get exception_get_details_by_email_generic;

  /// No description provided for @exception_get_offramp_order_status_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve off-ramp order status at this time. Please try again later.'**
  String get exception_get_offramp_order_status_generic;

  /// No description provided for @exception_get_onboarding_info_params_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to get onboarding info params at this time. Please try again later.'**
  String get exception_get_onboarding_info_params_generic;

  /// No description provided for @exception_get_onramp_order_status_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve on-ramp order status at this time. Please try again later.'**
  String get exception_get_onramp_order_status_generic;

  /// No description provided for @exception_get_transaction_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve transaction details. Please try again later.'**
  String get exception_get_transaction_generic;

  /// No description provided for @exception_host_lookup.
  ///
  /// In en, this message translates to:
  /// **'Please check your internet connection or try again later.'**
  String get exception_host_lookup;

  /// No description provided for @exception_invalid_btc_address.
  ///
  /// In en, this message translates to:
  /// **'Invalid Bitcoin address. Please check and try again.'**
  String get exception_invalid_btc_address;

  /// No description provided for @exception_invalid_sca_login_code.
  ///
  /// In en, this message translates to:
  /// **'That code isn\'t right. Try again.'**
  String get exception_invalid_sca_login_code;

  /// No description provided for @exception_invalid_totp_code.
  ///
  /// In en, this message translates to:
  /// **'That code isn\'t right. Try the newest one shown in your app.'**
  String get exception_invalid_totp_code;

  /// No description provided for @exception_lightning_address_amount_out_of_range.
  ///
  /// In en, this message translates to:
  /// **'The amount is outside the limits set by the recipient\'s wallet. Adjust the amount and try again.'**
  String get exception_lightning_address_amount_out_of_range;

  /// No description provided for @exception_lightning_address_invalid.
  ///
  /// In en, this message translates to:
  /// **'This isn\'t a valid Lightning address. Check it and try again.'**
  String get exception_lightning_address_invalid;

  /// No description provided for @exception_lightning_address_invoice_mismatch.
  ///
  /// In en, this message translates to:
  /// **'The recipient\'s wallet returned an invoice with the wrong amount. Please try again.'**
  String get exception_lightning_address_invoice_mismatch;

  /// No description provided for @exception_lightning_address_is_bringin.
  ///
  /// In en, this message translates to:
  /// **'You can\'t send to a Bringin Lightning address. Use an external wallet address.'**
  String get exception_lightning_address_is_bringin;

  /// No description provided for @exception_lightning_address_not_declared.
  ///
  /// In en, this message translates to:
  /// **'This Lightning address hasn\'t been declared yet. Re-save it from the add-wallet screen and try again.'**
  String get exception_lightning_address_not_declared;

  /// No description provided for @exception_lightning_address_provider_unreachable.
  ///
  /// In en, this message translates to:
  /// **'The recipient\'s wallet provider didn\'t respond. Try again, or ask the recipient to share an invoice instead.'**
  String get exception_lightning_address_provider_unreachable;

  /// No description provided for @exception_lightning_travel_rule_cap.
  ///
  /// In en, this message translates to:
  /// **'Lightning transfers are capped at €990. Lower the amount or choose an on-chain wallet.'**
  String get exception_lightning_travel_rule_cap;

  /// No description provided for @exception_limit_increase_not_tier2.
  ///
  /// In en, this message translates to:
  /// **'Limit increases are available for tier 2 users only.'**
  String get exception_limit_increase_not_tier2;

  /// No description provided for @exception_list_bringin_links_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to fetch connections. Please try again.'**
  String get exception_list_bringin_links_generic;

  /// No description provided for @exception_ln_address_already_claimed.
  ///
  /// In en, this message translates to:
  /// **'You already have a Lightning address.'**
  String get exception_ln_address_already_claimed;

  /// No description provided for @exception_ln_address_exists.
  ///
  /// In en, this message translates to:
  /// **'This Lightning address is already taken.'**
  String get exception_ln_address_exists;

  /// No description provided for @exception_ln_invoice_already_in_use.
  ///
  /// In en, this message translates to:
  /// **'That invoice is already tied to another order. Go back and start the buy again.'**
  String get exception_ln_invoice_already_in_use;

  /// No description provided for @exception_lnurl_amount_above_maximum.
  ///
  /// In en, this message translates to:
  /// **'This amount is above the maximum this destination accepts. Lower the amount.'**
  String get exception_lnurl_amount_above_maximum;

  /// No description provided for @exception_lnurl_amount_below_minimum.
  ///
  /// In en, this message translates to:
  /// **'This amount is below the minimum this destination accepts. Increase the amount.'**
  String get exception_lnurl_amount_below_minimum;

  /// No description provided for @exception_mobile_number_in_use.
  ///
  /// In en, this message translates to:
  /// **'Mobile number already in use. Please use a different phone number to continue.'**
  String get exception_mobile_number_in_use;

  /// No description provided for @exception_non_sms_challenge.
  ///
  /// In en, this message translates to:
  /// **'This code can\'t be re-sent. Use your authenticator or passkey instead.'**
  String get exception_non_sms_challenge;

  /// No description provided for @exception_offramp_rate_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to retrieve off-ramp rate. Please try again later.'**
  String get exception_offramp_rate_generic;

  /// No description provided for @exception_participate_in_affiliate_program_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to participate in the affiliate program at this time. Please try again later.'**
  String get exception_participate_in_affiliate_program_generic;

  /// No description provided for @exception_password_expired.
  ///
  /// In en, this message translates to:
  /// **'Your password has expired. Please set a new one to continue.'**
  String get exception_password_expired;

  /// No description provided for @exception_previously_used_password.
  ///
  /// In en, this message translates to:
  /// **'You\'ve used this password before. Please choose a new one.'**
  String get exception_previously_used_password;

  /// No description provided for @exception_probe_blink_ln_fee_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to probe the Blink LN fee at this time. Please try again later.'**
  String get exception_probe_blink_ln_fee_generic;

  /// No description provided for @exception_recaptcha_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to complete verification.'**
  String get exception_recaptcha_generic;

  /// No description provided for @exception_register_push_token_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to register push token. Please try again later.'**
  String get exception_register_push_token_generic;

  /// No description provided for @exception_request_wallet_access_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to request wallet access at this time. Please try again later.'**
  String get exception_request_wallet_access_generic;

  /// No description provided for @exception_restricted_jurisdiction.
  ///
  /// In en, this message translates to:
  /// **'Transaction cannot be done from your current location.'**
  String get exception_restricted_jurisdiction;

  /// No description provided for @exception_resume_offramp_swap_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to resume offramp swap at this time. Please try again later.'**
  String get exception_resume_offramp_swap_generic;

  /// No description provided for @exception_sca_read_window_expired.
  ///
  /// In en, this message translates to:
  /// **'Please verify to export transactions older than 90 days.'**
  String get exception_sca_read_window_expired;

  /// No description provided for @exception_sca_resend_challenge_not_found.
  ///
  /// In en, this message translates to:
  /// **'That verification session has expired. Start again.'**
  String get exception_sca_resend_challenge_not_found;

  /// No description provided for @exception_sca_volume_limit.
  ///
  /// In en, this message translates to:
  /// **'You\'ve reached your account\'s transaction limit. Your funds are safe — contact support to review and increase your limit.'**
  String get exception_sca_volume_limit;

  /// No description provided for @exception_send_blink_ln_payment_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to send this LN payment at this time. Please try again later.'**
  String get exception_send_blink_ln_payment_generic;

  /// No description provided for @exception_swap_current_amount_in_offramp_order_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to swap the current amount in offramp order at this time. Please try again later.'**
  String get exception_swap_current_amount_in_offramp_order_generic;

  /// No description provided for @exception_too_many_pending_bringin_links.
  ///
  /// In en, this message translates to:
  /// **'Too many pending connections. Please confirm or wait for existing ones to expire.'**
  String get exception_too_many_pending_bringin_links;

  /// No description provided for @exception_totp_adopt_already_enrolled.
  ///
  /// In en, this message translates to:
  /// **'Authenticator sign-in is already switched on for this account.'**
  String get exception_totp_adopt_already_enrolled;

  /// No description provided for @exception_totp_adopt_no_credential.
  ///
  /// In en, this message translates to:
  /// **'No existing authenticator found for this account. Set one up instead.'**
  String get exception_totp_adopt_no_credential;

  /// No description provided for @exception_totp_not_allowed.
  ///
  /// In en, this message translates to:
  /// **'Authenticator-app two-factor isn\'t available on this account yet.'**
  String get exception_totp_not_allowed;

  /// No description provided for @exception_unfreeze_card_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to unfreeze the card at this time. Please try again later.'**
  String get exception_unfreeze_card_generic;

  /// No description provided for @exception_unregister_push_token_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to unregister push token. Please try again later.'**
  String get exception_unregister_push_token_generic;

  /// No description provided for @exception_update_card_limits_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to update the card limits at this time. Please try again later.'**
  String get exception_update_card_limits_generic;

  /// No description provided for @exception_update_card_method_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to update the card method at this time. Please try again later.'**
  String get exception_update_card_method_generic;

  /// No description provided for @exception_update_travel_rule_options_generic.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save your Auto declaration setting. Try again in a moment.'**
  String get exception_update_travel_rule_options_generic;

  /// No description provided for @exception_update_user_details_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to update user details at this time. Please try again later.'**
  String get exception_update_user_details_generic;

  /// No description provided for @exception_validate_ip_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to validate the IP address at this time. Please try again later.'**
  String get exception_validate_ip_generic;

  /// No description provided for @exception_verify_mobile_otp_generic.
  ///
  /// In en, this message translates to:
  /// **'Unable to verify the mobile OTP at this time. Please try again later.'**
  String get exception_verify_mobile_otp_generic;

  /// No description provided for @exception_wallet_verification_required.
  ///
  /// In en, this message translates to:
  /// **'This wallet needs a one-time ownership check for transfers of €1,000 or more. Verify to continue.'**
  String get exception_wallet_verification_required;

  /// No description provided for @action_save.
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get action_save;

  /// No description provided for @action_update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get action_update;

  /// No description provided for @action_report.
  ///
  /// In en, this message translates to:
  /// **'Report'**
  String get action_report;

  /// No description provided for @action_got_it.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get action_got_it;

  /// No description provided for @card_activate_title.
  ///
  /// In en, this message translates to:
  /// **'Activate card'**
  String get card_activate_title;

  /// No description provided for @card_activate_description.
  ///
  /// In en, this message translates to:
  /// **'Activate your Physical card once you receive it.'**
  String get card_activate_description;

  /// No description provided for @card_activate_description_masked.
  ///
  /// In en, this message translates to:
  /// **'Activate your Physical card •••••{last4} once you receive it.'**
  String card_activate_description_masked(String last4);

  /// No description provided for @card_activate_field_last4.
  ///
  /// In en, this message translates to:
  /// **'Add the last 4 digits of your card'**
  String get card_activate_field_last4;

  /// No description provided for @card_activate_field_pin.
  ///
  /// In en, this message translates to:
  /// **'Set PIN'**
  String get card_activate_field_pin;

  /// No description provided for @card_activate_field_pin_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm PIN'**
  String get card_activate_field_pin_confirm;

  /// No description provided for @card_activate_toast_success.
  ///
  /// In en, this message translates to:
  /// **'Card activated.'**
  String get card_activate_toast_success;

  /// No description provided for @card_activate_error_pin_weak.
  ///
  /// In en, this message translates to:
  /// **'Avoid repeating or sequential digits.'**
  String get card_activate_error_pin_weak;

  /// No description provided for @card_activate_error_pin_mismatch.
  ///
  /// In en, this message translates to:
  /// **'PINs do not match.'**
  String get card_activate_error_pin_mismatch;

  /// No description provided for @card_activate_error_failed.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t activate your card. Please try again.'**
  String get card_activate_error_failed;

  /// No description provided for @card_activate_error_pin_not_set.
  ///
  /// In en, this message translates to:
  /// **'Card activated, but we couldn\'t set your PIN. Please try again from the card screen.'**
  String get card_activate_error_pin_not_set;

  /// No description provided for @card_detail_title_physical.
  ///
  /// In en, this message translates to:
  /// **'Physical card ....{last4}'**
  String card_detail_title_physical(String last4);

  /// No description provided for @card_detail_title_virtual.
  ///
  /// In en, this message translates to:
  /// **'Virtual card ....{last4}'**
  String card_detail_title_virtual(String last4);

  /// No description provided for @card_label_linked_account.
  ///
  /// In en, this message translates to:
  /// **'Linked account'**
  String get card_label_linked_account;

  /// No description provided for @card_linked_euro.
  ///
  /// In en, this message translates to:
  /// **'Linked: Euro account'**
  String get card_linked_euro;

  /// No description provided for @card_linked_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Linked: Bitcoin account'**
  String get card_linked_bitcoin;

  /// No description provided for @card_toast_reported_missing.
  ///
  /// In en, this message translates to:
  /// **'Card reported as missing'**
  String get card_toast_reported_missing;

  /// No description provided for @card_toast_removed.
  ///
  /// In en, this message translates to:
  /// **'Card removed'**
  String get card_toast_removed;

  /// No description provided for @card_toast_closed.
  ///
  /// In en, this message translates to:
  /// **'Card closed successfully'**
  String get card_toast_closed;

  /// No description provided for @card_error_toggle_online.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update online payments.'**
  String get card_error_toggle_online;

  /// No description provided for @card_error_toggle_contactless.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update contactless payments.'**
  String get card_error_toggle_contactless;

  /// No description provided for @card_error_toggle_atm.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update ATM withdrawals.'**
  String get card_error_toggle_atm;

  /// No description provided for @card_error_freeze.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t freeze the card.'**
  String get card_error_freeze;

  /// No description provided for @card_error_unfreeze.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t unfreeze the card.'**
  String get card_error_unfreeze;

  /// No description provided for @card_action_manage.
  ///
  /// In en, this message translates to:
  /// **'Manage card'**
  String get card_action_manage;

  /// No description provided for @card_action_remove.
  ///
  /// In en, this message translates to:
  /// **'Remove card'**
  String get card_action_remove;

  /// No description provided for @card_action_close.
  ///
  /// In en, this message translates to:
  /// **'Close card'**
  String get card_action_close;

  /// No description provided for @card_action_replace.
  ///
  /// In en, this message translates to:
  /// **'Replace card'**
  String get card_action_replace;

  /// No description provided for @card_action_replace_physical.
  ///
  /// In en, this message translates to:
  /// **'Replace physical card'**
  String get card_action_replace_physical;

  /// No description provided for @card_action_view_3ds.
  ///
  /// In en, this message translates to:
  /// **'View 3DS password'**
  String get card_action_view_3ds;

  /// No description provided for @card_action_reset_3ds.
  ///
  /// In en, this message translates to:
  /// **'Reset 3DS password'**
  String get card_action_reset_3ds;

  /// No description provided for @card_action_reset_atm_pin.
  ///
  /// In en, this message translates to:
  /// **'Reset ATM PIN'**
  String get card_action_reset_atm_pin;

  /// No description provided for @card_action_report_missing.
  ///
  /// In en, this message translates to:
  /// **'Card missing?'**
  String get card_action_report_missing;

  /// No description provided for @card_toggle_online.
  ///
  /// In en, this message translates to:
  /// **'Online payments'**
  String get card_toggle_online;

  /// No description provided for @card_toggle_atm.
  ///
  /// In en, this message translates to:
  /// **'ATM withdrawals'**
  String get card_toggle_atm;

  /// No description provided for @card_toggle_contactless.
  ///
  /// In en, this message translates to:
  /// **'Contactless payments'**
  String get card_toggle_contactless;

  /// No description provided for @card_tx_error_load.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load transactions'**
  String get card_tx_error_load;

  /// No description provided for @card_tx_error_load_more.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load more'**
  String get card_tx_error_load_more;

  /// No description provided for @payment_details_label_merchant_name.
  ///
  /// In en, this message translates to:
  /// **'Merchant name'**
  String get payment_details_label_merchant_name;

  /// No description provided for @payment_details_label_merchant_location.
  ///
  /// In en, this message translates to:
  /// **'Merchant location'**
  String get payment_details_label_merchant_location;

  /// No description provided for @payment_details_label_merchant_category.
  ///
  /// In en, this message translates to:
  /// **'Merchant category code'**
  String get payment_details_label_merchant_category;

  /// No description provided for @payment_details_label_original_amount.
  ///
  /// In en, this message translates to:
  /// **'Original amount'**
  String get payment_details_label_original_amount;

  /// No description provided for @payment_details_label_linked_account_id.
  ///
  /// In en, this message translates to:
  /// **'Linked account ID'**
  String get payment_details_label_linked_account_id;

  /// No description provided for @card_tx_type_creation_fee.
  ///
  /// In en, this message translates to:
  /// **'Card creation fee'**
  String get card_tx_type_creation_fee;

  /// No description provided for @card_tx_type_atm_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'ATM withdrawal'**
  String get card_tx_type_atm_withdrawal;

  /// No description provided for @card_tx_type_refund.
  ///
  /// In en, this message translates to:
  /// **'Card refund'**
  String get card_tx_type_refund;

  /// No description provided for @card_tx_type_payment_declined.
  ///
  /// In en, this message translates to:
  /// **'Card payment declined'**
  String get card_tx_type_payment_declined;

  /// No description provided for @card_linked_update_title.
  ///
  /// In en, this message translates to:
  /// **'Update linked account'**
  String get card_linked_update_title;

  /// No description provided for @card_linked_option_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin account'**
  String get card_linked_option_bitcoin;

  /// No description provided for @card_linked_limit_title.
  ///
  /// In en, this message translates to:
  /// **'Card limit reached'**
  String get card_linked_limit_title;

  /// No description provided for @card_linked_limit_message.
  ///
  /// In en, this message translates to:
  /// **'You already have {max} cards linked to your {destination}. Close one before linking another card here.'**
  String card_linked_limit_message(int max, String destination);

  /// No description provided for @card_limits_title.
  ///
  /// In en, this message translates to:
  /// **'Card limits'**
  String get card_limits_title;

  /// No description provided for @card_limits_toast_updated.
  ///
  /// In en, this message translates to:
  /// **'Card limits updated.'**
  String get card_limits_toast_updated;

  /// No description provided for @card_limits_error_update.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t update card limits.'**
  String get card_limits_error_update;

  /// No description provided for @card_limits_error_txn_over_daily.
  ///
  /// In en, this message translates to:
  /// **'Transaction limit cannot exceed daily limit.'**
  String get card_limits_error_txn_over_daily;

  /// No description provided for @card_limits_error_daily_over_monthly.
  ///
  /// In en, this message translates to:
  /// **'Daily limit cannot exceed monthly limit.'**
  String get card_limits_error_daily_over_monthly;

  /// No description provided for @card_limits_error_txn_over_monthly.
  ///
  /// In en, this message translates to:
  /// **'Transaction limit cannot exceed monthly limit.'**
  String get card_limits_error_txn_over_monthly;

  /// No description provided for @card_limits_section_pos_description.
  ///
  /// In en, this message translates to:
  /// **'Limit for physical stores.'**
  String get card_limits_section_pos_description;

  /// No description provided for @card_limits_section_online.
  ///
  /// In en, this message translates to:
  /// **'Online'**
  String get card_limits_section_online;

  /// No description provided for @card_limits_section_online_description.
  ///
  /// In en, this message translates to:
  /// **'On e-commerce and digital platforms.'**
  String get card_limits_section_online_description;

  /// No description provided for @card_limits_section_contactless.
  ///
  /// In en, this message translates to:
  /// **'Contactless'**
  String get card_limits_section_contactless;

  /// No description provided for @card_limits_section_contactless_description.
  ///
  /// In en, this message translates to:
  /// **'Cap for tap-and-go purchases.'**
  String get card_limits_section_contactless_description;

  /// No description provided for @card_limits_section_atm.
  ///
  /// In en, this message translates to:
  /// **'ATM Withdrawals'**
  String get card_limits_section_atm;

  /// No description provided for @card_limits_section_atm_description.
  ///
  /// In en, this message translates to:
  /// **'Maximum cash you can withdraw.'**
  String get card_limits_section_atm_description;

  /// No description provided for @card_limits_section_overall.
  ///
  /// In en, this message translates to:
  /// **'Overall'**
  String get card_limits_section_overall;

  /// No description provided for @card_limits_section_overall_description.
  ///
  /// In en, this message translates to:
  /// **'Combined spending cap across all categories.'**
  String get card_limits_section_overall_description;

  /// No description provided for @card_limits_period_daily.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get card_limits_period_daily;

  /// No description provided for @card_limits_period_monthly.
  ///
  /// In en, this message translates to:
  /// **'Monthly'**
  String get card_limits_period_monthly;

  /// No description provided for @card_limits_period_transaction.
  ///
  /// In en, this message translates to:
  /// **'Per transaction'**
  String get card_limits_period_transaction;

  /// No description provided for @card_limits_slider_max.
  ///
  /// In en, this message translates to:
  /// **'Max {amount}'**
  String card_limits_slider_max(String amount);

  /// No description provided for @card_coming_soon.
  ///
  /// In en, this message translates to:
  /// **'Coming soon'**
  String get card_coming_soon;

  /// No description provided for @card_replace_title.
  ///
  /// In en, this message translates to:
  /// **'Proceed with card replacement?'**
  String get card_replace_title;

  /// No description provided for @card_replace_message.
  ///
  /// In en, this message translates to:
  /// **'Your current card deactivates instantly, and a new card ships to your address.\n\nIt will be delivered to the same address using the same delivery method.'**
  String get card_replace_message;

  /// No description provided for @card_reveal_target_details.
  ///
  /// In en, this message translates to:
  /// **'Card details'**
  String get card_reveal_target_details;

  /// No description provided for @card_reveal_target_pin.
  ///
  /// In en, this message translates to:
  /// **'Card PIN'**
  String get card_reveal_target_pin;

  /// No description provided for @card_reveal_target_3ds.
  ///
  /// In en, this message translates to:
  /// **'Card 3DS password'**
  String get card_reveal_target_3ds;

  /// No description provided for @card_reveal_verify_title.
  ///
  /// In en, this message translates to:
  /// **'Verify it\'s you'**
  String get card_reveal_verify_title;

  /// No description provided for @card_reveal_verify_prompt_prefix.
  ///
  /// In en, this message translates to:
  /// **'Add the verification code sent to your mobile number '**
  String get card_reveal_verify_prompt_prefix;

  /// No description provided for @card_reveal_verify_prompt_suffix.
  ///
  /// In en, this message translates to:
  /// **'. This is a security measure to keep your account safe.'**
  String get card_reveal_verify_prompt_suffix;

  /// No description provided for @card_reveal_toast_code_resent.
  ///
  /// In en, this message translates to:
  /// **'Code sent again.'**
  String get card_reveal_toast_code_resent;

  /// No description provided for @card_reveal_error_resend.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t resend code. Try again.'**
  String get card_reveal_error_resend;

  /// No description provided for @card_reveal_error_send_code.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send verification code'**
  String get card_reveal_error_send_code;

  /// No description provided for @card_reveal_error_session_expired.
  ///
  /// In en, this message translates to:
  /// **'Session expired. Please verify again.'**
  String get card_reveal_error_session_expired;

  /// No description provided for @card_reveal_error_load_details.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load card details. Try again.'**
  String get card_reveal_error_load_details;

  /// No description provided for @card_reveal_error_invalid_code.
  ///
  /// In en, this message translates to:
  /// **'That code didn\'t work. Please try again.'**
  String get card_reveal_error_invalid_code;

  /// No description provided for @card_reveal_label_number.
  ///
  /// In en, this message translates to:
  /// **'Card number'**
  String get card_reveal_label_number;

  /// No description provided for @card_reveal_label_expiry.
  ///
  /// In en, this message translates to:
  /// **'Expiry date'**
  String get card_reveal_label_expiry;

  /// No description provided for @card_reveal_label_name.
  ///
  /// In en, this message translates to:
  /// **'Name on the card'**
  String get card_reveal_label_name;

  /// No description provided for @card_reveal_toast_number_copied.
  ///
  /// In en, this message translates to:
  /// **'Card number copied'**
  String get card_reveal_toast_number_copied;

  /// No description provided for @card_reveal_toast_pin_copied.
  ///
  /// In en, this message translates to:
  /// **'PIN copied'**
  String get card_reveal_toast_pin_copied;

  /// No description provided for @card_reveal_toast_3ds_copied.
  ///
  /// In en, this message translates to:
  /// **'3DS password copied'**
  String get card_reveal_toast_3ds_copied;

  /// No description provided for @card_field_error_load.
  ///
  /// In en, this message translates to:
  /// **'Could not load card field.'**
  String get card_field_error_load;

  /// No description provided for @card_field_error_load_named.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load {field}.'**
  String card_field_error_load_named(String field);

  /// No description provided for @card_consent_error_unknown.
  ///
  /// In en, this message translates to:
  /// **'An unknown error occurred.'**
  String get card_consent_error_unknown;

  /// No description provided for @card_consent_error_malformed.
  ///
  /// In en, this message translates to:
  /// **'Malformed consent response from Striga.'**
  String get card_consent_error_malformed;

  /// No description provided for @card_consent_error_unknown_code.
  ///
  /// In en, this message translates to:
  /// **'Unknown consent error.'**
  String get card_consent_error_unknown_code;

  /// No description provided for @card_consent_error_unreachable.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t reach the verification service.'**
  String get card_consent_error_unreachable;

  /// No description provided for @card_close_title_remove.
  ///
  /// In en, this message translates to:
  /// **'Remove this card?'**
  String get card_close_title_remove;

  /// No description provided for @card_close_title_close.
  ///
  /// In en, this message translates to:
  /// **'Close your card?'**
  String get card_close_title_close;

  /// No description provided for @card_close_message_expired.
  ///
  /// In en, this message translates to:
  /// **'This card has already expired, so there is nothing left to close. Removing it just takes it off your list — you\'ll still be able to view past transactions.'**
  String get card_close_message_expired;

  /// No description provided for @card_close_message.
  ///
  /// In en, this message translates to:
  /// **'Closing your card is permanent. You\'ll still be able to view past transactions.'**
  String get card_close_message;

  /// No description provided for @card_close_error_remove.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t remove the card.'**
  String get card_close_error_remove;

  /// No description provided for @card_close_error_close.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t close the card.'**
  String get card_close_error_close;

  /// No description provided for @card_missing_title.
  ///
  /// In en, this message translates to:
  /// **'Report card missing?'**
  String get card_missing_title;

  /// No description provided for @card_missing_message.
  ///
  /// In en, this message translates to:
  /// **'Your card will be blocked for future use. You can still access your card transactions.'**
  String get card_missing_message;

  /// No description provided for @card_missing_error.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t report the card as missing.'**
  String get card_missing_error;

  /// No description provided for @card_label_3ds_password.
  ///
  /// In en, this message translates to:
  /// **'3DS password'**
  String get card_label_3ds_password;

  /// No description provided for @card_3ds_field_hint.
  ///
  /// In en, this message translates to:
  /// **'Add 3DS password'**
  String get card_3ds_field_hint;

  /// No description provided for @card_3ds_field_confirm_label.
  ///
  /// In en, this message translates to:
  /// **'Confirm 3DS password'**
  String get card_3ds_field_confirm_label;

  /// No description provided for @card_3ds_field_confirm_hint.
  ///
  /// In en, this message translates to:
  /// **'Re-enter 3DS password'**
  String get card_3ds_field_confirm_hint;

  /// No description provided for @card_3ds_error_mismatch.
  ///
  /// In en, this message translates to:
  /// **'Passwords don\'t match.'**
  String get card_3ds_error_mismatch;

  /// No description provided for @card_3ds_special_chars.
  ///
  /// In en, this message translates to:
  /// **'Supported special characters are:\n{chars}'**
  String card_3ds_special_chars(String chars);

  /// No description provided for @card_atm_pin_title.
  ///
  /// In en, this message translates to:
  /// **'Reset your card PIN at an ATM'**
  String get card_atm_pin_title;

  /// No description provided for @card_atm_pin_message.
  ///
  /// In en, this message translates to:
  /// **'Changing your card PIN isn\'t available in the app yet. For now, you can reset it at any ATM that supports PIN changes.\n\nWe\'re working on adding in-app PIN changes in an upcoming release.'**
  String get card_atm_pin_message;

  /// No description provided for @card_send_sheet_prompt.
  ///
  /// In en, this message translates to:
  /// **'Where to send?'**
  String get card_send_sheet_prompt;

  /// No description provided for @card_send_option_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Send to Bitcoin wallet'**
  String get card_send_option_bitcoin;

  /// No description provided for @card_send_option_euro.
  ///
  /// In en, this message translates to:
  /// **'Send to Euro account'**
  String get card_send_option_euro;

  /// No description provided for @card_send_option_external.
  ///
  /// In en, this message translates to:
  /// **'Send to external wallets'**
  String get card_send_option_external;

  /// No description provided for @card_send_subtitle_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Card balance to Bitcoin wallet'**
  String get card_send_subtitle_bitcoin;

  /// No description provided for @card_send_subtitle_euro.
  ///
  /// In en, this message translates to:
  /// **'Card balance to Euro account'**
  String get card_send_subtitle_euro;

  /// No description provided for @card_send_subtitle_external.
  ///
  /// In en, this message translates to:
  /// **'Card balance to external wallet'**
  String get card_send_subtitle_external;

  /// No description provided for @card_send_step_recipient.
  ///
  /// In en, this message translates to:
  /// **'Recipient'**
  String get card_send_step_recipient;

  /// No description provided for @card_send_step_verify.
  ///
  /// In en, this message translates to:
  /// **'Verify & pay'**
  String get card_send_step_verify;

  /// No description provided for @card_send_use_full_balance.
  ///
  /// In en, this message translates to:
  /// **'Use the full Card balance'**
  String get card_send_use_full_balance;

  /// No description provided for @card_send_action_wallet.
  ///
  /// In en, this message translates to:
  /// **'Send to wallet'**
  String get card_send_action_wallet;

  /// No description provided for @card_send_processing.
  ///
  /// In en, this message translates to:
  /// **'Sending money...'**
  String get card_send_processing;

  /// No description provided for @card_send_invoice_description.
  ///
  /// In en, this message translates to:
  /// **'Card balance withdraw'**
  String get card_send_invoice_description;

  /// No description provided for @card_send_lnurl_comment.
  ///
  /// In en, this message translates to:
  /// **'Send from Bringin card'**
  String get card_send_lnurl_comment;

  /// No description provided for @card_send_error_ln_cap.
  ///
  /// In en, this message translates to:
  /// **'Lightning transfers are capped at €{cap}. Lower the amount.'**
  String card_send_error_ln_cap(int cap);

  /// No description provided for @card_send_error_ln_cap_external.
  ///
  /// In en, this message translates to:
  /// **'Lightning transfers are capped at €{cap}. Lower the amount or choose an on-chain wallet.'**
  String card_send_error_ln_cap_external(int cap);

  /// No description provided for @card_send_failure_reason.
  ///
  /// In en, this message translates to:
  /// **'Transaction {status}'**
  String card_send_failure_reason(String status);

  /// No description provided for @card_send_otp_error_expired.
  ///
  /// In en, this message translates to:
  /// **'Verification code expired. Tap resend or try again.'**
  String get card_send_otp_error_expired;

  /// No description provided for @card_send_otp_error_generic.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t verify your code. Please try again.'**
  String get card_send_otp_error_generic;

  /// No description provided for @card_send_otp_resent.
  ///
  /// In en, this message translates to:
  /// **'Verification code resent'**
  String get card_send_otp_resent;

  /// No description provided for @card_send_sca_title_swap.
  ///
  /// In en, this message translates to:
  /// **'Verify Card balance swap'**
  String get card_send_sca_title_swap;

  /// No description provided for @card_send_sca_action_swap.
  ///
  /// In en, this message translates to:
  /// **'Verify and swap'**
  String get card_send_sca_action_swap;

  /// No description provided for @send_amount_error_minimum_btc_symbol.
  ///
  /// In en, this message translates to:
  /// **'Minimum is ฿{min}'**
  String send_amount_error_minimum_btc_symbol(String min);

  /// No description provided for @card_send_error_zero_invoice.
  ///
  /// In en, this message translates to:
  /// **'Zero-amount invoices are not supported. Use one with an embedded amount.'**
  String get card_send_error_zero_invoice;

  /// No description provided for @card_send_detected_btc_address.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin address detected — tap Next to save it as a wallet.'**
  String get card_send_detected_btc_address;

  /// No description provided for @card_send_error_unrecognised.
  ///
  /// In en, this message translates to:
  /// **'Unrecognised address or invoice'**
  String get card_send_error_unrecognised;

  /// No description provided for @card_send_select_recipient.
  ///
  /// In en, this message translates to:
  /// **'Select or add recipient'**
  String get card_send_select_recipient;

  /// No description provided for @card_send_error_load_wallets.
  ///
  /// In en, this message translates to:
  /// **'Could not load saved wallets. Pull to retry.'**
  String get card_send_error_load_wallets;

  /// No description provided for @card_send_no_wallets.
  ///
  /// In en, this message translates to:
  /// **'No saved wallets yet. Tap + to add one, or paste a Lightning invoice above.'**
  String get card_send_no_wallets;

  /// No description provided for @card_send_error_resave.
  ///
  /// In en, this message translates to:
  /// **'Could not re-save the wallet. Try again.'**
  String get card_send_error_resave;

  /// No description provided for @card_send_resave_title.
  ///
  /// In en, this message translates to:
  /// **'Re-save this wallet'**
  String get card_send_resave_title;

  /// No description provided for @card_send_resave_message.
  ///
  /// In en, this message translates to:
  /// **'This Lightning address was saved before EU Travel Rule. Re-save it to enable payments.'**
  String get card_send_resave_message;

  /// No description provided for @card_send_action_resave.
  ///
  /// In en, this message translates to:
  /// **'Re-save'**
  String get card_send_action_resave;

  /// No description provided for @card_add_sheet_prompt.
  ///
  /// In en, this message translates to:
  /// **'How to fund?'**
  String get card_add_sheet_prompt;

  /// No description provided for @card_add_option_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Fund with Bitcoin wallet'**
  String get card_add_option_bitcoin;

  /// No description provided for @card_add_option_euro.
  ///
  /// In en, this message translates to:
  /// **'Fund with Euro account'**
  String get card_add_option_euro;

  /// No description provided for @card_add_option_external.
  ///
  /// In en, this message translates to:
  /// **'Fund with external wallets'**
  String get card_add_option_external;

  /// No description provided for @card_add_subtitle_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin wallet to Card balance'**
  String get card_add_subtitle_bitcoin;

  /// No description provided for @card_add_subtitle_euro.
  ///
  /// In en, this message translates to:
  /// **'Euro account to Card balance'**
  String get card_add_subtitle_euro;

  /// No description provided for @card_add_subtitle_external.
  ///
  /// In en, this message translates to:
  /// **'External wallet to Card balance'**
  String get card_add_subtitle_external;

  /// No description provided for @card_add_use_full_btc_balance.
  ///
  /// In en, this message translates to:
  /// **'Use the full Bitcoin wallet balance'**
  String get card_add_use_full_btc_balance;

  /// No description provided for @card_add_use_full_eur_balance.
  ///
  /// In en, this message translates to:
  /// **'Use the full Euro account balance'**
  String get card_add_use_full_eur_balance;

  /// No description provided for @card_add_field_amount.
  ///
  /// In en, this message translates to:
  /// **'Add to Card balance'**
  String get card_add_field_amount;

  /// No description provided for @card_add_field_send_from_euro.
  ///
  /// In en, this message translates to:
  /// **'Send from Euro account'**
  String get card_add_field_send_from_euro;

  /// No description provided for @card_add_field_btc_receives.
  ///
  /// In en, this message translates to:
  /// **'Card balance gets'**
  String get card_add_field_btc_receives;

  /// No description provided for @card_add_action_swipe.
  ///
  /// In en, this message translates to:
  /// **'Swipe to add'**
  String get card_add_action_swipe;

  /// No description provided for @card_add_error_address_unavailable.
  ///
  /// In en, this message translates to:
  /// **'Card balance address is not available. Please try again.'**
  String get card_add_error_address_unavailable;

  /// No description provided for @card_add_sca_title_topup.
  ///
  /// In en, this message translates to:
  /// **'Verify Card balance topup'**
  String get card_add_sca_title_topup;

  /// No description provided for @card_add_deposit_status.
  ///
  /// In en, this message translates to:
  /// **'Deposit {status}'**
  String card_add_deposit_status(String status);

  /// No description provided for @card_add_tab_onchain.
  ///
  /// In en, this message translates to:
  /// **'Onchain'**
  String get card_add_tab_onchain;

  /// No description provided for @card_add_onchain_heading.
  ///
  /// In en, this message translates to:
  /// **'Use an external wallet'**
  String get card_add_onchain_heading;

  /// No description provided for @card_add_onchain_description.
  ///
  /// In en, this message translates to:
  /// **'Scan QR to add money. A flat fee of 50 sats applicable.'**
  String get card_add_onchain_description;

  /// No description provided for @card_add_onchain_notice.
  ///
  /// In en, this message translates to:
  /// **'You\'ll be required to declare the source of funds once the deposit is received. Deposits above €1,000 are not permitted from wallets owned by another individual or company.'**
  String get card_add_onchain_notice;

  /// No description provided for @card_add_ln_heading.
  ///
  /// In en, this message translates to:
  /// **'Use a Lightning wallet'**
  String get card_add_ln_heading;

  /// No description provided for @card_add_ln_description.
  ///
  /// In en, this message translates to:
  /// **'Scan QR or copy the address to receive money instantly.'**
  String get card_add_ln_description;

  /// No description provided for @card_add_ln_notice.
  ///
  /// In en, this message translates to:
  /// **'You\'ll be required to declare the source of funds once the deposit is received. Lightning deposits are capped at €{cap} per transaction under EU Travel Rule.'**
  String card_add_ln_notice(String cap);

  /// No description provided for @card_add_label_ln_address.
  ///
  /// In en, this message translates to:
  /// **'Lightning address'**
  String get card_add_label_ln_address;

  /// No description provided for @send_amount_error_minimum_eur.
  ///
  /// In en, this message translates to:
  /// **'Minimum is €{min}'**
  String send_amount_error_minimum_eur(String min);

  /// No description provided for @card_create_error_name_empty.
  ///
  /// In en, this message translates to:
  /// **'Name on card can\'t be empty.'**
  String get card_create_error_name_empty;

  /// No description provided for @card_create_error_name_too_short.
  ///
  /// In en, this message translates to:
  /// **'Name must be at least 4 characters.'**
  String get card_create_error_name_too_short;

  /// No description provided for @card_create_error_name_too_long.
  ///
  /// In en, this message translates to:
  /// **'Name must be 40 characters or less.'**
  String get card_create_error_name_too_long;

  /// No description provided for @card_create_error_name_charset.
  ///
  /// In en, this message translates to:
  /// **'Name can only contain Latin letters (A-Z, a-z).'**
  String get card_create_error_name_charset;

  /// No description provided for @card_create_error_address_empty.
  ///
  /// In en, this message translates to:
  /// **'Address can\'t be empty.'**
  String get card_create_error_address_empty;

  /// No description provided for @card_create_error_city_empty.
  ///
  /// In en, this message translates to:
  /// **'City can\'t be empty.'**
  String get card_create_error_city_empty;

  /// No description provided for @card_create_error_postal_empty.
  ///
  /// In en, this message translates to:
  /// **'Postal code can\'t be empty.'**
  String get card_create_error_postal_empty;

  /// No description provided for @card_create_toast_ordered_pending_relink.
  ///
  /// In en, this message translates to:
  /// **'Card ordered. Switching to your Card balance is pending — try again from card details if it doesn\'t update shortly.'**
  String get card_create_toast_ordered_pending_relink;

  /// No description provided for @card_create_toast_created_pending_relink.
  ///
  /// In en, this message translates to:
  /// **'Card created. Switching to your Card balance is pending — try again from card details if it doesn\'t update shortly.'**
  String get card_create_toast_created_pending_relink;

  /// No description provided for @card_create_toast_physical_success.
  ///
  /// In en, this message translates to:
  /// **'Physical card ordered successfully!'**
  String get card_create_toast_physical_success;

  /// No description provided for @card_create_error_invalid_3ds.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t create the card. Please check that your 3DS password only contains allowed characters and try again.'**
  String get card_create_error_invalid_3ds;

  /// No description provided for @card_create_physical_title.
  ///
  /// In en, this message translates to:
  /// **'Create a physical card'**
  String get card_create_physical_title;

  /// No description provided for @card_create_limit_message.
  ///
  /// In en, this message translates to:
  /// **'You already have {max} cards linked to your {destination}. Close one to create a new card.'**
  String card_create_limit_message(int max, String destination);

  /// No description provided for @card_create_fee_notice.
  ///
  /// In en, this message translates to:
  /// **'Your linked account pays €{fee} as a card creation fee once the card is created.'**
  String card_create_fee_notice(String fee);

  /// No description provided for @card_create_fee_loading.
  ///
  /// In en, this message translates to:
  /// **'Loading card creation fee...'**
  String get card_create_fee_loading;

  /// No description provided for @card_create_field_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Add a name'**
  String get card_create_field_name_hint;

  /// No description provided for @card_create_field_3ds_label.
  ///
  /// In en, this message translates to:
  /// **'New 3DS password'**
  String get card_create_field_3ds_label;

  /// No description provided for @card_create_delivery_title.
  ///
  /// In en, this message translates to:
  /// **'Card delivery'**
  String get card_create_delivery_title;

  /// No description provided for @card_create_field_address1.
  ///
  /// In en, this message translates to:
  /// **'Address (line 1)'**
  String get card_create_field_address1;

  /// No description provided for @card_create_field_address1_hint.
  ///
  /// In en, this message translates to:
  /// **'Add your address'**
  String get card_create_field_address1_hint;

  /// No description provided for @card_create_field_address2.
  ///
  /// In en, this message translates to:
  /// **'Address (line 2)'**
  String get card_create_field_address2;

  /// No description provided for @card_create_field_address2_hint.
  ///
  /// In en, this message translates to:
  /// **'Use if your address is longer'**
  String get card_create_field_address2_hint;

  /// No description provided for @card_create_field_city.
  ///
  /// In en, this message translates to:
  /// **'City'**
  String get card_create_field_city;

  /// No description provided for @card_create_field_city_hint.
  ///
  /// In en, this message translates to:
  /// **'Your city'**
  String get card_create_field_city_hint;

  /// No description provided for @card_create_field_postal.
  ///
  /// In en, this message translates to:
  /// **'Postal code'**
  String get card_create_field_postal;

  /// No description provided for @card_create_field_postal_hint.
  ///
  /// In en, this message translates to:
  /// **'Add code'**
  String get card_create_field_postal_hint;

  /// No description provided for @card_create_field_region.
  ///
  /// In en, this message translates to:
  /// **'Region/State'**
  String get card_create_field_region;

  /// No description provided for @card_create_field_country.
  ///
  /// In en, this message translates to:
  /// **'Country'**
  String get card_create_field_country;

  /// No description provided for @card_create_delivery_tracked.
  ///
  /// In en, this message translates to:
  /// **'Tracked post'**
  String get card_create_delivery_tracked;

  /// No description provided for @card_create_delivery_tracked_detail.
  ///
  /// In en, this message translates to:
  /// **'Arrives within 10 days | €{price}'**
  String card_create_delivery_tracked_detail(String price);

  /// No description provided for @card_create_delivery_express.
  ///
  /// In en, this message translates to:
  /// **'Express delivery'**
  String get card_create_delivery_express;

  /// No description provided for @card_create_delivery_express_detail.
  ///
  /// In en, this message translates to:
  /// **'Arrives within 3 days | €{price}'**
  String card_create_delivery_express_detail(String price);

  /// No description provided for @card_create_delivery_express_prefix.
  ///
  /// In en, this message translates to:
  /// **'Arrives within 3 days | '**
  String get card_create_delivery_express_prefix;

  /// No description provided for @card_create_delivery_free.
  ///
  /// In en, this message translates to:
  /// **'Free'**
  String get card_create_delivery_free;

  /// No description provided for @card_password_rule_length.
  ///
  /// In en, this message translates to:
  /// **'8 to 36 characters'**
  String get card_password_rule_length;

  /// No description provided for @card_password_rule_capital.
  ///
  /// In en, this message translates to:
  /// **'A capital letter'**
  String get card_password_rule_capital;

  /// No description provided for @card_password_rule_digit.
  ///
  /// In en, this message translates to:
  /// **'A digit'**
  String get card_password_rule_digit;

  /// No description provided for @card_password_rule_lowercase.
  ///
  /// In en, this message translates to:
  /// **'A lowercase letter'**
  String get card_password_rule_lowercase;

  /// No description provided for @card_password_rule_special.
  ///
  /// In en, this message translates to:
  /// **'A special character'**
  String get card_password_rule_special;

  /// No description provided for @card_password_rule_allowed.
  ///
  /// In en, this message translates to:
  /// **'Only allowed characters'**
  String get card_password_rule_allowed;

  /// No description provided for @card_create_action_create.
  ///
  /// In en, this message translates to:
  /// **'Create card'**
  String get card_create_action_create;

  /// No description provided for @card_create_virtual_title.
  ///
  /// In en, this message translates to:
  /// **'Create a virtual card'**
  String get card_create_virtual_title;

  /// No description provided for @card_balance_manage_title.
  ///
  /// In en, this message translates to:
  /// **'Manage Card balance'**
  String get card_balance_manage_title;

  /// No description provided for @card_balance_custodial_title.
  ///
  /// In en, this message translates to:
  /// **'Custodial wallet'**
  String get card_balance_custodial_title;

  /// No description provided for @card_balance_custodial_description.
  ///
  /// In en, this message translates to:
  /// **'Your card balance is a custodial Bitcoin wallet, designed for seamless card transactions.'**
  String get card_balance_custodial_description;

  /// No description provided for @card_balance_error_load_transactions.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load your transactions.'**
  String get card_balance_error_load_transactions;

  /// No description provided for @card_prepayment_success_title.
  ///
  /// In en, this message translates to:
  /// **'Thank you for your card prepayment! 🎉'**
  String get card_prepayment_success_title;

  /// No description provided for @card_prepayment_error_bank_app.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open your bank\'s app. Try approving in the browser instead.'**
  String get card_prepayment_error_bank_app;

  /// No description provided for @profile_anon_card_error.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t activate your card. Please check your details and try again.'**
  String get profile_anon_card_error;

  /// No description provided for @profile_anon_card_title.
  ///
  /// In en, this message translates to:
  /// **'Activate Anonymous Card'**
  String get profile_anon_card_title;

  /// No description provided for @profile_anon_card_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Link your free debit card to your account with no extra cost'**
  String get profile_anon_card_subtitle;

  /// No description provided for @profile_anon_card_field_code.
  ///
  /// In en, this message translates to:
  /// **'Activation Code'**
  String get profile_anon_card_field_code;

  /// No description provided for @profile_anon_card_field_code_hint.
  ///
  /// In en, this message translates to:
  /// **'Code on your envelope'**
  String get profile_anon_card_field_code_hint;

  /// No description provided for @profile_anon_card_action.
  ///
  /// In en, this message translates to:
  /// **'Link card'**
  String get profile_anon_card_action;

  /// No description provided for @profile_auto_decl_error.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t save that change. Try again in a moment.'**
  String get profile_auto_decl_error;

  /// No description provided for @profile_auto_decl_title.
  ///
  /// In en, this message translates to:
  /// **'Auto wallet declaration'**
  String get profile_auto_decl_title;

  /// No description provided for @profile_auto_decl_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Save your wallet preferences'**
  String get profile_auto_decl_subtitle;

  /// No description provided for @profile_auto_decl_intro.
  ///
  /// In en, this message translates to:
  /// **'Tell us whether you normally buy to and sell from wallets you own. We\'ll use your choices as the default so you don\'t have to confirm this every time. For transfers over €1,000, we may still need to verify that you control the wallet, as required by EU rules.'**
  String get profile_auto_decl_intro;

  /// No description provided for @profile_auto_decl_buy_title.
  ///
  /// In en, this message translates to:
  /// **'Buy to my own wallet'**
  String get profile_auto_decl_buy_title;

  /// No description provided for @profile_auto_decl_buy_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Automatically treat new Bitcoin buys as going to a wallet I own.'**
  String get profile_auto_decl_buy_subtitle;

  /// No description provided for @profile_auto_decl_sell_title.
  ///
  /// In en, this message translates to:
  /// **'Sell from my own wallet'**
  String get profile_auto_decl_sell_title;

  /// No description provided for @profile_auto_decl_sell_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Automatically treat new Bitcoin sells as coming from a wallet I own.'**
  String get profile_auto_decl_sell_subtitle;

  /// No description provided for @profile_auto_decl_footnote.
  ///
  /// In en, this message translates to:
  /// **'These preferences apply only to new wallet addresses you add. Your existing wallet declarations won\'t change.'**
  String get profile_auto_decl_footnote;

  /// No description provided for @profile_backup_required_title.
  ///
  /// In en, this message translates to:
  /// **'Backup required'**
  String get profile_backup_required_title;

  /// No description provided for @profile_backup_required_heading.
  ///
  /// In en, this message translates to:
  /// **'Backup your wallet'**
  String get profile_backup_required_heading;

  /// No description provided for @profile_backup_required_action.
  ///
  /// In en, this message translates to:
  /// **'I understand, logout'**
  String get profile_backup_required_action;

  /// No description provided for @profile_backup_required_ack.
  ///
  /// In en, this message translates to:
  /// **'I understand that without a backup, my Bitcoin will be permanently lost and cannot be recovered.'**
  String get profile_backup_required_ack;

  /// No description provided for @profile_backup_required_warning.
  ///
  /// In en, this message translates to:
  /// **'No backup = permanent loss. We don’t hold your keys or control your Bitcoin.'**
  String get profile_backup_required_warning;

  /// No description provided for @profile_delete_title.
  ///
  /// In en, this message translates to:
  /// **'Delete account'**
  String get profile_delete_title;

  /// No description provided for @profile_delete_confirm_heading.
  ///
  /// In en, this message translates to:
  /// **'Are you sure?'**
  String get profile_delete_confirm_heading;

  /// No description provided for @profile_delete_body.
  ///
  /// In en, this message translates to:
  /// **'If you delete your account on Bringin, all your previous transaction history and other transaction-related details will also be deleted.'**
  String get profile_delete_body;

  /// No description provided for @profile_delete_note.
  ///
  /// In en, this message translates to:
  /// **'Note: There are some details that our partners with whom we work are obligated to save for compliance reasons. More details about them are in the privacy policies. For more information, contact us at support@bringin.xyz'**
  String get profile_delete_note;

  /// No description provided for @profile_delete_action.
  ///
  /// In en, this message translates to:
  /// **'Yes, delete my account'**
  String get profile_delete_action;

  /// No description provided for @profile_delete_done_title.
  ///
  /// In en, this message translates to:
  /// **'Account deleted'**
  String get profile_delete_done_title;

  /// No description provided for @profile_delete_done_body.
  ///
  /// In en, this message translates to:
  /// **'If you wish to have an account with Bringin again with the same email address and mobile number, contact us at support@bringin.xyz'**
  String get profile_delete_done_body;

  /// No description provided for @profile_delete_action_home.
  ///
  /// In en, this message translates to:
  /// **'Go to home'**
  String get profile_delete_action_home;

  /// No description provided for @profile_delete_error_password_empty.
  ///
  /// In en, this message translates to:
  /// **'Your password can\'t be empty'**
  String get profile_delete_error_password_empty;

  /// No description provided for @profile_delete_error_password_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid password'**
  String get profile_delete_error_password_invalid;

  /// No description provided for @profile_export_title.
  ///
  /// In en, this message translates to:
  /// **'Transaction statement'**
  String get profile_export_title;

  /// No description provided for @profile_export_intro.
  ///
  /// In en, this message translates to:
  /// **'Select the period and format for your transaction statement. We\'ll email the export to your registered address '**
  String get profile_export_intro;

  /// No description provided for @profile_export_label_format.
  ///
  /// In en, this message translates to:
  /// **'Download format'**
  String get profile_export_label_format;

  /// No description provided for @profile_export_action_select_date.
  ///
  /// In en, this message translates to:
  /// **'Select date'**
  String get profile_export_action_select_date;

  /// No description provided for @profile_export_action.
  ///
  /// In en, this message translates to:
  /// **'Export'**
  String get profile_export_action;

  /// No description provided for @profile_export_toast_sent.
  ///
  /// In en, this message translates to:
  /// **'Email sent.'**
  String get profile_export_toast_sent;

  /// No description provided for @profile_export_error_failed.
  ///
  /// In en, this message translates to:
  /// **'Export failed. Please try again.'**
  String get profile_export_error_failed;

  /// No description provided for @profile_export_error_cancelled.
  ///
  /// In en, this message translates to:
  /// **'Export cancelled — please try again.'**
  String get profile_export_error_cancelled;

  /// No description provided for @profile_kyc_title.
  ///
  /// In en, this message translates to:
  /// **'KYC and limits'**
  String get profile_kyc_title;

  /// No description provided for @profile_kyc_section_deposit_limits.
  ///
  /// In en, this message translates to:
  /// **'Deposit limits'**
  String get profile_kyc_section_deposit_limits;

  /// No description provided for @profile_kyc_banner_tier2.
  ///
  /// In en, this message translates to:
  /// **'You’re on Tier 2 for your Euro and card accounts. You can increase your limits anytime.'**
  String get profile_kyc_banner_tier2;

  /// No description provided for @profile_kyc_banner_reaching.
  ///
  /// In en, this message translates to:
  /// **'You are reaching the limits for your Euro account and Card balance account.'**
  String get profile_kyc_banner_reaching;

  /// No description provided for @profile_kyc_banner_tier1.
  ///
  /// In en, this message translates to:
  /// **'You are on tier 1 for your Euro account and Card balance account.'**
  String get profile_kyc_banner_tier1;

  /// No description provided for @profile_kyc_tier_label.
  ///
  /// In en, this message translates to:
  /// **'You are on Tier {tier}'**
  String profile_kyc_tier_label(int tier);

  /// No description provided for @profile_kyc_limit_row.
  ///
  /// In en, this message translates to:
  /// **'{label} of {limit}/month'**
  String profile_kyc_limit_row(String label, String limit);

  /// No description provided for @profile_kyc_approaching.
  ///
  /// In en, this message translates to:
  /// **'You’re approaching your transaction limits. Complete additional verification to unlock higher limits.'**
  String get profile_kyc_approaching;

  /// No description provided for @profile_kyc_complete_verification.
  ///
  /// In en, this message translates to:
  /// **'Complete additional verification for unlocking higher limits.'**
  String get profile_kyc_complete_verification;

  /// No description provided for @profile_kyc_action_unlock.
  ///
  /// In en, this message translates to:
  /// **'Unlock higher limits'**
  String get profile_kyc_action_unlock;

  /// No description provided for @profile_kyc_btc_not_applicable.
  ///
  /// In en, this message translates to:
  /// **'Not applicable to Bitcoin wallet'**
  String get profile_kyc_btc_not_applicable;

  /// No description provided for @profile_kyc_btc_no_limits.
  ///
  /// In en, this message translates to:
  /// **'No deposit limits on your Bitcoin wallet. It’s self-custodied, which means it’s outside our limits.'**
  String get profile_kyc_btc_no_limits;

  /// No description provided for @profile_kyc_increase_title.
  ///
  /// In en, this message translates to:
  /// **'Increase your limits'**
  String get profile_kyc_increase_title;

  /// No description provided for @profile_kyc_increase_note.
  ///
  /// In en, this message translates to:
  /// **'Please note that once you start the next tier of KYC, you must complete it within 30 days.'**
  String get profile_kyc_increase_note;

  /// No description provided for @profile_kyc_increase_prepare.
  ///
  /// In en, this message translates to:
  /// **'Keep your proof of address ready and provide details on your source of funds.'**
  String get profile_kyc_increase_prepare;

  /// No description provided for @profile_kyc_email_prefix.
  ///
  /// In en, this message translates to:
  /// **'Email us at '**
  String get profile_kyc_email_prefix;

  /// No description provided for @profile_kyc_email_suffix.
  ///
  /// In en, this message translates to:
  /// **' if you would like to opt-in to upgrade your KYC-tier.'**
  String get profile_kyc_email_suffix;

  /// No description provided for @profile_kyc_band_100k_500k.
  ///
  /// In en, this message translates to:
  /// **'From €100K to €500k'**
  String get profile_kyc_band_100k_500k;

  /// No description provided for @profile_kyc_band_500k_1m.
  ///
  /// In en, this message translates to:
  /// **'From €500K to €1M'**
  String get profile_kyc_band_500k_1m;

  /// No description provided for @profile_kyc_band_above_1m.
  ///
  /// In en, this message translates to:
  /// **'Above €1M'**
  String get profile_kyc_band_above_1m;

  /// No description provided for @profile_kyc_review_pending.
  ///
  /// In en, this message translates to:
  /// **'Your request is being reviewed — an account manager will be in touch shortly.'**
  String get profile_kyc_review_pending;

  /// No description provided for @profile_kyc_choose_limit.
  ///
  /// In en, this message translates to:
  /// **'Choose your monthly transaction limit. An account manager will contact you shortly.'**
  String get profile_kyc_choose_limit;

  /// No description provided for @profile_kyc_action_notify.
  ///
  /// In en, this message translates to:
  /// **'Notify manager'**
  String get profile_kyc_action_notify;

  /// No description provided for @profile_kyc_notified_title.
  ///
  /// In en, this message translates to:
  /// **'Notification received!'**
  String get profile_kyc_notified_title;

  /// No description provided for @profile_kyc_notified_body.
  ///
  /// In en, this message translates to:
  /// **'We’ve received your request to increase your monthly transaction limits. Your account manager will email you shortly with an update. For any questions, contact '**
  String get profile_kyc_notified_body;

  /// No description provided for @profile_pro_title.
  ///
  /// In en, this message translates to:
  /// **'Bringin Pro'**
  String get profile_pro_title;

  /// No description provided for @profile_pro_benefit_card.
  ///
  /// In en, this message translates to:
  /// **'Debit card access'**
  String get profile_pro_benefit_card;

  /// No description provided for @profile_pro_benefit_fx.
  ///
  /// In en, this message translates to:
  /// **'0% FX fee'**
  String get profile_pro_benefit_fx;

  /// No description provided for @profile_pro_benefit_cards.
  ///
  /// In en, this message translates to:
  /// **'A free physical & virtual debit cards'**
  String get profile_pro_benefit_cards;

  /// No description provided for @profile_pro_benefit_rate.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin to Euro exchange rate 1%'**
  String get profile_pro_benefit_rate;

  /// No description provided for @profile_pro_link_here.
  ///
  /// In en, this message translates to:
  /// **'click here'**
  String get profile_pro_link_here;

  /// No description provided for @profile_pro_is_pro.
  ///
  /// In en, this message translates to:
  /// **'You are a pro user'**
  String get profile_pro_is_pro;

  /// No description provided for @profile_pro_section_additional.
  ///
  /// In en, this message translates to:
  /// **'Additional benefits'**
  String get profile_pro_section_additional;

  /// No description provided for @profile_pro_offer_alby.
  ///
  /// In en, this message translates to:
  /// **'Get 10% off on the Alby Hub Subscription for 1 year. '**
  String get profile_pro_offer_alby;

  /// No description provided for @profile_pro_offer_koinly.
  ///
  /// In en, this message translates to:
  /// **'Get 10% off on the Koinly Tax Calculator for 1 year. '**
  String get profile_pro_offer_koinly;

  /// No description provided for @profile_fallback_user.
  ///
  /// In en, this message translates to:
  /// **'User'**
  String get profile_fallback_user;

  /// No description provided for @profile_action_help.
  ///
  /// In en, this message translates to:
  /// **'Help?'**
  String get profile_action_help;

  /// No description provided for @profile_ln_section_title.
  ///
  /// In en, this message translates to:
  /// **'Your lightning addresses'**
  String get profile_ln_section_title;

  /// No description provided for @profile_ln_claim_prompt.
  ///
  /// In en, this message translates to:
  /// **'Claim your lightning address to start receiving payments.'**
  String get profile_ln_claim_prompt;

  /// No description provided for @profile_ln_destinations_all.
  ///
  /// In en, this message translates to:
  /// **'wallet, account and card balance'**
  String get profile_ln_destinations_all;

  /// No description provided for @profile_ln_destinations_wallet_account.
  ///
  /// In en, this message translates to:
  /// **'wallet and account'**
  String get profile_ln_destinations_wallet_account;

  /// No description provided for @profile_ln_destinations_account_card.
  ///
  /// In en, this message translates to:
  /// **'account and card balance'**
  String get profile_ln_destinations_account_card;

  /// No description provided for @profile_ln_destinations_account.
  ///
  /// In en, this message translates to:
  /// **'account'**
  String get profile_ln_destinations_account;

  /// No description provided for @profile_ln_description.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =1{Lightning address to receive payments to your {destinations}.} other{Lightning addresses to receive payments to your {destinations}.}}'**
  String profile_ln_description(int count, String destinations);

  /// No description provided for @profile_ln_action_claim_address.
  ///
  /// In en, this message translates to:
  /// **'Claim address'**
  String get profile_ln_action_claim_address;

  /// No description provided for @profile_ln_action_claim_username.
  ///
  /// In en, this message translates to:
  /// **'Claim username'**
  String get profile_ln_action_claim_username;

  /// No description provided for @profile_ln_toast_copied.
  ///
  /// In en, this message translates to:
  /// **'Address copied'**
  String get profile_ln_toast_copied;

  /// No description provided for @profile_shortcut_referral.
  ///
  /// In en, this message translates to:
  /// **'Referral\nprogram'**
  String get profile_shortcut_referral;

  /// No description provided for @profile_shortcut_bank_accounts.
  ///
  /// In en, this message translates to:
  /// **'Saved bank\naccounts'**
  String get profile_shortcut_bank_accounts;

  /// No description provided for @profile_shortcut_external_wallets.
  ///
  /// In en, this message translates to:
  /// **'All external\nwallets'**
  String get profile_shortcut_external_wallets;

  /// No description provided for @profile_row_support.
  ///
  /// In en, this message translates to:
  /// **'Customer support'**
  String get profile_row_support;

  /// No description provided for @profile_row_auto_declaration.
  ///
  /// In en, this message translates to:
  /// **'Auto declaration'**
  String get profile_row_auto_declaration;

  /// No description provided for @profile_row_statements.
  ///
  /// In en, this message translates to:
  /// **'Transaction statements'**
  String get profile_row_statements;

  /// No description provided for @profile_row_community.
  ///
  /// In en, this message translates to:
  /// **'Bringin community'**
  String get profile_row_community;

  /// No description provided for @profile_row_security.
  ///
  /// In en, this message translates to:
  /// **'Login & security'**
  String get profile_row_security;

  /// No description provided for @profile_row_feedback.
  ///
  /// In en, this message translates to:
  /// **'Feedbacks'**
  String get profile_row_feedback;

  /// No description provided for @profile_row_share_logs.
  ///
  /// In en, this message translates to:
  /// **'Share logs'**
  String get profile_row_share_logs;

  /// No description provided for @profile_row_logout.
  ///
  /// In en, this message translates to:
  /// **'Logout'**
  String get profile_row_logout;

  /// No description provided for @profile_link_terms.
  ///
  /// In en, this message translates to:
  /// **'Terms and conditions'**
  String get profile_link_terms;

  /// No description provided for @profile_logs_preparing.
  ///
  /// In en, this message translates to:
  /// **'Preparing your logs.'**
  String get profile_logs_preparing;

  /// No description provided for @profile_logs_subject.
  ///
  /// In en, this message translates to:
  /// **'Logs'**
  String get profile_logs_subject;

  /// No description provided for @profile_kyc_required.
  ///
  /// In en, this message translates to:
  /// **'Please complete your KYC verification to access this feature.'**
  String get profile_kyc_required;

  /// No description provided for @profile_signing_out.
  ///
  /// In en, this message translates to:
  /// **'Signing you out.'**
  String get profile_signing_out;

  /// No description provided for @profile_logout_cloud_backup_title.
  ///
  /// In en, this message translates to:
  /// **'Get a cloud back up'**
  String get profile_logout_cloud_backup_title;

  /// No description provided for @profile_logout_no_cloud_backup.
  ///
  /// In en, this message translates to:
  /// **'No cloud back up found.'**
  String get profile_logout_no_cloud_backup;

  /// No description provided for @profile_logout_no_cloud_backup_body.
  ///
  /// In en, this message translates to:
  /// **'After logout, you\'ll need your 12-word recovery phrase to restore your wallet. Make sure it\'s stored safely before logging out.'**
  String get profile_logout_no_cloud_backup_body;

  /// No description provided for @profile_logout_not_backed_up.
  ///
  /// In en, this message translates to:
  /// **'Your wallet isn\'t backed up. If you lose access, your Bitcoin will be permanently lost.'**
  String get profile_logout_not_backed_up;

  /// No description provided for @profile_logout_title.
  ///
  /// In en, this message translates to:
  /// **'Logout?'**
  String get profile_logout_title;

  /// No description provided for @profile_logout_no_backup_found.
  ///
  /// In en, this message translates to:
  /// **'No backup found.'**
  String get profile_logout_no_backup_found;

  /// No description provided for @profile_logout_no_backup_body.
  ///
  /// In en, this message translates to:
  /// **'If you\'ve used this wallet before, any future deposits to this address cannot be recovered.'**
  String get profile_logout_no_backup_body;

  /// No description provided for @profile_logout_payment_in_progress.
  ///
  /// In en, this message translates to:
  /// **'You have a payment in progress. Logging out now may interrupt it.'**
  String get profile_logout_payment_in_progress;

  /// No description provided for @profile_logout_alby_disconnect.
  ///
  /// In en, this message translates to:
  /// **'Your Alby wallet will disconnect. Reconnect through Alby Go after signing in again.'**
  String get profile_logout_alby_disconnect;

  /// No description provided for @profile_logout_action_anyway.
  ///
  /// In en, this message translates to:
  /// **'I understand, logout anyway'**
  String get profile_logout_action_anyway;

  /// No description provided for @profile_logout_action_add_cloud.
  ///
  /// In en, this message translates to:
  /// **'Add a cloud back up'**
  String get profile_logout_action_add_cloud;

  /// No description provided for @profile_logout_confirm_title.
  ///
  /// In en, this message translates to:
  /// **'Log out of Bringin?'**
  String get profile_logout_confirm_title;

  /// No description provided for @profile_logout_confirm_signin_again.
  ///
  /// In en, this message translates to:
  /// **'You\'ll need to sign in again to access your account.'**
  String get profile_logout_confirm_signin_again;

  /// No description provided for @profile_logout_confirm_wallet_removed.
  ///
  /// In en, this message translates to:
  /// **'Your Bitcoin wallet will be removed from this device. You can restore it later if you have a recovery phrase.'**
  String get profile_logout_confirm_wallet_removed;

  /// No description provided for @profile_logout_confirm_backed_up.
  ///
  /// In en, this message translates to:
  /// **'Your wallet is backed up to Google Drive. Sign back in anytime to restore it.'**
  String get profile_logout_confirm_backed_up;

  /// No description provided for @profile_kyc_limit_label_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'withdrawal'**
  String get profile_kyc_limit_label_withdrawal;

  /// No description provided for @profile_kyc_limit_label_deposits.
  ///
  /// In en, this message translates to:
  /// **'deposits'**
  String get profile_kyc_limit_label_deposits;

  /// No description provided for @sell_autoswap_title.
  ///
  /// In en, this message translates to:
  /// **'Auto-swap isn\'t enabled'**
  String get sell_autoswap_title;

  /// No description provided for @sell_autoswap_description.
  ///
  /// In en, this message translates to:
  /// **'Auto-swap converts your Bitcoin to Euros. You\'ll need it before you can sell to your bank.'**
  String get sell_autoswap_description;

  /// No description provided for @sell_autoswap_action.
  ///
  /// In en, this message translates to:
  /// **'Enable auto-swap'**
  String get sell_autoswap_action;

  /// No description provided for @sell_title.
  ///
  /// In en, this message translates to:
  /// **'Sell to bank'**
  String get sell_title;

  /// No description provided for @sell_source_blink.
  ///
  /// In en, this message translates to:
  /// **'Blink wallet'**
  String get sell_source_blink;

  /// No description provided for @sell_source_nwc.
  ///
  /// In en, this message translates to:
  /// **'NWC wallet'**
  String get sell_source_nwc;

  /// No description provided for @sell_source_external.
  ///
  /// In en, this message translates to:
  /// **'External wallet'**
  String get sell_source_external;

  /// No description provided for @sell_select_source.
  ///
  /// In en, this message translates to:
  /// **'Select source'**
  String get sell_select_source;

  /// No description provided for @sell_select_recipient.
  ///
  /// In en, this message translates to:
  /// **'Select or add a recipient'**
  String get sell_select_recipient;

  /// No description provided for @sell_error_account_not_ready.
  ///
  /// In en, this message translates to:
  /// **'Account not ready. Please try again.'**
  String get sell_error_account_not_ready;

  /// No description provided for @sell_error_load_recipients.
  ///
  /// In en, this message translates to:
  /// **'Failed to load recipients'**
  String get sell_error_load_recipients;

  /// No description provided for @sell_no_recipients.
  ///
  /// In en, this message translates to:
  /// **'No recipients added yet.'**
  String get sell_no_recipients;

  /// No description provided for @sell_reference_default.
  ///
  /// In en, this message translates to:
  /// **'From Bringin'**
  String get sell_reference_default;

  /// No description provided for @sell_error_load_details.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load some details.'**
  String get sell_error_load_details;

  /// No description provided for @sell_label_reference_source.
  ///
  /// In en, this message translates to:
  /// **'From Bringin wallet'**
  String get sell_label_reference_source;

  /// No description provided for @sell_field_you_receive.
  ///
  /// In en, this message translates to:
  /// **'You receive'**
  String get sell_field_you_receive;

  /// No description provided for @sell_field_you_sell.
  ///
  /// In en, this message translates to:
  /// **'You sell'**
  String get sell_field_you_sell;

  /// No description provided for @sell_hint_loading_rate.
  ///
  /// In en, this message translates to:
  /// **'Loading rate...'**
  String get sell_hint_loading_rate;

  /// No description provided for @sell_action_swipe.
  ///
  /// In en, this message translates to:
  /// **'Swipe to sell Bitcoin'**
  String get sell_action_swipe;

  /// No description provided for @sell_connect_beneficiary_fallback.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary'**
  String get sell_connect_beneficiary_fallback;

  /// No description provided for @sell_connect_toast_setting_up.
  ///
  /// In en, this message translates to:
  /// **'Setting things up — please wait.'**
  String get sell_connect_toast_setting_up;

  /// No description provided for @sell_connect_toast_still_waiting.
  ///
  /// In en, this message translates to:
  /// **'Still waiting for the code. Tap again in a moment, or tap \"Didn\'t receive a code?\" to contact support.'**
  String get sell_connect_toast_still_waiting;

  /// No description provided for @sell_connect_toast_resend_server.
  ///
  /// In en, this message translates to:
  /// **'{message} Tap \"Contact support\" if this keeps happening.'**
  String sell_connect_toast_resend_server(String message);

  /// No description provided for @sell_connect_toast_resend_failed.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t resend the code. Tap \"Contact support\" below to get help.'**
  String get sell_connect_toast_resend_failed;

  /// No description provided for @sell_connect_error_open_support.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t open support. Please try again.'**
  String get sell_connect_error_open_support;

  /// No description provided for @sell_connect_onetime_notice.
  ///
  /// In en, this message translates to:
  /// **'One-time setup — we won\'t ask for a code on future transfers to this recipient.'**
  String get sell_connect_onetime_notice;

  /// No description provided for @sell_connect_passkey_prompt.
  ///
  /// In en, this message translates to:
  /// **'Verify it\'s you with your face or fingerprint to authorise this connection.'**
  String get sell_connect_passkey_prompt;

  /// No description provided for @sell_connect_first_time_prefix.
  ///
  /// In en, this message translates to:
  /// **'First time sending to '**
  String get sell_connect_first_time_prefix;

  /// No description provided for @sell_connect_code_sent_mobile.
  ///
  /// In en, this message translates to:
  /// **'Add the code sent to your mobile '**
  String get sell_connect_code_sent_mobile;

  /// No description provided for @sell_connect_code_sent_email.
  ///
  /// In en, this message translates to:
  /// **' or email '**
  String get sell_connect_code_sent_email;

  /// No description provided for @sell_connect_support_checking.
  ///
  /// In en, this message translates to:
  /// **'Checking… still no code? Contact support'**
  String get sell_connect_support_checking;

  /// No description provided for @sell_connect_support_prompt.
  ///
  /// In en, this message translates to:
  /// **'Didn\'t receive a code? Contact support'**
  String get sell_connect_support_prompt;

  /// No description provided for @sell_label_bank_account.
  ///
  /// In en, this message translates to:
  /// **'Bank account'**
  String get sell_label_bank_account;

  /// No description provided for @sell_status_selling.
  ///
  /// In en, this message translates to:
  /// **'Selling Bitcoin...'**
  String get sell_status_selling;

  /// No description provided for @sell_status_euros_on_way.
  ///
  /// In en, this message translates to:
  /// **'Your Euros are on their way...'**
  String get sell_status_euros_on_way;

  /// No description provided for @sell_status_euros_sent.
  ///
  /// In en, this message translates to:
  /// **'Euros sent successfully!'**
  String get sell_status_euros_sent;

  /// No description provided for @sell_status_added.
  ///
  /// In en, this message translates to:
  /// **'Added successfully!'**
  String get sell_status_added;

  /// No description provided for @sell_notify_40min.
  ///
  /// In en, this message translates to:
  /// **'Takes up to 40 minutes. We\'ll notify when done.'**
  String get sell_notify_40min;

  /// No description provided for @sell_notify_1_2min.
  ///
  /// In en, this message translates to:
  /// **'Takes up to 1-2 minutes. We\'ll notify when done.'**
  String get sell_notify_1_2min;

  /// No description provided for @sell_euro_title.
  ///
  /// In en, this message translates to:
  /// **'Sell to Euro account'**
  String get sell_euro_title;

  /// No description provided for @sell_error_unknown.
  ///
  /// In en, this message translates to:
  /// **'Unknown error'**
  String get sell_error_unknown;

  /// No description provided for @sell_error_restricted_jurisdiction.
  ///
  /// In en, this message translates to:
  /// **'Restricted jurisdiction'**
  String get sell_error_restricted_jurisdiction;

  /// No description provided for @sell_error_beneficiary_address.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t reach this beneficiary\'s payment address. Please try again.'**
  String get sell_error_beneficiary_address;

  /// No description provided for @sell_error_fee_changed.
  ///
  /// In en, this message translates to:
  /// **'The Lightning network fee changed while preparing this payment. Try again.'**
  String get sell_error_fee_changed;

  /// No description provided for @sell_error_lightning_only.
  ///
  /// In en, this message translates to:
  /// **'This sell can only be sent over Lightning. Go back and enter the amount again.'**
  String get sell_error_lightning_only;

  /// No description provided for @sell_error_load_deposit_address.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t load your deposit address. Tap to retry.'**
  String get sell_error_load_deposit_address;

  /// No description provided for @sell_qr_scan_prompt.
  ///
  /// In en, this message translates to:
  /// **'Scan with your Bitcoin wallet'**
  String get sell_qr_scan_prompt;

  /// No description provided for @sell_qr_footer.
  ///
  /// In en, this message translates to:
  /// **'Scan QR or copy address to your source wallet to complete the transaction.'**
  String get sell_qr_footer;

  /// No description provided for @sell_qr_scan_add_euros.
  ///
  /// In en, this message translates to:
  /// **'Scan the QR or copy code to add Euros.'**
  String get sell_qr_scan_add_euros;

  /// No description provided for @sell_qr_scan_add_money.
  ///
  /// In en, this message translates to:
  /// **'Scan QR or copy code to add money.'**
  String get sell_qr_scan_add_money;

  /// No description provided for @sell_qr_limits_link.
  ///
  /// In en, this message translates to:
  /// **'Limits & rates'**
  String get sell_qr_limits_link;

  /// No description provided for @sell_qr_one_in_progress.
  ///
  /// In en, this message translates to:
  /// **'One transaction in progress'**
  String get sell_qr_one_in_progress;

  /// No description provided for @sell_qr_ln_not_ready.
  ///
  /// In en, this message translates to:
  /// **'Lightning isn\'t ready for this connection yet. Use the on-chain address, or tap to retry.'**
  String get sell_qr_ln_not_ready;

  /// No description provided for @sell_qr_onchain_limits.
  ///
  /// In en, this message translates to:
  /// **'Minimum €10. Maximum €10 000 per transaction. Manage limits in your profile. We charge 1% fee on the transaction.'**
  String get sell_qr_onchain_limits;

  /// No description provided for @sell_qr_ln_limits.
  ///
  /// In en, this message translates to:
  /// **'Minimum €{min}. Maximum €{max} per transaction — a fixed EU Travel Rule cap that can\'t be increased. We charge 1% fee on the transaction.'**
  String sell_qr_ln_limits(String min, String max);

  /// No description provided for @tr_error_declaration_timeout.
  ///
  /// In en, this message translates to:
  /// **'Declaration timed out — please try again.'**
  String get tr_error_declaration_timeout;

  /// No description provided for @tr_error_request_timeout.
  ///
  /// In en, this message translates to:
  /// **'Request timed out — try again.'**
  String get tr_error_request_timeout;

  /// No description provided for @tr_error_request_timeout_polite.
  ///
  /// In en, this message translates to:
  /// **'Request timed out — please try again.'**
  String get tr_error_request_timeout_polite;

  /// No description provided for @tr_error_submission_timeout.
  ///
  /// In en, this message translates to:
  /// **'Submission timed out — please try again.'**
  String get tr_error_submission_timeout;

  /// No description provided for @tr_error_verification_timeout.
  ///
  /// In en, this message translates to:
  /// **'Verification timed out — please try again.'**
  String get tr_error_verification_timeout;

  /// No description provided for @tr_option_exchange.
  ///
  /// In en, this message translates to:
  /// **'An exchange or custodian'**
  String get tr_option_exchange;

  /// No description provided for @tr_option_exchange_hint.
  ///
  /// In en, this message translates to:
  /// **'Regulated platform like Coinbase, Kraken etc.'**
  String get tr_option_exchange_hint;

  /// No description provided for @tr_option_own_wallet.
  ///
  /// In en, this message translates to:
  /// **'Your own wallet'**
  String get tr_option_own_wallet;

  /// No description provided for @tr_option_own_wallet_hint.
  ///
  /// In en, this message translates to:
  /// **'You control the private keys personally.'**
  String get tr_option_own_wallet_hint;

  /// No description provided for @tr_option_own_wallet_below.
  ///
  /// In en, this message translates to:
  /// **'Your own wallet for transactions below €1,000'**
  String get tr_option_own_wallet_below;

  /// No description provided for @tr_option_own_wallet_above.
  ///
  /// In en, this message translates to:
  /// **'Your own wallet for transactions above €1,000'**
  String get tr_option_own_wallet_above;

  /// No description provided for @tr_option_someone_else_wallet.
  ///
  /// In en, this message translates to:
  /// **'Someone else’s wallet'**
  String get tr_option_someone_else_wallet;

  /// No description provided for @tr_option_someone_else.
  ///
  /// In en, this message translates to:
  /// **'Someone else’s'**
  String get tr_option_someone_else;

  /// No description provided for @tr_option_own_account.
  ///
  /// In en, this message translates to:
  /// **'It’s my own account'**
  String get tr_option_own_account;

  /// No description provided for @tr_option_someone_else_account.
  ///
  /// In en, this message translates to:
  /// **'Someone else’s account'**
  String get tr_option_someone_else_account;

  /// No description provided for @tr_address_title.
  ///
  /// In en, this message translates to:
  /// **'Address declaration'**
  String get tr_address_title;

  /// No description provided for @tr_address_intro.
  ///
  /// In en, this message translates to:
  /// **'We require this declaration to comply with the EU Transfer of Funds Regulation for on-chain transfers.'**
  String get tr_address_intro;

  /// No description provided for @tr_address_select_prompt.
  ///
  /// In en, this message translates to:
  /// **'Select the option that best describes this Bitcoin address.'**
  String get tr_address_select_prompt;

  /// No description provided for @tr_address_someone_else_hint.
  ///
  /// In en, this message translates to:
  /// **'Cannot send more than €1,000 to a wallet owned by another individual or company.'**
  String get tr_address_someone_else_hint;

  /// No description provided for @tr_address_submitted.
  ///
  /// In en, this message translates to:
  /// **'We’ve received your declaration that you own this wallet. Additional information may be required for transfers above €1,000.'**
  String get tr_address_submitted;

  /// No description provided for @tr_label_wallet_type.
  ///
  /// In en, this message translates to:
  /// **'Wallet type'**
  String get tr_label_wallet_type;

  /// No description provided for @tr_deposit_label_payment_hash.
  ///
  /// In en, this message translates to:
  /// **'Payment hash'**
  String get tr_deposit_label_payment_hash;

  /// No description provided for @tr_deposit_label_source_address.
  ///
  /// In en, this message translates to:
  /// **'Source address'**
  String get tr_deposit_label_source_address;

  /// No description provided for @tr_deposit_error_no_source.
  ///
  /// In en, this message translates to:
  /// **'This deposit doesn’t have a source identifier — please contact support.'**
  String get tr_deposit_error_no_source;

  /// No description provided for @tr_deposit_error_no_counterparty.
  ///
  /// In en, this message translates to:
  /// **'Missing counterparty id on this action — please contact support.'**
  String get tr_deposit_error_no_counterparty;

  /// No description provided for @tr_deposit_submitted.
  ///
  /// In en, this message translates to:
  /// **'We’ve received your declaration. We’ll release the deposit once our checks complete — this can take a few minutes.'**
  String get tr_deposit_submitted;

  /// No description provided for @tr_deposit_title.
  ///
  /// In en, this message translates to:
  /// **'Transaction needs action'**
  String get tr_deposit_title;

  /// No description provided for @tr_deposit_originator_details.
  ///
  /// In en, this message translates to:
  /// **'Originator details'**
  String get tr_deposit_originator_details;

  /// No description provided for @tr_deposit_funds_declaration.
  ///
  /// In en, this message translates to:
  /// **'Funds declaration'**
  String get tr_deposit_funds_declaration;

  /// No description provided for @tr_deposit_who_sent.
  ///
  /// In en, this message translates to:
  /// **'We need to know who at the exchange sent these funds so EU Travel Rule can clear the deposit.'**
  String get tr_deposit_who_sent;

  /// No description provided for @tr_deposit_regulation_notice.
  ///
  /// In en, this message translates to:
  /// **'We require this declaration to comply with the EU Transfer of Funds Regulation for {rail} transfers.'**
  String tr_deposit_regulation_notice(String rail);

  /// No description provided for @tr_rail_onchain.
  ///
  /// In en, this message translates to:
  /// **'on-chain'**
  String get tr_rail_onchain;

  /// No description provided for @tr_deposit_own_account_hint.
  ///
  /// In en, this message translates to:
  /// **'You sent these funds from your account at the exchange.'**
  String get tr_deposit_own_account_hint;

  /// No description provided for @tr_deposit_someone_else_account_hint.
  ///
  /// In en, this message translates to:
  /// **'Someone else sent these funds from their exchange account.'**
  String get tr_deposit_someone_else_account_hint;

  /// No description provided for @tr_deposit_someone_else_wallet_hint.
  ///
  /// In en, this message translates to:
  /// **'Wallet belongs to another individual or company.'**
  String get tr_deposit_someone_else_wallet_hint;

  /// No description provided for @tr_deposit_label_transaction_date.
  ///
  /// In en, this message translates to:
  /// **'Transaction date'**
  String get tr_deposit_label_transaction_date;

  /// No description provided for @tr_deposit_label_source_type.
  ///
  /// In en, this message translates to:
  /// **'Source type'**
  String get tr_deposit_label_source_type;

  /// No description provided for @tr_deposit_label_originator.
  ///
  /// In en, this message translates to:
  /// **'Originator'**
  String get tr_deposit_label_originator;

  /// No description provided for @tr_exchange_submitted.
  ///
  /// In en, this message translates to:
  /// **'We’ve received your declaration. We’ll review it and let you know if anything else is needed.'**
  String get tr_exchange_submitted;

  /// No description provided for @tr_exchange_hold_notice.
  ///
  /// In en, this message translates to:
  /// **'We need this so the deposit hold imposed by EU Travel Rule can clear.'**
  String get tr_exchange_hold_notice;

  /// No description provided for @tr_exchange_verify_notice.
  ///
  /// In en, this message translates to:
  /// **'We need these details to verify your account with your exchange.'**
  String get tr_exchange_verify_notice;

  /// No description provided for @tr_exchange_search_hint.
  ///
  /// In en, this message translates to:
  /// **'Eg. Coinbase, Kraken, Binance, etc'**
  String get tr_exchange_search_hint;

  /// No description provided for @tr_exchange_none_available.
  ///
  /// In en, this message translates to:
  /// **'No exchanges available right now.'**
  String get tr_exchange_none_available;

  /// No description provided for @tr_exchange_no_match.
  ///
  /// In en, this message translates to:
  /// **'No exchanges match that search.'**
  String get tr_exchange_no_match;

  /// No description provided for @tr_exchange_label_name.
  ///
  /// In en, this message translates to:
  /// **'Exchange name'**
  String get tr_exchange_label_name;

  /// No description provided for @tr_third_party_submitted.
  ///
  /// In en, this message translates to:
  /// **'We’ve received the originator details. We’ll review them and let you know once the deposit clears.'**
  String get tr_third_party_submitted;

  /// No description provided for @tr_third_party_notice.
  ///
  /// In en, this message translates to:
  /// **'We need these details about the person or company who actually sent the funds.'**
  String get tr_third_party_notice;

  /// No description provided for @tr_label_counterparty_type.
  ///
  /// In en, this message translates to:
  /// **'Counterparty type'**
  String get tr_label_counterparty_type;

  /// No description provided for @tr_option_individual.
  ///
  /// In en, this message translates to:
  /// **'Individual'**
  String get tr_option_individual;

  /// No description provided for @tr_option_company.
  ///
  /// In en, this message translates to:
  /// **'Company'**
  String get tr_option_company;

  /// No description provided for @tr_field_first_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Add the first name'**
  String get tr_field_first_name_hint;

  /// No description provided for @tr_field_last_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Add the last name'**
  String get tr_field_last_name_hint;

  /// No description provided for @tr_field_account_number.
  ///
  /// In en, this message translates to:
  /// **'Account number at the exchange'**
  String get tr_field_account_number;

  /// No description provided for @tr_field_account_number_hint.
  ///
  /// In en, this message translates to:
  /// **'Their account / customer ID at the VASP'**
  String get tr_field_account_number_hint;

  /// No description provided for @tr_error_account_number_required.
  ///
  /// In en, this message translates to:
  /// **'Account number is required'**
  String get tr_error_account_number_required;

  /// No description provided for @tr_field_place_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Place of birth'**
  String get tr_field_place_of_birth;

  /// No description provided for @tr_field_country_hint.
  ///
  /// In en, this message translates to:
  /// **'Add country'**
  String get tr_field_country_hint;

  /// No description provided for @tr_field_date_of_birth.
  ///
  /// In en, this message translates to:
  /// **'Date of birth'**
  String get tr_field_date_of_birth;

  /// No description provided for @tr_field_country_residence.
  ///
  /// In en, this message translates to:
  /// **'Country of residence'**
  String get tr_field_country_residence;

  /// No description provided for @tr_field_legal_name.
  ///
  /// In en, this message translates to:
  /// **'Legal name'**
  String get tr_field_legal_name;

  /// No description provided for @tr_field_legal_name_hint.
  ///
  /// In en, this message translates to:
  /// **'Registered company name'**
  String get tr_field_legal_name_hint;

  /// No description provided for @tr_field_lei.
  ///
  /// In en, this message translates to:
  /// **'20-character Legal Entity Identifier'**
  String get tr_field_lei;

  /// No description provided for @tr_field_lei_hint.
  ///
  /// In en, this message translates to:
  /// **'Issued by GLEIF — letters and numbers only'**
  String get tr_field_lei_hint;

  /// No description provided for @tr_field_country_registration.
  ///
  /// In en, this message translates to:
  /// **'Country of registration'**
  String get tr_field_country_registration;

  /// No description provided for @tr_field_registered_address.
  ///
  /// In en, this message translates to:
  /// **'Registered address'**
  String get tr_field_registered_address;

  /// No description provided for @tr_field_registered_address_hint.
  ///
  /// In en, this message translates to:
  /// **'Street, city, postal code, country'**
  String get tr_field_registered_address_hint;

  /// No description provided for @tr_funds_submitted.
  ///
  /// In en, this message translates to:
  /// **'We’ve received your declaration about this counterparty. You can proceed with the purchase once the verification is complete.'**
  String get tr_funds_submitted;

  /// No description provided for @tr_funds_verify_notice.
  ///
  /// In en, this message translates to:
  /// **'We need these details to verify the account.'**
  String get tr_funds_verify_notice;

  /// No description provided for @tr_manual_error_no_account.
  ///
  /// In en, this message translates to:
  /// **'Couldn’t determine your account id — please sign in again.'**
  String get tr_manual_error_no_account;

  /// No description provided for @tr_manual_toast_message_copied.
  ///
  /// In en, this message translates to:
  /// **'Message copied'**
  String get tr_manual_toast_message_copied;

  /// No description provided for @tr_manual_clipboard_empty.
  ///
  /// In en, this message translates to:
  /// **'Clipboard is empty'**
  String get tr_manual_clipboard_empty;

  /// No description provided for @tr_manual_submitted.
  ///
  /// In en, this message translates to:
  /// **'We’ve received your declaration. We’ll review it and let you know if anything else is needed. Your deposit should be processed within the next few minutes.'**
  String get tr_manual_submitted;

  /// No description provided for @tr_prove_ownership.
  ///
  /// In en, this message translates to:
  /// **'Prove your ownership'**
  String get tr_prove_ownership;

  /// No description provided for @tr_manual_title.
  ///
  /// In en, this message translates to:
  /// **'Manual signature'**
  String get tr_manual_title;

  /// No description provided for @tr_manual_steps_intro.
  ///
  /// In en, this message translates to:
  /// **'Follow the steps below to complete manual signature.'**
  String get tr_manual_steps_intro;

  /// No description provided for @tr_manual_step_copy.
  ///
  /// In en, this message translates to:
  /// **'Copy the message'**
  String get tr_manual_step_copy;

  /// No description provided for @tr_manual_step_sign.
  ///
  /// In en, this message translates to:
  /// **'Sign from your wallet'**
  String get tr_manual_step_sign;

  /// No description provided for @tr_manual_step_sign_hint.
  ///
  /// In en, this message translates to:
  /// **'Sign the copied message with your wallet.'**
  String get tr_manual_step_sign_hint;

  /// No description provided for @tr_manual_step_paste.
  ///
  /// In en, this message translates to:
  /// **'Paste the signature'**
  String get tr_manual_step_paste;

  /// No description provided for @tr_manual_paste_hint.
  ///
  /// In en, this message translates to:
  /// **'Paste the signature from the wallet'**
  String get tr_manual_paste_hint;

  /// No description provided for @tr_poo_error_liveness_start.
  ///
  /// In en, this message translates to:
  /// **'Couldn’t start liveness check — please try again.'**
  String get tr_poo_error_liveness_start;

  /// No description provided for @tr_poo_error_liveness_start_retry.
  ///
  /// In en, this message translates to:
  /// **'Couldn’t start liveness check — try again.'**
  String get tr_poo_error_liveness_start_retry;

  /// No description provided for @tr_poo_error_liveness_open.
  ///
  /// In en, this message translates to:
  /// **'Liveness check failed to open — try again.'**
  String get tr_poo_error_liveness_open;

  /// No description provided for @tr_poo_submitted_title.
  ///
  /// In en, this message translates to:
  /// **'Verification submitted'**
  String get tr_poo_submitted_title;

  /// No description provided for @tr_poo_submitted.
  ///
  /// In en, this message translates to:
  /// **'We’ve received your liveness verification. We’ll review it and let you know once it’s complete — this can take a few minutes.'**
  String get tr_poo_submitted;

  /// No description provided for @tr_poo_title.
  ///
  /// In en, this message translates to:
  /// **'Proof of ownership'**
  String get tr_poo_title;

  /// No description provided for @tr_poo_subtitle.
  ///
  /// In en, this message translates to:
  /// **'Your own wallet for transactions above €1,000.'**
  String get tr_poo_subtitle;

  /// No description provided for @tr_poo_option_trezor.
  ///
  /// In en, this message translates to:
  /// **'Sign with Trezor'**
  String get tr_poo_option_trezor;

  /// No description provided for @tr_poo_option_trezor_hint.
  ///
  /// In en, this message translates to:
  /// **'Approve on your Trezor device — no copying or pasting.'**
  String get tr_poo_option_trezor_hint;

  /// No description provided for @tr_poo_option_liveness.
  ///
  /// In en, this message translates to:
  /// **'Liveness check'**
  String get tr_poo_option_liveness;

  /// No description provided for @tr_poo_option_liveness_hint.
  ///
  /// In en, this message translates to:
  /// **'Take a quick selfie to verify your identity. Works for any wallet.'**
  String get tr_poo_option_liveness_hint;

  /// No description provided for @tr_poo_option_manual_hint.
  ///
  /// In en, this message translates to:
  /// **'Copy a message, sign it in your wallet, and paste the signature back. Works for any wallet.'**
  String get tr_poo_option_manual_hint;

  /// No description provided for @tr_needed_title.
  ///
  /// In en, this message translates to:
  /// **'Declaration needed'**
  String get tr_needed_title;

  /// No description provided for @tr_needed_body.
  ///
  /// In en, this message translates to:
  /// **'On-chain Bitcoin transfers require a quick one-time declaration about this wallet — it’s an EU regulation that applies to any amount.'**
  String get tr_needed_body;

  /// No description provided for @tr_needed_action.
  ///
  /// In en, this message translates to:
  /// **'Proceed'**
  String get tr_needed_action;

  /// No description provided for @tr_submitted_title.
  ///
  /// In en, this message translates to:
  /// **'Declaration submitted'**
  String get tr_submitted_title;

  /// No description provided for @buy_wallet_error_keys_pasted.
  ///
  /// In en, this message translates to:
  /// **'Wallet keys can\'t be pasted. Connect your Trezor below to import a wallet.'**
  String get buy_wallet_error_keys_pasted;

  /// No description provided for @buy_wallet_error_unsupported_address.
  ///
  /// In en, this message translates to:
  /// **'Only Bitcoin or Lightning addresses are supported'**
  String get buy_wallet_error_unsupported_address;

  /// No description provided for @buy_wallet_error_invalid_address.
  ///
  /// In en, this message translates to:
  /// **'Invalid address'**
  String get buy_wallet_error_invalid_address;

  /// No description provided for @buy_wallet_error_duplicate_label.
  ///
  /// In en, this message translates to:
  /// **'You already have a wallet with this name.'**
  String get buy_wallet_error_duplicate_label;

  /// No description provided for @buy_wallet_saved_title.
  ///
  /// In en, this message translates to:
  /// **'Address already saved'**
  String get buy_wallet_saved_title;

  /// No description provided for @buy_wallet_saved_body.
  ///
  /// In en, this message translates to:
  /// **'This address is already saved as \"{label}\". The purchase will use that wallet.'**
  String buy_wallet_saved_body(String label);

  /// No description provided for @buy_wallet_label_not_saved.
  ///
  /// In en, this message translates to:
  /// **'Your new label \"{label}\" won\'t be saved'**
  String buy_wallet_label_not_saved(String label);

  /// No description provided for @buy_wallet_saved_note.
  ///
  /// In en, this message translates to:
  /// **'Bringin keeps only one label per address. You can rename this wallet later from the wallet list.'**
  String get buy_wallet_saved_note;

  /// No description provided for @buy_wallet_action_use_saved.
  ///
  /// In en, this message translates to:
  /// **'Use saved wallet'**
  String get buy_wallet_action_use_saved;

  /// No description provided for @buy_wallet_field_address.
  ///
  /// In en, this message translates to:
  /// **'On-chain/ lightning address'**
  String get buy_wallet_field_address;

  /// No description provided for @buy_wallet_ln_cap_note.
  ///
  /// In en, this message translates to:
  /// **'You can only send upto €{cap} through lightning addresses.'**
  String buy_wallet_ln_cap_note(int cap);

  /// No description provided for @buy_wallet_section_supported.
  ///
  /// In en, this message translates to:
  /// **'Supported wallets'**
  String get buy_wallet_section_supported;

  /// No description provided for @buy_wallet_action_connect_trezor.
  ///
  /// In en, this message translates to:
  /// **'Connect Trezor'**
  String get buy_wallet_action_connect_trezor;

  /// No description provided for @buy_wallet_trezor_hint.
  ///
  /// In en, this message translates to:
  /// **'Import your wallet in one tap. Every purchase gets a fresh address.'**
  String get buy_wallet_trezor_hint;

  /// No description provided for @buy_processing_success.
  ///
  /// In en, this message translates to:
  /// **'Bought Bitcoin successfully!'**
  String get buy_processing_success;

  /// No description provided for @buy_processing_on_way.
  ///
  /// In en, this message translates to:
  /// **'Your Bitcoin is on its way...'**
  String get buy_processing_on_way;

  /// No description provided for @buy_processing_notify_30min.
  ///
  /// In en, this message translates to:
  /// **'Takes up to 30 minutes. We\'ll notify when done.'**
  String get buy_processing_notify_30min;

  /// No description provided for @buy_label_from_account.
  ///
  /// In en, this message translates to:
  /// **'From Account'**
  String get buy_label_from_account;

  /// No description provided for @buy_label_to_wallet.
  ///
  /// In en, this message translates to:
  /// **'To wallet'**
  String get buy_label_to_wallet;

  /// No description provided for @buy_reference_from_bringin_account.
  ///
  /// In en, this message translates to:
  /// **'From Bringin account'**
  String get buy_reference_from_bringin_account;

  /// No description provided for @buy_xpub_error_label_required.
  ///
  /// In en, this message translates to:
  /// **'Add a name for this wallet.'**
  String get buy_xpub_error_label_required;

  /// No description provided for @buy_xpub_title.
  ///
  /// In en, this message translates to:
  /// **'Confirm your wallet'**
  String get buy_xpub_title;

  /// No description provided for @buy_xpub_check_note.
  ///
  /// In en, this message translates to:
  /// **'Check this matches the first address in your wallet.'**
  String get buy_xpub_check_note;

  /// No description provided for @buy_xpub_label_first_address.
  ///
  /// In en, this message translates to:
  /// **'First address'**
  String get buy_xpub_label_first_address;

  /// No description provided for @buy_xpub_fresh_address_note.
  ///
  /// In en, this message translates to:
  /// **'Each purchase uses a new address from this wallet, so you never have to add it again.'**
  String get buy_xpub_fresh_address_note;

  /// No description provided for @buy_xpub_status_connected.
  ///
  /// In en, this message translates to:
  /// **'Connected'**
  String get buy_xpub_status_connected;

  /// No description provided for @buy_xpub_device_trezor.
  ///
  /// In en, this message translates to:
  /// **'Trezor'**
  String get buy_xpub_device_trezor;

  /// No description provided for @buy_xpub_checking.
  ///
  /// In en, this message translates to:
  /// **'Checking…'**
  String get buy_xpub_checking;

  /// No description provided for @buy_xpub_mismatch.
  ///
  /// In en, this message translates to:
  /// **'That\'s not the address my wallet shows'**
  String get buy_xpub_mismatch;

  /// No description provided for @buy_xpub_prove_ownership.
  ///
  /// In en, this message translates to:
  /// **'Prove ownership'**
  String get buy_xpub_prove_ownership;

  /// No description provided for @buy_xpub_skip.
  ///
  /// In en, this message translates to:
  /// **'Skip verification (only buys under €1,000)'**
  String get buy_xpub_skip;

  /// No description provided for @buy_ln_declare_title.
  ///
  /// In en, this message translates to:
  /// **'Declare wallet source'**
  String get buy_ln_declare_title;

  /// No description provided for @buy_ln_declare_intro.
  ///
  /// In en, this message translates to:
  /// **'Under EU Travel Rule we ask who owns each Lightning address you save. Lightning is capped at €{cap} per transaction, so no extra proof is needed.'**
  String buy_ln_declare_intro(int cap);

  /// No description provided for @buy_ln_option_own.
  ///
  /// In en, this message translates to:
  /// **'My own wallet'**
  String get buy_ln_option_own;

  /// No description provided for @buy_ln_option_own_hint.
  ///
  /// In en, this message translates to:
  /// **'You control this Lightning wallet.'**
  String get buy_ln_option_own_hint;

  /// No description provided for @buy_ln_option_someone_hint.
  ///
  /// In en, this message translates to:
  /// **'Wallet belongs to another individual.'**
  String get buy_ln_option_someone_hint;

  /// No description provided for @buy_address_error_invalid_input.
  ///
  /// In en, this message translates to:
  /// **'Invalid input'**
  String get buy_address_error_invalid_input;

  /// No description provided for @buy_address_error_unsupported_format.
  ///
  /// In en, this message translates to:
  /// **'Unsupported invoice format'**
  String get buy_address_error_unsupported_format;

  /// No description provided for @buy_address_hint.
  ///
  /// In en, this message translates to:
  /// **'Type or paste Bitcoin address or lightning address or a lightning invoice (bolt11)'**
  String get buy_address_hint;

  /// No description provided for @buy_address_formats.
  ///
  /// In en, this message translates to:
  /// **'BTC Address | Lightning Address | Invoice (bolt11)'**
  String get buy_address_formats;

  /// No description provided for @buy_address_label_nickname.
  ///
  /// In en, this message translates to:
  /// **'Nickname'**
  String get buy_address_label_nickname;

  /// No description provided for @buy_address_error_nickname_length.
  ///
  /// In en, this message translates to:
  /// **'Nickname must be between 3 and 30 characters'**
  String get buy_address_error_nickname_length;

  /// No description provided for @buy_whitelist_new_address.
  ///
  /// In en, this message translates to:
  /// **'Buy to a new address'**
  String get buy_whitelist_new_address;

  /// No description provided for @buy_whitelist_recent.
  ///
  /// In en, this message translates to:
  /// **'Recently used addresses'**
  String get buy_whitelist_recent;

  /// No description provided for @buy_whitelist_no_details.
  ///
  /// In en, this message translates to:
  /// **'No address details available'**
  String get buy_whitelist_no_details;

  /// No description provided for @buy_whitelist_empty.
  ///
  /// In en, this message translates to:
  /// **'No addresses to show'**
  String get buy_whitelist_empty;

  /// No description provided for @buy_invoice_unreadable_title.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t read that invoice'**
  String get buy_invoice_unreadable_title;

  /// No description provided for @buy_invoice_unreadable_body.
  ///
  /// In en, this message translates to:
  /// **'The link didn\'t include a valid Lightning invoice. Ask for a new one, or paste an invoice here.'**
  String get buy_invoice_unreadable_body;

  /// No description provided for @buy_invoice_not_mainnet_title.
  ///
  /// In en, this message translates to:
  /// **'This invoice isn\'t on Bitcoin mainnet'**
  String get buy_invoice_not_mainnet_title;

  /// No description provided for @buy_invoice_not_mainnet_body.
  ///
  /// In en, this message translates to:
  /// **'Bringin can only pay mainnet invoices. Ask for a mainnet one, or paste another invoice here.'**
  String get buy_invoice_not_mainnet_body;

  /// No description provided for @buy_invoice_no_amount_title.
  ///
  /// In en, this message translates to:
  /// **'This invoice has no amount'**
  String get buy_invoice_no_amount_title;

  /// No description provided for @buy_invoice_no_amount_body.
  ///
  /// In en, this message translates to:
  /// **'Bringin needs an invoice with a fixed amount. Ask for one with the amount set, or paste another invoice here.'**
  String get buy_invoice_no_amount_body;

  /// No description provided for @buy_invoice_expired_title.
  ///
  /// In en, this message translates to:
  /// **'This invoice has expired'**
  String get buy_invoice_expired_title;

  /// No description provided for @buy_invoice_expired_body.
  ///
  /// In en, this message translates to:
  /// **'Lightning invoices are only valid for a short time. Ask for a new one, or paste another invoice here.'**
  String get buy_invoice_expired_body;

  /// No description provided for @buy_invoice_no_amount_short.
  ///
  /// In en, this message translates to:
  /// **'This invoice has no amount. Request one with a fixed amount.'**
  String get buy_invoice_no_amount_short;

  /// No description provided for @buy_sca_title_conversion.
  ///
  /// In en, this message translates to:
  /// **'Verify Euro to Bitcoin conversion'**
  String get buy_sca_title_conversion;

  /// No description provided for @buy_sca_action_conversion.
  ///
  /// In en, this message translates to:
  /// **'Verify and buy Bitcoin'**
  String get buy_sca_action_conversion;

  /// No description provided for @buy_verify_two_steps.
  ///
  /// In en, this message translates to:
  /// **'This transaction requires two verification steps: one for the currency conversion and another for the Bitcoin withdrawal.'**
  String get buy_verify_two_steps;

  /// No description provided for @buy_verify_withdrawal.
  ///
  /// In en, this message translates to:
  /// **'Verify withdrawal'**
  String get buy_verify_withdrawal;

  /// No description provided for @buy_verify_purchased_note.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin purchased. Complete verification to receive your funds.'**
  String get buy_verify_purchased_note;

  /// No description provided for @buy_otp_error_expired_send_again.
  ///
  /// In en, this message translates to:
  /// **'Verification code expired. Tap send again.'**
  String get buy_otp_error_expired_send_again;

  /// No description provided for @buy_otp_resent.
  ///
  /// In en, this message translates to:
  /// **'Code resent'**
  String get buy_otp_resent;

  /// No description provided for @buy_action_start_again_passkey.
  ///
  /// In en, this message translates to:
  /// **'Start again with passkey'**
  String get buy_action_start_again_passkey;

  /// No description provided for @buy_action_start_again_sms.
  ///
  /// In en, this message translates to:
  /// **'Start again with SMS'**
  String get buy_action_start_again_sms;

  /// No description provided for @buy_error_invoice_already_tied.
  ///
  /// In en, this message translates to:
  /// **'That invoice is already tied to this order. Go back and paste a new one.'**
  String get buy_error_invoice_already_tied;

  /// No description provided for @buy_error_start_again.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t start again. Try again.'**
  String get buy_error_start_again;

  /// No description provided for @buy_error_order_failed.
  ///
  /// In en, this message translates to:
  /// **'Order failed. Please try again.'**
  String get buy_error_order_failed;

  /// No description provided for @buy_error_create_order.
  ///
  /// In en, this message translates to:
  /// **'Failed to create order. Try again.'**
  String get buy_error_create_order;

  /// No description provided for @buy_error_address_type_unsupported.
  ///
  /// In en, this message translates to:
  /// **'This wallet uses an address type this app version doesn\'t support. Please update the app.'**
  String get buy_error_address_type_unsupported;

  /// No description provided for @buy_error_network_fresh_address.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t reach the Bitcoin network to pick a fresh address. Check your connection and try again.'**
  String get buy_error_network_fresh_address;

  /// No description provided for @buy_error_resolve_ln_address.
  ///
  /// In en, this message translates to:
  /// **'Failed to resolve LN address'**
  String get buy_error_resolve_ln_address;

  /// No description provided for @buy_error_wallet_incomplete.
  ///
  /// In en, this message translates to:
  /// **'This wallet isn\'t fully set up yet. Remove it and add it again to finish.'**
  String get buy_error_wallet_incomplete;

  /// No description provided for @buy_error_declaration_refresh.
  ///
  /// In en, this message translates to:
  /// **'Declaration submitted, but we couldn’t refresh — pull-to-refresh and try again.'**
  String get buy_error_declaration_refresh;

  /// No description provided for @buy_error_address_not_declared.
  ///
  /// In en, this message translates to:
  /// **'Address isn’t declared yet — please try again.'**
  String get buy_error_address_not_declared;

  /// No description provided for @buy_error_saved_wallet_not_found.
  ///
  /// In en, this message translates to:
  /// **'Saved wallet not found'**
  String get buy_error_saved_wallet_not_found;

  /// No description provided for @buy_error_missing_declaration.
  ///
  /// In en, this message translates to:
  /// **'Missing wallet declaration. Re-save the wallet from the add-wallet screen and try again.'**
  String get buy_error_missing_declaration;

  /// No description provided for @buy_error_verification_required.
  ///
  /// In en, this message translates to:
  /// **'Wallet verification is required for transfers of €1,000 or more. Try again once complete.'**
  String get buy_error_verification_required;

  /// No description provided for @buy_error_start_verification.
  ///
  /// In en, this message translates to:
  /// **'Could not start wallet verification. Try again.'**
  String get buy_error_start_verification;

  /// No description provided for @buy_verification_complete_retry.
  ///
  /// In en, this message translates to:
  /// **'Verification complete — please try again.'**
  String get buy_verification_complete_retry;

  /// No description provided for @buy_verification_in_progress.
  ///
  /// In en, this message translates to:
  /// **'Verification in progress. This usually takes a few minutes — we’ll notify you when it’s complete.'**
  String get buy_verification_in_progress;

  /// No description provided for @buy_cap_additional_info.
  ///
  /// In en, this message translates to:
  /// **'For sending above €1,000 to your wallet, we need some additional information from you to proceed.'**
  String get buy_cap_additional_info;

  /// No description provided for @buy_title.
  ///
  /// In en, this message translates to:
  /// **'Buy Bitcoin'**
  String get buy_title;

  /// No description provided for @buy_to_wallet_title.
  ///
  /// In en, this message translates to:
  /// **'Buy to wallet'**
  String get buy_to_wallet_title;

  /// No description provided for @buy_topup_success.
  ///
  /// In en, this message translates to:
  /// **'Top-up successful!'**
  String get buy_topup_success;

  /// No description provided for @buy_select_wallet.
  ///
  /// In en, this message translates to:
  /// **'Select or add a wallet'**
  String get buy_select_wallet;

  /// No description provided for @buy_new_address_each_time.
  ///
  /// In en, this message translates to:
  /// **'New address each time'**
  String get buy_new_address_each_time;

  /// No description provided for @buy_add_ln_invoice_or_address.
  ///
  /// In en, this message translates to:
  /// **'Add a lightning invoice or address'**
  String get buy_add_ln_invoice_or_address;

  /// No description provided for @buy_field_ln_invoice_or_address.
  ///
  /// In en, this message translates to:
  /// **'Lightning invoice or address'**
  String get buy_field_ln_invoice_or_address;

  /// No description provided for @buy_hint_paste_invoice_or_domain.
  ///
  /// In en, this message translates to:
  /// **'Paste invoice or you@domain.com'**
  String get buy_hint_paste_invoice_or_domain;

  /// No description provided for @buy_error_enter_ln.
  ///
  /// In en, this message translates to:
  /// **'Enter a Lightning invoice or address'**
  String get buy_error_enter_ln;

  /// No description provided for @buy_error_parse_invoice.
  ///
  /// In en, this message translates to:
  /// **'Could not parse invoice or address'**
  String get buy_error_parse_invoice;

  /// No description provided for @buy_use_full_balance.
  ///
  /// In en, this message translates to:
  /// **'Use the full account balance'**
  String get buy_use_full_balance;

  /// No description provided for @buy_field_buy_for.
  ///
  /// In en, this message translates to:
  /// **'Buy for'**
  String get buy_field_buy_for;

  /// No description provided for @buy_field_you_pay.
  ///
  /// In en, this message translates to:
  /// **'You pay'**
  String get buy_field_you_pay;

  /// No description provided for @buy_expand_limits.
  ///
  /// In en, this message translates to:
  /// **'Expand your transfer limits'**
  String get buy_expand_limits;

  /// No description provided for @buy_action_swipe.
  ///
  /// In en, this message translates to:
  /// **'Swipe to buy Bitcoin'**
  String get buy_action_swipe;

  /// No description provided for @buy_action_resave_retry.
  ///
  /// In en, this message translates to:
  /// **'Re-save and retry'**
  String get buy_action_resave_retry;

  /// No description provided for @cash_add_option_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Fund with Bitcoin'**
  String get cash_add_option_bitcoin;

  /// No description provided for @cash_add_option_bitcoin_hint.
  ///
  /// In en, this message translates to:
  /// **'Onchain or Lightning'**
  String get cash_add_option_bitcoin_hint;

  /// No description provided for @cash_add_option_bank.
  ///
  /// In en, this message translates to:
  /// **'Fund from your bank'**
  String get cash_add_option_bank;

  /// No description provided for @cash_add_option_bank_hint.
  ///
  /// In en, this message translates to:
  /// **'Via SEPA'**
  String get cash_add_option_bank_hint;

  /// No description provided for @cash_setup_title.
  ///
  /// In en, this message translates to:
  /// **'Account is being set up'**
  String get cash_setup_title;

  /// No description provided for @cash_setup_body.
  ///
  /// In en, this message translates to:
  /// **'We\'re finishing setup behind the scenes. This usually takes just a few seconds — please try again in a moment.'**
  String get cash_setup_body;

  /// No description provided for @cash_action_pending_title.
  ///
  /// In en, this message translates to:
  /// **'Action pending'**
  String get cash_action_pending_title;

  /// No description provided for @cash_action_pending_body.
  ///
  /// In en, this message translates to:
  /// **'Complete verification to access your euro account and full Bringin features.'**
  String get cash_action_pending_body;

  /// No description provided for @cash_action_failed_body.
  ///
  /// In en, this message translates to:
  /// **'Your document verification failed. Please try again to access your euro account and full Bringin features.'**
  String get cash_action_failed_body;

  /// No description provided for @cash_verification_progress_title.
  ///
  /// In en, this message translates to:
  /// **'Verification in progress'**
  String get cash_verification_progress_title;

  /// No description provided for @cash_verification_progress_body.
  ///
  /// In en, this message translates to:
  /// **'Your documents are being reviewed. We\'ll notify you once verification is complete.'**
  String get cash_verification_progress_body;

  /// No description provided for @cash_account_restricted_title.
  ///
  /// In en, this message translates to:
  /// **'Account restricted'**
  String get cash_account_restricted_title;

  /// No description provided for @cash_account_restricted_body.
  ///
  /// In en, this message translates to:
  /// **'Your account access has been restricted.'**
  String get cash_account_restricted_body;

  /// No description provided for @cash_suffix_activate_wallet.
  ///
  /// In en, this message translates to:
  /// **'Or activate your Bitcoin wallet to get started with Bitcoin.'**
  String get cash_suffix_activate_wallet;

  /// No description provided for @cash_suffix_meantime_wallet.
  ///
  /// In en, this message translates to:
  /// **'In the meantime, you can activate your Bitcoin wallet to get started.'**
  String get cash_suffix_meantime_wallet;

  /// No description provided for @cash_suffix_still_activate_wallet.
  ///
  /// In en, this message translates to:
  /// **'You can still activate your Bitcoin wallet to get started with Bitcoin.'**
  String get cash_suffix_still_activate_wallet;

  /// No description provided for @cash_action_activate_wallet.
  ///
  /// In en, this message translates to:
  /// **'Activate your Bitcoin wallet'**
  String get cash_action_activate_wallet;

  /// No description provided for @cash_action_complete_verification.
  ///
  /// In en, this message translates to:
  /// **'Complete verification'**
  String get cash_action_complete_verification;

  /// No description provided for @cash_tour_balance_body.
  ///
  /// In en, this message translates to:
  /// **'All your Bitcoin and Euro balances in one place. Tap the eye to hide.'**
  String get cash_tour_balance_body;

  /// No description provided for @cash_section_wallet_account.
  ///
  /// In en, this message translates to:
  /// **'Wallet & account'**
  String get cash_section_wallet_account;

  /// No description provided for @cash_action_redo_verification.
  ///
  /// In en, this message translates to:
  /// **'Redo verification'**
  String get cash_action_redo_verification;

  /// No description provided for @cash_status_verification_denied.
  ///
  /// In en, this message translates to:
  /// **'Verification denied'**
  String get cash_status_verification_denied;

  /// No description provided for @cash_backup_needed_title.
  ///
  /// In en, this message translates to:
  /// **'You need to backup'**
  String get cash_backup_needed_title;

  /// No description provided for @cash_kyc_test_account.
  ///
  /// In en, this message translates to:
  /// **'This is your test account. To start using Bringin, complete your document verification.'**
  String get cash_kyc_test_account;

  /// No description provided for @cash_kyc_action_complete.
  ///
  /// In en, this message translates to:
  /// **'Complete document verification'**
  String get cash_kyc_action_complete;

  /// No description provided for @cash_kyc_in_progress.
  ///
  /// In en, this message translates to:
  /// **'Document verification is in progress. You will receive a notification once it is complete. Thank you.'**
  String get cash_kyc_in_progress;

  /// No description provided for @cash_kyc_failed.
  ///
  /// In en, this message translates to:
  /// **'Your document verification didn’t go through. Don’t worry, you can redo the verification now.'**
  String get cash_kyc_failed;

  /// No description provided for @cash_kyc_restricted.
  ///
  /// In en, this message translates to:
  /// **'Your KYC verification could not be approved. At this time, access to the application is restricted.'**
  String get cash_kyc_restricted;

  /// No description provided for @cash_action_know_more.
  ///
  /// In en, this message translates to:
  /// **'Know more'**
  String get cash_action_know_more;

  /// No description provided for @cash_transactions_empty_title.
  ///
  /// In en, this message translates to:
  /// **'No transactions yet!'**
  String get cash_transactions_empty_title;

  /// No description provided for @cash_transactions_empty_body.
  ///
  /// In en, this message translates to:
  /// **'All your transactions will show up here.'**
  String get cash_transactions_empty_body;

  /// No description provided for @cash_kyc_complete_title.
  ///
  /// In en, this message translates to:
  /// **'Complete your verification'**
  String get cash_kyc_complete_title;

  /// No description provided for @cash_connect_title.
  ///
  /// In en, this message translates to:
  /// **'Bringin Connect'**
  String get cash_connect_title;

  /// No description provided for @cash_connect_buy_body.
  ///
  /// In en, this message translates to:
  /// **'Link any of your Bitcoin wallet to get a dedicated vIBAN. Send euros from any bank—funds arrive instantly as BTC in your wallet.'**
  String get cash_connect_buy_body;

  /// No description provided for @cash_connect_sell_body.
  ///
  /// In en, this message translates to:
  /// **'Link any of your bank account to get a dedicated Bitcoin address. Send BTC from any wallet—funds arrive instantly as euros in your account.'**
  String get cash_connect_sell_body;

  /// No description provided for @cash_connect_kyc_prompt.
  ///
  /// In en, this message translates to:
  /// **'Please complete your KYC'**
  String get cash_connect_kyc_prompt;

  /// No description provided for @cash_manage_euro_title.
  ///
  /// In en, this message translates to:
  /// **'Manage Euro account'**
  String get cash_manage_euro_title;

  /// No description provided for @tx_label_buy_btc.
  ///
  /// In en, this message translates to:
  /// **'Buy BTC'**
  String get tx_label_buy_btc;

  /// No description provided for @tx_label_deposit_btc.
  ///
  /// In en, this message translates to:
  /// **'Deposit BTC'**
  String get tx_label_deposit_btc;

  /// No description provided for @tx_label_bank.
  ///
  /// In en, this message translates to:
  /// **'Bank'**
  String get tx_label_bank;

  /// No description provided for @tx_subtype_withdraw.
  ///
  /// In en, this message translates to:
  /// **'Withdraw'**
  String get tx_subtype_withdraw;

  /// No description provided for @payment_details_label_method.
  ///
  /// In en, this message translates to:
  /// **'Method'**
  String get payment_details_label_method;

  /// No description provided for @payment_details_label_sender_iban.
  ///
  /// In en, this message translates to:
  /// **'Sender beneficiary IBAN'**
  String get payment_details_label_sender_iban;

  /// No description provided for @payment_details_label_sender_name.
  ///
  /// In en, this message translates to:
  /// **'Sender beneficiary name'**
  String get payment_details_label_sender_name;

  /// No description provided for @payment_details_label_bank_reference.
  ///
  /// In en, this message translates to:
  /// **'Bank reference'**
  String get payment_details_label_bank_reference;

  /// No description provided for @payment_details_label_card.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get payment_details_label_card;

  /// No description provided for @payment_details_declined.
  ///
  /// In en, this message translates to:
  /// **'This payment was declined'**
  String get payment_details_declined;

  /// No description provided for @payment_details_why_received.
  ///
  /// In en, this message translates to:
  /// **'Why you received this'**
  String get payment_details_why_received;

  /// No description provided for @payment_details_failed.
  ///
  /// In en, this message translates to:
  /// **'This transaction didn\'t go through'**
  String get payment_details_failed;

  /// No description provided for @payment_details_whats_happening.
  ///
  /// In en, this message translates to:
  /// **'What\'s happening'**
  String get payment_details_whats_happening;

  /// No description provided for @payment_details_label_bitcoin_address.
  ///
  /// In en, this message translates to:
  /// **'Bitcoin address'**
  String get payment_details_label_bitcoin_address;

  /// No description provided for @payment_details_label_sent_to.
  ///
  /// In en, this message translates to:
  /// **'Sent to'**
  String get payment_details_label_sent_to;

  /// No description provided for @payment_details_fetching.
  ///
  /// In en, this message translates to:
  /// **'Fetching…'**
  String get payment_details_fetching;

  /// No description provided for @payment_details_label_account_holder.
  ///
  /// In en, this message translates to:
  /// **'Account holder'**
  String get payment_details_label_account_holder;

  /// No description provided for @payment_details_label_saved_as.
  ///
  /// In en, this message translates to:
  /// **'Saved as'**
  String get payment_details_label_saved_as;

  /// No description provided for @payment_details_label_transaction.
  ///
  /// In en, this message translates to:
  /// **'Transaction'**
  String get payment_details_label_transaction;

  /// No description provided for @payment_details_label_received_from.
  ///
  /// In en, this message translates to:
  /// **'Received from'**
  String get payment_details_label_received_from;

  /// No description provided for @payment_details_click_to_explore.
  ///
  /// In en, this message translates to:
  /// **'Click to explore'**
  String get payment_details_click_to_explore;

  /// No description provided for @payment_details_label_category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get payment_details_label_category;

  /// No description provided for @kyc_post_setup_badge.
  ///
  /// In en, this message translates to:
  /// **'Account verified'**
  String get kyc_post_setup_badge;

  /// No description provided for @kyc_post_setup_title.
  ///
  /// In en, this message translates to:
  /// **'Almost there'**
  String get kyc_post_setup_title;

  /// No description provided for @kyc_post_setup_body.
  ///
  /// In en, this message translates to:
  /// **'As a final step, activate your virtual Euro IBAN in your own name. This allows you to deposit and withdraw euros between your bank account and the Bringin platform via bank transfer.'**
  String get kyc_post_setup_body;

  /// No description provided for @kyc_post_setup_error.
  ///
  /// In en, this message translates to:
  /// **'Please try again.'**
  String get kyc_post_setup_error;

  /// No description provided for @kyc_denied_title.
  ///
  /// In en, this message translates to:
  /// **'Verification failed'**
  String get kyc_denied_title;

  /// No description provided for @kyc_denied_heading.
  ///
  /// In en, this message translates to:
  /// **'Verification not approved'**
  String get kyc_denied_heading;

  /// No description provided for @kyc_denied_body_prefix.
  ///
  /// In en, this message translates to:
  /// **'Your KYC verification could not be approved. At this time, access to the application is restricted. Contact '**
  String get kyc_denied_body_prefix;

  /// No description provided for @kyc_denied_body_suffix.
  ///
  /// In en, this message translates to:
  /// **' for more information'**
  String get kyc_denied_body_suffix;

  /// No description provided for @kyc_denied_reason_label.
  ///
  /// In en, this message translates to:
  /// **'Reason for rejection'**
  String get kyc_denied_reason_label;

  /// No description provided for @kyc_result_title.
  ///
  /// In en, this message translates to:
  /// **'Verification result'**
  String get kyc_result_title;

  /// No description provided for @kyc_result_heading.
  ///
  /// In en, this message translates to:
  /// **'Document verification failed'**
  String get kyc_result_heading;

  /// No description provided for @kyc_result_reason_label.
  ///
  /// In en, this message translates to:
  /// **'Reason for verification failure'**
  String get kyc_result_reason_label;

  /// No description provided for @kyc_error_update_details.
  ///
  /// In en, this message translates to:
  /// **'Failed to update your details. Please try again.'**
  String get kyc_error_update_details;

  /// No description provided for @kyc_error_wrong_code.
  ///
  /// In en, this message translates to:
  /// **'The code you entered is incorrect. Please try again.'**
  String get kyc_error_wrong_code;

  /// No description provided for @kyc_error_mobile_registered.
  ///
  /// In en, this message translates to:
  /// **'This mobile number is already registered. Please use a different number.'**
  String get kyc_error_mobile_registered;

  /// No description provided for @kyc_error_phone_required.
  ///
  /// In en, this message translates to:
  /// **'Please enter your phone number'**
  String get kyc_error_phone_required;

  /// No description provided for @kyc_error_phone_invalid.
  ///
  /// In en, this message translates to:
  /// **'Invalid phone number'**
  String get kyc_error_phone_invalid;

  /// No description provided for @kyc_error_address_min.
  ///
  /// In en, this message translates to:
  /// **'Address must be at least 3 characters'**
  String get kyc_error_address_min;

  /// No description provided for @kyc_error_city_min.
  ///
  /// In en, this message translates to:
  /// **'City must be at least 3 characters'**
  String get kyc_error_city_min;

  /// No description provided for @kyc_error_postal_invalid.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid postal code'**
  String get kyc_error_postal_invalid;

  /// No description provided for @kyc_error_region_min.
  ///
  /// In en, this message translates to:
  /// **'Region/State must be at least 3 characters'**
  String get kyc_error_region_min;

  /// No description provided for @kyc_error_country_required.
  ///
  /// In en, this message translates to:
  /// **'Please select a country'**
  String get kyc_error_country_required;

  /// No description provided for @kyc_error_dob_required.
  ///
  /// In en, this message translates to:
  /// **'Please select your date of birth'**
  String get kyc_error_dob_required;

  /// No description provided for @kyc_error_age_min.
  ///
  /// In en, this message translates to:
  /// **'You must be at least 15 years old'**
  String get kyc_error_age_min;

  /// No description provided for @kyc_step_personal_details.
  ///
  /// In en, this message translates to:
  /// **'Add personal details'**
  String get kyc_step_personal_details;

  /// No description provided for @kyc_flow_title.
  ///
  /// In en, this message translates to:
  /// **'Account verification'**
  String get kyc_flow_title;

  /// No description provided for @kyc_step_1.
  ///
  /// In en, this message translates to:
  /// **'Step 1'**
  String get kyc_step_1;

  /// No description provided for @kyc_step_2.
  ///
  /// In en, this message translates to:
  /// **'Step 2'**
  String get kyc_step_2;

  /// No description provided for @kyc_step_3.
  ///
  /// In en, this message translates to:
  /// **'Step 3'**
  String get kyc_step_3;

  /// No description provided for @kyc_field_phone.
  ///
  /// In en, this message translates to:
  /// **'Phone number'**
  String get kyc_field_phone;

  /// No description provided for @kyc_field_phone_hint.
  ///
  /// In en, this message translates to:
  /// **'Enter phone number'**
  String get kyc_field_phone_hint;

  /// No description provided for @kyc_phone_edit_note.
  ///
  /// In en, this message translates to:
  /// **'Editing your phone will send a new code to the new number.'**
  String get kyc_phone_edit_note;

  /// No description provided for @kyc_step_documents.
  ///
  /// In en, this message translates to:
  /// **'Documents verification'**
  String get kyc_step_documents;

  /// No description provided for @kyc_documents_body.
  ///
  /// In en, this message translates to:
  /// **'You are almost there, next you have to upload the relevant documents for verification.\\nContinue to finish the identification process (usually takes less than 5 minutes) to start using Bringin.'**
  String get kyc_documents_body;

  /// No description provided for @kyc_action_verify_documents.
  ///
  /// In en, this message translates to:
  /// **'Verify documents'**
  String get kyc_action_verify_documents;

  /// No description provided for @kyc_step_verify_phone.
  ///
  /// In en, this message translates to:
  /// **'Verify your phone number'**
  String get kyc_step_verify_phone;

  /// No description provided for @kyc_error_under_review.
  ///
  /// In en, this message translates to:
  /// **'Your verification is currently under review. We\'ll notify you once it\'s complete.'**
  String get kyc_error_under_review;

  /// No description provided for @kyc_error_email_required.
  ///
  /// In en, this message translates to:
  /// **'Email is required for KYC verification'**
  String get kyc_error_email_required;

  /// No description provided for @kyc_error_phone_required_verification.
  ///
  /// In en, this message translates to:
  /// **'Phone number is required for KYC verification. Please complete mobile verification first.'**
  String get kyc_error_phone_required_verification;

  /// No description provided for @kyc_error_mobile_not_verified.
  ///
  /// In en, this message translates to:
  /// **'Mobile verification is required before starting KYC. Please verify your mobile number first.'**
  String get kyc_error_mobile_not_verified;

  /// No description provided for @kyc_error_token_refresh.
  ///
  /// In en, this message translates to:
  /// **'Failed to refresh KYC token'**
  String get kyc_error_token_refresh;

  /// No description provided for @kyc_error_failed.
  ///
  /// In en, this message translates to:
  /// **'KYC verification failed. Please try again.'**
  String get kyc_error_failed;

  /// No description provided for @home_cards_physical_section.
  ///
  /// In en, this message translates to:
  /// **'Physical cards'**
  String get home_cards_physical_section;

  /// No description provided for @home_cards_physical_add.
  ///
  /// In en, this message translates to:
  /// **'Add a physical card'**
  String get home_cards_physical_add;

  /// No description provided for @home_cards_physical_empty.
  ///
  /// In en, this message translates to:
  /// **'All your physical cards will appear here.'**
  String get home_cards_physical_empty;

  /// No description provided for @home_cards_virtual_section.
  ///
  /// In en, this message translates to:
  /// **'Virtual cards'**
  String get home_cards_virtual_section;

  /// No description provided for @home_cards_virtual_add.
  ///
  /// In en, this message translates to:
  /// **'Add a virtual card'**
  String get home_cards_virtual_add;

  /// No description provided for @home_cards_virtual_empty.
  ///
  /// In en, this message translates to:
  /// **'All your virtual cards will appear here.'**
  String get home_cards_virtual_empty;

  /// No description provided for @home_cards_funding_section.
  ///
  /// In en, this message translates to:
  /// **'Funding accounts'**
  String get home_cards_funding_section;

  /// No description provided for @home_cards_linked_count.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No cards linked.} =1{1 linked card.} other{{count} linked cards.}}'**
  String home_cards_linked_count(int count);

  /// No description provided for @home_cards_order_physical.
  ///
  /// In en, this message translates to:
  /// **'Order a physical card'**
  String get home_cards_order_physical;

  /// No description provided for @home_cards_activate_physical.
  ///
  /// In en, this message translates to:
  /// **'Activate your physical card'**
  String get home_cards_activate_physical;

  /// No description provided for @home_cards_atm_first_title.
  ///
  /// In en, this message translates to:
  /// **'Use your card at an ATM first'**
  String get home_cards_atm_first_title;

  /// No description provided for @home_cards_atm_first_body.
  ///
  /// In en, this message translates to:
  /// **'Check your balance at any ATM to start using your card. This step is required only the first time.'**
  String get home_cards_atm_first_body;

  /// No description provided for @home_cards_promo_spend_title.
  ///
  /// In en, this message translates to:
  /// **'Spend anywhere, anytime'**
  String get home_cards_promo_spend_title;

  /// No description provided for @home_cards_promo_spend_body.
  ///
  /// In en, this message translates to:
  /// **'Shop in-store or withdraw cash at ATMs worldwide, backed by Euro and crypto account flexibility.'**
  String get home_cards_promo_spend_body;

  /// No description provided for @home_cards_promo_dual_title.
  ///
  /// In en, this message translates to:
  /// **'One card, dual power'**
  String get home_cards_promo_dual_title;

  /// No description provided for @home_cards_promo_dual_body.
  ///
  /// In en, this message translates to:
  /// **'Switch between Euro and crypto balances effortlessly, giving full control of how you spend.'**
  String get home_cards_promo_dual_body;

  /// No description provided for @home_cards_promo_order_title.
  ///
  /// In en, this message translates to:
  /// **'Order now, get it in 13 days'**
  String get home_cards_promo_order_title;

  /// No description provided for @home_cards_promo_order_body.
  ///
  /// In en, this message translates to:
  /// **'Enjoy the reliability of a physical card, accepted wherever major networks are.'**
  String get home_cards_promo_order_body;

  /// No description provided for @home_cards_promo_instant_title.
  ///
  /// In en, this message translates to:
  /// **'Instant issuance & flexibility'**
  String get home_cards_promo_instant_title;

  /// No description provided for @home_cards_promo_instant_body.
  ///
  /// In en, this message translates to:
  /// **'Create and use cards instantly, with the freedom to link to any of your accounts.'**
  String get home_cards_promo_instant_body;

  /// No description provided for @home_cards_promo_security_title.
  ///
  /// In en, this message translates to:
  /// **'Enhanced security'**
  String get home_cards_promo_security_title;

  /// No description provided for @home_cards_promo_security_body.
  ///
  /// In en, this message translates to:
  /// **'Protect your funds with disposable card numbers and real-time spend controls for safe online transactions.'**
  String get home_cards_promo_security_body;

  /// No description provided for @home_cards_promo_multi_title.
  ///
  /// In en, this message translates to:
  /// **'Seamless multi-currency use'**
  String get home_cards_promo_multi_title;

  /// No description provided for @home_cards_promo_multi_body.
  ///
  /// In en, this message translates to:
  /// **'Pay online in Euro or crypto without hassle, moving accounts instantly for smooth global spending.'**
  String get home_cards_promo_multi_body;

  /// No description provided for @home_cards_error_load.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t load your cards.'**
  String get home_cards_error_load;

  /// No description provided for @card_status_active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get card_status_active;

  /// No description provided for @card_status_yet_to_dispatch.
  ///
  /// In en, this message translates to:
  /// **'Yet to dispatch'**
  String get card_status_yet_to_dispatch;

  /// No description provided for @card_status_dispatched.
  ///
  /// In en, this message translates to:
  /// **'Dispatched'**
  String get card_status_dispatched;

  /// No description provided for @card_status_frozen.
  ///
  /// In en, this message translates to:
  /// **'Frozen'**
  String get card_status_frozen;

  /// No description provided for @card_status_closed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get card_status_closed;

  /// No description provided for @card_status_expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get card_status_expired;

  /// No description provided for @home_connect_setup.
  ///
  /// In en, this message translates to:
  /// **'Setup'**
  String get home_connect_setup;

  /// No description provided for @home_connect_all.
  ///
  /// In en, this message translates to:
  /// **'All connections'**
  String get home_connect_all;

  /// No description provided for @home_connect_reenable_title.
  ///
  /// In en, this message translates to:
  /// **'Re-enable paused connections'**
  String get home_connect_reenable_title;

  /// No description provided for @home_connect_reenable_body.
  ///
  /// In en, this message translates to:
  /// **'Due to new Travel Rule requirements, we had to pause some of your existing connections. You can now re-enable them from this tab.\\n\\nWhen you re-enable a connection, we\'ll issue fresh details where required: a new vIBAN for Buy connections, or a new Bitcoin deposit address for on-chain Sell connections.\\n\\nYour destination stays the same — your connected wallet or bank account will not change.'**
  String get home_connect_reenable_body;

  /// No description provided for @home_connect_status_paused.
  ///
  /// In en, this message translates to:
  /// **'Paused'**
  String get home_connect_status_paused;

  /// No description provided for @home_action_complete_transfer.
  ///
  /// In en, this message translates to:
  /// **'Complete transfer'**
  String get home_action_complete_transfer;

  /// No description provided for @home_action_verify_transfer.
  ///
  /// In en, this message translates to:
  /// **'Verify transfer'**
  String get home_action_verify_transfer;

  /// No description provided for @home_action_resume_transfer.
  ///
  /// In en, this message translates to:
  /// **'Resume transfer'**
  String get home_action_resume_transfer;

  /// No description provided for @home_action_send_to_bank.
  ///
  /// In en, this message translates to:
  /// **'Send to bank'**
  String get home_action_send_to_bank;

  /// No description provided for @home_action_resume_transaction.
  ///
  /// In en, this message translates to:
  /// **'Resume transaction'**
  String get home_action_resume_transaction;

  /// No description provided for @home_action_send_more_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Send more Bitcoin'**
  String get home_action_send_more_bitcoin;

  /// No description provided for @home_action_purchase_not_completed.
  ///
  /// In en, this message translates to:
  /// **'Purchase not completed'**
  String get home_action_purchase_not_completed;

  /// No description provided for @home_action_complete_the_transfer.
  ///
  /// In en, this message translates to:
  /// **'Complete the transfer'**
  String get home_action_complete_the_transfer;

  /// No description provided for @home_action_provide_new_destination.
  ///
  /// In en, this message translates to:
  /// **'Provide a new destination'**
  String get home_action_provide_new_destination;

  /// No description provided for @home_action_send_to_my_bank.
  ///
  /// In en, this message translates to:
  /// **'Send to my bank'**
  String get home_action_send_to_my_bank;

  /// No description provided for @home_action_resume_the_transaction.
  ///
  /// In en, this message translates to:
  /// **'Resume the transaction'**
  String get home_action_resume_the_transaction;

  /// No description provided for @home_action_start_new_purchase.
  ///
  /// In en, this message translates to:
  /// **'Start a new purchase'**
  String get home_action_start_new_purchase;

  /// No description provided for @home_action_label_source_amount.
  ///
  /// In en, this message translates to:
  /// **'Source amount'**
  String get home_action_label_source_amount;

  /// No description provided for @home_action_label_destination_amount.
  ///
  /// In en, this message translates to:
  /// **'Destination amount'**
  String get home_action_label_destination_amount;

  /// No description provided for @home_action_label_time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get home_action_label_time;

  /// No description provided for @home_action_reason_offramp_held.
  ///
  /// In en, this message translates to:
  /// **'Your Euro has been converted to Bitcoin and is held safely in your Bringin account. The transfer to your wallet was never started — tap below to complete it.'**
  String get home_action_reason_offramp_held;

  /// No description provided for @home_action_reason_needs_verification.
  ///
  /// In en, this message translates to:
  /// **'This transfer needs a quick verification. Tap below to finish it.'**
  String get home_action_reason_needs_verification;

  /// No description provided for @home_action_reason_ln_failed.
  ///
  /// In en, this message translates to:
  /// **'Your Lightning Network payment didn\'t complete. Your Bitcoin is held safely. Share a fresh Lightning invoice or address.'**
  String get home_action_reason_ln_failed;

  /// No description provided for @home_action_reason_euro_ready.
  ///
  /// In en, this message translates to:
  /// **'Your Bitcoin has been converted to Euro. The Euro is in your Bringin account. Start the bank transfer to send it to your bank.'**
  String get home_action_reason_euro_ready;

  /// No description provided for @home_action_reason_withdraw_failed.
  ///
  /// In en, this message translates to:
  /// **'Your automatic Euro withdrawal didn\'t complete. Your funds are safe. Tap below to retry.'**
  String get home_action_reason_withdraw_failed;

  /// No description provided for @home_action_reason_buy_failed.
  ///
  /// In en, this message translates to:
  /// **'Your automatic Bitcoin purchase didn\'t complete. Your funds are safe. Tap below to retry.'**
  String get home_action_reason_buy_failed;

  /// No description provided for @home_action_reason_below_minimum.
  ///
  /// In en, this message translates to:
  /// **'Your Bitcoin deposit has arrived in your Bringin account but is below the minimum needed to convert to Euro. Send more Bitcoin to the same deposit address to start the conversion, or contact us at support@bringin.xyz to recover the Bitcoin.'**
  String get home_action_reason_below_minimum;

  /// No description provided for @home_action_reason_not_verified_in_time.
  ///
  /// In en, this message translates to:
  /// **'This purchase wasn\'t verified in time, so it didn\'t go through. No money left your account. Start a new purchase to try again.'**
  String get home_action_reason_not_verified_in_time;

  /// No description provided for @home_action_reason_partial.
  ///
  /// In en, this message translates to:
  /// **'This transaction was partially completed and needs your attention.'**
  String get home_action_reason_partial;

  /// No description provided for @home_flow_verify_bank_transfer.
  ///
  /// In en, this message translates to:
  /// **'Verify bank transfer'**
  String get home_flow_verify_bank_transfer;

  /// No description provided for @home_flow_error_verification_failed.
  ///
  /// In en, this message translates to:
  /// **'Verification failed. Please try again.'**
  String get home_flow_error_verification_failed;

  /// No description provided for @home_flow_error_verification_failed_short.
  ///
  /// In en, this message translates to:
  /// **'Verification failed. Try again.'**
  String get home_flow_error_verification_failed_short;

  /// No description provided for @home_flow_otp_prompt.
  ///
  /// In en, this message translates to:
  /// **'Please enter the verification code sent to your mobile number'**
  String get home_flow_otp_prompt;

  /// No description provided for @home_flow_label_mobile_number.
  ///
  /// In en, this message translates to:
  /// **'Mobile number '**
  String get home_flow_label_mobile_number;

  /// No description provided for @home_flow_label_verification_code.
  ///
  /// In en, this message translates to:
  /// **'Verification code'**
  String get home_flow_label_verification_code;

  /// No description provided for @home_flow_action_confirm_send.
  ///
  /// In en, this message translates to:
  /// **'Confirm and send'**
  String get home_flow_action_confirm_send;

  /// No description provided for @home_flow_completing_bank_transfer.
  ///
  /// In en, this message translates to:
  /// **'Completing your bank transfer.'**
  String get home_flow_completing_bank_transfer;

  /// No description provided for @home_flow_your_bank.
  ///
  /// In en, this message translates to:
  /// **'Your bank'**
  String get home_flow_your_bank;

  /// No description provided for @home_flow_send_to_bank.
  ///
  /// In en, this message translates to:
  /// **'Send to your bank'**
  String get home_flow_send_to_bank;

  /// No description provided for @home_flow_converted_title.
  ///
  /// In en, this message translates to:
  /// **'Your Bitcoin has been converted to Euro'**
  String get home_flow_converted_title;

  /// No description provided for @home_flow_converted_body.
  ///
  /// In en, this message translates to:
  /// **'The Euro is in your Bringin account. Confirm below to start the bank transfer to your bank.'**
  String get home_flow_converted_body;

  /// No description provided for @home_flow_summary.
  ///
  /// In en, this message translates to:
  /// **'Transfer summary'**
  String get home_flow_summary;

  /// No description provided for @home_flow_label_destination_bank.
  ///
  /// In en, this message translates to:
  /// **'Destination bank'**
  String get home_flow_label_destination_bank;

  /// No description provided for @home_flow_action_confirm_start.
  ///
  /// In en, this message translates to:
  /// **'Confirm and start the transfer'**
  String get home_flow_action_confirm_start;

  /// No description provided for @home_flow_verify_send_euro.
  ///
  /// In en, this message translates to:
  /// **'Verify this transfer to send your Euro'**
  String get home_flow_verify_send_euro;

  /// No description provided for @home_flow_error_no_amount.
  ///
  /// In en, this message translates to:
  /// **'Cannot determine the amount to send.'**
  String get home_flow_error_no_amount;

  /// No description provided for @home_flow_generating_invoice.
  ///
  /// In en, this message translates to:
  /// **'Generating invoice.'**
  String get home_flow_generating_invoice;

  /// No description provided for @home_flow_initiating_transfer.
  ///
  /// In en, this message translates to:
  /// **'Initiating transfer.'**
  String get home_flow_initiating_transfer;

  /// No description provided for @home_flow_new_destination.
  ///
  /// In en, this message translates to:
  /// **'New destination'**
  String get home_flow_new_destination;

  /// No description provided for @home_flow_ln_failed_share_fresh.
  ///
  /// In en, this message translates to:
  /// **'Your Lightning Network payment didn\'t complete. Your Bitcoin is held safely. Please share a fresh Lightning invoice or a Lightning address.'**
  String get home_flow_ln_failed_share_fresh;

  /// No description provided for @home_flow_send_onchain_instead.
  ///
  /// In en, this message translates to:
  /// **'Send on-chain instead'**
  String get home_flow_send_onchain_instead;

  /// No description provided for @home_flow_above_ln_limit.
  ///
  /// In en, this message translates to:
  /// **'This transfer is above the €1,000 Lightning limit set by EU Travel Rule. Enter a Bitcoin address and we\'ll finish it on-chain.'**
  String get home_flow_above_ln_limit;

  /// No description provided for @home_flow_action_continue_onchain.
  ///
  /// In en, this message translates to:
  /// **'Continue on-chain'**
  String get home_flow_action_continue_onchain;

  /// No description provided for @home_flow_error_invoice_over_held.
  ///
  /// In en, this message translates to:
  /// **'This invoice is for {invoiceSats} satoshis but we hold {heldSats} satoshis. Please generate a new invoice for exactly {heldSats} satoshis.'**
  String home_flow_error_invoice_over_held(int invoiceSats, int heldSats);

  /// No description provided for @home_flow_error_invoice_over_sendable.
  ///
  /// In en, this message translates to:
  /// **'This invoice is for {invoiceSats} satoshis but we can only send {destinationSats} satoshis. Please use a smaller invoice.'**
  String home_flow_error_invoice_over_sendable(
      int invoiceSats, int destinationSats);

  /// No description provided for @home_flow_confirming_transfer.
  ///
  /// In en, this message translates to:
  /// **'Confirming your transfer.'**
  String get home_flow_confirming_transfer;

  /// No description provided for @home_flow_pro_activated.
  ///
  /// In en, this message translates to:
  /// **'Pro activated!'**
  String get home_flow_pro_activated;

  /// No description provided for @home_flow_verify_release_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Verify this transfer to release your Bitcoin'**
  String get home_flow_verify_release_bitcoin;

  /// No description provided for @home_flow_error_invalid_btc_address.
  ///
  /// In en, this message translates to:
  /// **'Enter a valid Bitcoin address'**
  String get home_flow_error_invalid_btc_address;

  /// No description provided for @home_flow_sending_onchain.
  ///
  /// In en, this message translates to:
  /// **'Sending on-chain.'**
  String get home_flow_sending_onchain;

  /// No description provided for @home_flow_refund_in_progress.
  ///
  /// In en, this message translates to:
  /// **'Your Lightning payment is still being refunded. Please try again in a moment.'**
  String get home_flow_refund_in_progress;

  /// No description provided for @home_flow_recover_bitcoin.
  ///
  /// In en, this message translates to:
  /// **'Recover your Bitcoin'**
  String get home_flow_recover_bitcoin;

  /// No description provided for @home_flow_ln_blocked_title.
  ///
  /// In en, this message translates to:
  /// **'Lightning transfer blocked'**
  String get home_flow_ln_blocked_title;

  /// No description provided for @home_flow_ln_blocked_body.
  ///
  /// In en, this message translates to:
  /// **'The amount is above the €1,000 Lightning limit set by EU Travel Rule. Share a Bitcoin address and we\'ll send your BTC on-chain instead — one OTP away.'**
  String get home_flow_ln_blocked_body;

  /// No description provided for @home_flow_hint_paste_btc_address.
  ///
  /// In en, this message translates to:
  /// **'Paste a Bitcoin address'**
  String get home_flow_hint_paste_btc_address;

  /// No description provided for @home_flow_resume_payment.
  ///
  /// In en, this message translates to:
  /// **'Resume payment'**
  String get home_flow_resume_payment;

  /// No description provided for @home_flow_invoice_still_valid.
  ///
  /// In en, this message translates to:
  /// **'Your invoice is still valid. Tap Next to proceed, or paste a different Lightning invoice or address below.'**
  String get home_flow_invoice_still_valid;

  /// No description provided for @home_flow_invoice_expired.
  ///
  /// In en, this message translates to:
  /// **'Your previous invoice has expired. Please paste a fresh Lightning invoice or Lightning address below.'**
  String get home_flow_invoice_expired;

  /// No description provided for @home_flow_resume_ln_transfer.
  ///
  /// In en, this message translates to:
  /// **'Resume Lightning transfer'**
  String get home_flow_resume_ln_transfer;

  /// No description provided for @home_flow_error_empty_invoice.
  ///
  /// In en, this message translates to:
  /// **'Backend returned an empty invoice. Please try again.'**
  String get home_flow_error_empty_invoice;

  /// No description provided for @home_flow_preparing_pro.
  ///
  /// In en, this message translates to:
  /// **'Preparing your Pro subscription...'**
  String get home_flow_preparing_pro;

  /// No description provided for @home_flow_activating_pro.
  ///
  /// In en, this message translates to:
  /// **'Activating Pro'**
  String get home_flow_activating_pro;

  /// No description provided for @home_flow_error_generic_title.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong'**
  String get home_flow_error_generic_title;

  /// No description provided for @home_setup_still_title.
  ///
  /// In en, this message translates to:
  /// **'Still setting things up'**
  String get home_setup_still_title;

  /// No description provided for @home_setup_title.
  ///
  /// In en, this message translates to:
  /// **'Setting up your account'**
  String get home_setup_title;

  /// No description provided for @home_setup_taking_longer.
  ///
  /// In en, this message translates to:
  /// **'This is taking longer than usual. Tap retry to check again, or come back in a moment.'**
  String get home_setup_taking_longer;

  /// No description provided for @home_setup_body.
  ///
  /// In en, this message translates to:
  /// **'We\'re finishing setup behind the scenes. This usually takes just a few seconds.'**
  String get home_setup_body;

  /// No description provided for @home_autodecl_title.
  ///
  /// In en, this message translates to:
  /// **'Using your own Bitcoin wallet?'**
  String get home_autodecl_title;

  /// No description provided for @home_autodecl_body.
  ///
  /// In en, this message translates to:
  /// **'By continuing, you confirm that Bitcoin you buy will normally be sent to wallets you own, and Bitcoin you sell will normally come from wallets you own. We\'ll remember this so you don\'t have to confirm it every time.\\n\\nYou can change this anytime in Settings.'**
  String get home_autodecl_body;

  /// No description provided for @home_action_not_now.
  ///
  /// In en, this message translates to:
  /// **'Not now'**
  String get home_action_not_now;

  /// No description provided for @home_autodecl_confirm.
  ///
  /// In en, this message translates to:
  /// **'Confirm and remember'**
  String get home_autodecl_confirm;

  /// No description provided for @home_needed_passkey_title.
  ///
  /// In en, this message translates to:
  /// **'Protect your account'**
  String get home_needed_passkey_title;

  /// No description provided for @home_needed_passkey_body.
  ///
  /// In en, this message translates to:
  /// **'Add a passkey — faster and safer than SMS.'**
  String get home_needed_passkey_body;

  /// No description provided for @home_action_do_it_now.
  ///
  /// In en, this message translates to:
  /// **'Do it now'**
  String get home_action_do_it_now;

  /// No description provided for @home_needed_tr_title.
  ///
  /// In en, this message translates to:
  /// **'Pre-declare travel rule'**
  String get home_needed_tr_title;

  /// No description provided for @home_needed_tr_body.
  ///
  /// In en, this message translates to:
  /// **'Turn on auto declaration for the wallets you own.'**
  String get home_needed_tr_body;

  /// No description provided for @home_kyc_checking.
  ///
  /// In en, this message translates to:
  /// **'Checking your verification status.'**
  String get home_kyc_checking;

  /// No description provided for @home_kyc_under_review_title.
  ///
  /// In en, this message translates to:
  /// **'Verification under review'**
  String get home_kyc_under_review_title;

  /// No description provided for @home_kyc_under_review_body.
  ///
  /// In en, this message translates to:
  /// **'Your provided details are currently under review, you will receive an email from us regarding the verification.'**
  String get home_kyc_under_review_body;

  /// No description provided for @home_nearby_title.
  ///
  /// In en, this message translates to:
  /// **'Nearby payments'**
  String get home_nearby_title;

  /// No description provided for @home_nearby_body.
  ///
  /// In en, this message translates to:
  /// **'Discover nearby Bringin users over Bluetooth and send or receive Lightning payments.'**
  String get home_nearby_body;

  /// No description provided for @home_nearby_bt_permission_title.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth permission required'**
  String get home_nearby_bt_permission_title;

  /// No description provided for @home_nearby_bt_permission_body.
  ///
  /// In en, this message translates to:
  /// **'Go to Settings → Bringin → Bluetooth to enable it.'**
  String get home_nearby_bt_permission_body;

  /// No description provided for @home_nearby_action_open_settings.
  ///
  /// In en, this message translates to:
  /// **'Open Settings'**
  String get home_nearby_action_open_settings;

  /// No description provided for @home_nearby_bt_off_title.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth is off'**
  String get home_nearby_bt_off_title;

  /// No description provided for @home_nearby_bt_off_body.
  ///
  /// In en, this message translates to:
  /// **'Turn on Bluetooth to discover nearby users.'**
  String get home_nearby_bt_off_body;

  /// No description provided for @home_nearby_pay.
  ///
  /// In en, this message translates to:
  /// **'Pay'**
  String get home_nearby_pay;

  /// No description provided for @home_nearby_pay_hint.
  ///
  /// In en, this message translates to:
  /// **'Find nearby users and pay them'**
  String get home_nearby_pay_hint;

  /// No description provided for @home_nearby_activate_first.
  ///
  /// In en, this message translates to:
  /// **'Activate your Bitcoin wallet first'**
  String get home_nearby_activate_first;

  /// No description provided for @home_nearby_get_paid.
  ///
  /// In en, this message translates to:
  /// **'Get paid'**
  String get home_nearby_get_paid;

  /// No description provided for @home_nearby_get_paid_hint.
  ///
  /// In en, this message translates to:
  /// **'Make yourself discoverable nearby'**
  String get home_nearby_get_paid_hint;

  /// No description provided for @home_passkey_do_it_later.
  ///
  /// In en, this message translates to:
  /// **'Do it later - use SMS for now'**
  String get home_passkey_do_it_later;

  /// No description provided for @home_passkey_method_note.
  ///
  /// In en, this message translates to:
  /// **'You\'ll use this method when signing in or approving sensitive actions.'**
  String get home_passkey_method_note;

  /// No description provided for @home_passkey_option_passkey.
  ///
  /// In en, this message translates to:
  /// **'Passkey'**
  String get home_passkey_option_passkey;

  /// No description provided for @home_passkey_option_passkey_hint.
  ///
  /// In en, this message translates to:
  /// **'Device Biometrics. Faster and phishing-resistant'**
  String get home_passkey_option_passkey_hint;

  /// No description provided for @home_passkey_option_totp.
  ///
  /// In en, this message translates to:
  /// **'Authenticator app'**
  String get home_passkey_option_totp;

  /// No description provided for @home_passkey_option_totp_hint.
  ///
  /// In en, this message translates to:
  /// **'Google Authenticator, Microsoft Authenticator etc.'**
  String get home_passkey_option_totp_hint;

  /// No description provided for @home_send_error_zero_amount.
  ///
  /// In en, this message translates to:
  /// **'Zero amount invoices are not supported'**
  String get home_send_error_zero_amount;

  /// Title of the screen shown in place of the Cards tab for users in a country where cards are not offered.
  ///
  /// In en, this message translates to:
  /// **'We appreciate your support for Bringin'**
  String get pro_unavailable_title;

  /// Body of the card-unavailable screen.
  ///
  /// In en, this message translates to:
  /// **'However, we are not available in Switzerland yet.'**
  String get pro_unavailable_body;

  /// First half of a sentence whose second half is the tappable support email address. Keep the trailing space.
  ///
  /// In en, this message translates to:
  /// **'Please contact us at '**
  String get pro_unavailable_contact_prefix;

  /// Second half of the sentence that follows the tappable support email address. Keep the leading space.
  ///
  /// In en, this message translates to:
  /// **' to request a refund for your prepayment for cards.'**
  String get pro_unavailable_contact_suffix;

  /// Status line on the processing screen while the Pro subscription payment settles.
  ///
  /// In en, this message translates to:
  /// **'Activating Pro...'**
  String get pro_activating_status;

  /// Primary button on the Pro upsell screen.
  ///
  /// In en, this message translates to:
  /// **'Get Pro'**
  String get pro_action_get;

  /// First part of the Pro hero headline. The word that follows is highlighted in a different colour, so keep the trailing space. Line breaks are deliberate.
  ///
  /// In en, this message translates to:
  /// **'Hold Bitcoin\nyour way. Spend\nit '**
  String get pro_hero_title_prefix;

  /// The highlighted final word of the Pro hero headline, which begins with pro_hero_title_prefix.
  ///
  /// In en, this message translates to:
  /// **'worldwide'**
  String get pro_hero_title_highlight;

  /// Subtitle under the Pro hero headline.
  ///
  /// In en, this message translates to:
  /// **'Unlock your Bitcoin Debit Card with Pro. Pay worldwide, online or in-store.'**
  String get pro_hero_subtitle;

  /// Shown in the pricing card when the price lookup fails.
  ///
  /// In en, this message translates to:
  /// **'Couldn’t load pricing.'**
  String get pro_pricing_error;

  /// Badge next to the Pro price. {percent} is a whole number.
  ///
  /// In en, this message translates to:
  /// **'{percent}% Discount'**
  String pro_pricing_discount_badge(String percent);

  /// Caption under the Pro price. {amount} is a pre-formatted euro amount.
  ///
  /// In en, this message translates to:
  /// **'Paid annually, {amount} per month'**
  String pro_pricing_per_month(String amount);

  /// Pro feature bullet.
  ///
  /// In en, this message translates to:
  /// **'1 free physical & virtual debit cards.'**
  String get pro_benefit_free_cards;

  /// Pro feature bullet.
  ///
  /// In en, this message translates to:
  /// **'Create up-to 5 cards'**
  String get pro_benefit_create_cards;

  /// Pro feature bullet.
  ///
  /// In en, this message translates to:
  /// **'Spend Bitcoin or Euros'**
  String get pro_benefit_spend;

  /// Additional-benefit row on the Pro screen. Alby is a product name.
  ///
  /// In en, this message translates to:
  /// **'10% Discounts on Alby subscriptions'**
  String get pro_benefit_alby;

  /// Additional-benefit row on the Pro screen. Koinly is a product name.
  ///
  /// In en, this message translates to:
  /// **'10% Discounts on the Koinly Tax calculator tool'**
  String get pro_benefit_koinly;

  /// Toast when the Pro pre-payment could not be created.
  ///
  /// In en, this message translates to:
  /// **'Could not start payment. Please try again.'**
  String get pro_error_payment_start;

  /// Toast when starting the Pro payment failed for a reason retrying immediately will not fix.
  ///
  /// In en, this message translates to:
  /// **'Could not start payment. Please try again later.'**
  String get pro_error_payment_start_later;

  /// Toast shown when the user taps Get Pro but the subscription has already been paid.
  ///
  /// In en, this message translates to:
  /// **'You are already a Pro subscriber.'**
  String get pro_error_already_subscriber;

  /// Title of the bottom sheet that picks how to pay for Pro.
  ///
  /// In en, this message translates to:
  /// **'Get Pro annual subscription'**
  String get pro_sheet_title;

  /// Prompt above the payment-method rows in the Pro payment sheet.
  ///
  /// In en, this message translates to:
  /// **'How would you like to pay for Pro?'**
  String get pro_sheet_question;

  /// Payment-method row: the user's self-custodial Bitcoin wallet.
  ///
  /// In en, this message translates to:
  /// **'Pay with Bitcoin wallet'**
  String get pro_pay_bitcoin_wallet;

  /// Payment-method row: the user's Bringin euro balance.
  ///
  /// In en, this message translates to:
  /// **'Pay with Euro account'**
  String get pro_pay_euro_account;

  /// Payment-method row: pay a Lightning invoice from a wallet outside Bringin.
  ///
  /// In en, this message translates to:
  /// **'Pay with external wallets'**
  String get pro_pay_external_wallets;

  /// Subtitle of the external-wallets payment row.
  ///
  /// In en, this message translates to:
  /// **'Via lightning network'**
  String get pro_pay_external_subtitle;

  /// Toast when falling back from passkey to SMS needs a fresh invoice and the replacement priced differently, so the purchase has to be restarted.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t switch to SMS. Start the purchase again.'**
  String get pro_eur_error_sms_switch_restart;

  /// Toast when the backend sent a passkey challenge with no WebAuthn options, so the ceremony cannot run.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t start passkey verification. Use SMS instead.'**
  String get pro_eur_error_passkey_start;

  /// Toast when the device holds no credential for this account.
  ///
  /// In en, this message translates to:
  /// **'No passkey found on this device. Use SMS instead.'**
  String get pro_eur_error_no_passkey;

  /// Reason line on the failure screen for a Pro subscription paid from the euro balance.
  ///
  /// In en, this message translates to:
  /// **'Subscription payment could not be completed.'**
  String get pro_eur_failure_reason;

  /// Row label in the Pro payment summary card.
  ///
  /// In en, this message translates to:
  /// **'Plan'**
  String get pro_summary_label_plan;

  /// Row value in the Pro payment summary card: the name of the plan being bought.
  ///
  /// In en, this message translates to:
  /// **'Pro annual'**
  String get pro_summary_value_plan;

  /// Title of the first of two verification steps when paying for Pro from the euro balance.
  ///
  /// In en, this message translates to:
  /// **'Verify your payment'**
  String get pro_verify_swap_title;

  /// Explainer under pro_verify_swap_title.
  ///
  /// In en, this message translates to:
  /// **'To keep your money safe, paying for Pro takes two quick verifications. This is the first one.'**
  String get pro_verify_swap_explainer;

  /// Title of the second of two verification steps when paying for Pro.
  ///
  /// In en, this message translates to:
  /// **'Confirm your payment'**
  String get pro_verify_withdraw_title;

  /// Info banner on the second Pro verification step.
  ///
  /// In en, this message translates to:
  /// **'Almost there! Verify once more to activate Pro.'**
  String get pro_verify_withdraw_banner;

  /// App-bar title of the verification screens in the Pro euro-payment flow.
  ///
  /// In en, this message translates to:
  /// **'Pay with Euro'**
  String get pro_eur_appbar_title;

  /// First part of a sentence that continues with the user's phone number, then pro_eur_otp_prompt_or_email, then their email address. Keep the line break and the trailing space.
  ///
  /// In en, this message translates to:
  /// **'Add the verification code sent to your:\nmobile number '**
  String get pro_eur_otp_prompt_prefix;

  /// Joins the phone number and the email address in the prompt that starts with pro_eur_otp_prompt_prefix. Keep the line break and both spaces.
  ///
  /// In en, this message translates to:
  /// **' or\nemail address '**
  String get pro_eur_otp_prompt_or_email;

  /// Helper text under the OTP boxes, next to the resend countdown.
  ///
  /// In en, this message translates to:
  /// **'Did not receive the code?'**
  String get pro_eur_otp_helper_resend;

  /// Reason shown in the operating system's biometric prompt when the user is turning biometric unlock on.
  ///
  /// In en, this message translates to:
  /// **'Authenticate to enable biometrics'**
  String get security_biometric_auth_reason;

  /// Reason shown in the operating system's biometric prompt when the user toggles biometric unlock on from the security settings.
  ///
  /// In en, this message translates to:
  /// **'Unlock with biometrics'**
  String get security_biometric_unlock_reason;

  /// Title of the dialog shown when the device has no biometric enrolled.
  ///
  /// In en, this message translates to:
  /// **'Biometric not available'**
  String get security_biometric_unavailable_title;

  /// Body of the biometric-unavailable dialog. Face ID and Touch ID are Apple product names.
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication is not set up on this device. Please enable Face ID or Touch ID in your device settings and try again.'**
  String get security_biometric_unavailable_body;

  /// Title of the page offered during onboarding that asks the user to turn on biometric unlock.
  ///
  /// In en, this message translates to:
  /// **'Enable Biometric'**
  String get security_biometric_prompt_title;

  /// Body of the biometric setup prompt page.
  ///
  /// In en, this message translates to:
  /// **'Enable biometric to unlock your app instantly and keep your account secure.'**
  String get security_biometric_prompt_body;

  /// Primary button on the biometric setup prompt page.
  ///
  /// In en, this message translates to:
  /// **'Enable biometric'**
  String get security_biometric_action_enable;

  /// Toast when the biometric check did not succeed.
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication failed'**
  String get security_error_biometric_failed;

  /// Toast when the biometric check threw. {error} is an untranslated technical message.
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication failed: {error}'**
  String security_error_biometric_failed_detail(String error);

  /// Inline error under the PIN dots when the entered PIN is wrong.
  ///
  /// In en, this message translates to:
  /// **'Incorrect PIN'**
  String get security_error_incorrect_pin;

  /// Inline error under the PIN dots when unlocking failed for a reason other than a wrong PIN.
  ///
  /// In en, this message translates to:
  /// **'Authentication error'**
  String get security_error_auth;

  /// Title of the lock screen.
  ///
  /// In en, this message translates to:
  /// **'Unlock app'**
  String get security_lock_title;

  /// Body of the lock screen. The line break is deliberate.
  ///
  /// In en, this message translates to:
  /// **'Your Bringin account is secure, enter your\nPIN to unlock.'**
  String get security_lock_body;

  /// Text link on the lock screen that starts the PIN reset flow.
  ///
  /// In en, this message translates to:
  /// **'Forgot PIN?'**
  String get security_action_forgot_pin;

  /// Toast when the PIN reset cannot start because the session is no longer valid.
  ///
  /// In en, this message translates to:
  /// **'Unable to reset PIN. Please log in again.'**
  String get security_error_reset_pin_relogin;

  /// Toast when the PIN-reset verification code could not be sent.
  ///
  /// In en, this message translates to:
  /// **'Failed to send code. Try again.'**
  String get security_error_send_code;

  /// Inline error when the confirmation PIN differs from the first entry.
  ///
  /// In en, this message translates to:
  /// **'PINs do not match. Try again.'**
  String get security_error_pins_mismatch;

  /// Toast when saving the new PIN failed.
  ///
  /// In en, this message translates to:
  /// **'Failed to save PIN. Try again.'**
  String get security_error_save_pin;

  /// Title of the PIN setup page shown during onboarding.
  ///
  /// In en, this message translates to:
  /// **'Setup a PIN for your app'**
  String get security_setup_pin_title;

  /// Body of the PIN setup page.
  ///
  /// In en, this message translates to:
  /// **'Set a 6-digit PIN to unlock your app. This PIN can also secure your self-custodial wallet if you choose to use one later.'**
  String get security_setup_pin_body;

  /// App-bar title and primary button of the change-PIN page.
  ///
  /// In en, this message translates to:
  /// **'Change PIN'**
  String get security_change_pin_title;

  /// Heading of the first step of the change-PIN page.
  ///
  /// In en, this message translates to:
  /// **'Enter your current PIN'**
  String get security_change_pin_current_title;

  /// Heading of the second step of the change-PIN page, and of the reset-PIN page.
  ///
  /// In en, this message translates to:
  /// **'Setup a new PIN for your app'**
  String get security_change_pin_new_title;

  /// App-bar title and primary button of the reset-PIN pages.
  ///
  /// In en, this message translates to:
  /// **'Reset PIN'**
  String get security_reset_pin_title;

  /// Heading of the page that verifies a code before the PIN can be reset.
  ///
  /// In en, this message translates to:
  /// **'Verify your identity'**
  String get security_reset_pin_verify_title;

  /// Toast after the PIN was changed from the security settings.
  ///
  /// In en, this message translates to:
  /// **'PIN set successfully.'**
  String get security_pin_set_success;

  /// Section header in the security settings.
  ///
  /// In en, this message translates to:
  /// **'Two-factor authentication'**
  String get security_section_2fa;

  /// Subtitle of the change-PIN row in the security settings.
  ///
  /// In en, this message translates to:
  /// **'Change your 6-digit PIN used to unlock the app.'**
  String get security_row_change_pin_subtitle;

  /// Title of the biometric-unlock row in the security settings.
  ///
  /// In en, this message translates to:
  /// **'Biometric'**
  String get security_row_biometric_title;

  /// Subtitle of the biometric-unlock row in the security settings.
  ///
  /// In en, this message translates to:
  /// **'Use your device\'s biometric authentication for faster, secure access.'**
  String get security_row_biometric_subtitle;

  /// Subtitle of the passkey row in the security settings.
  ///
  /// In en, this message translates to:
  /// **'Setup passkey as your authentication method.'**
  String get security_row_passkey_subtitle;

  /// Subtitle of the authenticator-app row in the security settings.
  ///
  /// In en, this message translates to:
  /// **'Use your authenticator app to set up two-factor authentication.'**
  String get security_row_totp_subtitle;

  /// Toast when removing a passkey but the account has none enrolled.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t find your existing passkey.'**
  String get security_error_passkey_not_found;

  /// Toast after the passkey was removed from the account.
  ///
  /// In en, this message translates to:
  /// **'Passkey removed.'**
  String get security_passkey_removed;

  /// First part of a prompt that then names the phone number and/or the email address the code went to. Keep the line break.
  ///
  /// In en, this message translates to:
  /// **'Add the verification code sent to your:\n'**
  String get verify_prompt_prefix_multi;

  /// Joins the phone number and the email address in the prompt that starts with verify_prompt_prefix_multi. Keep the leading space and the line break.
  ///
  /// In en, this message translates to:
  /// **' or\n'**
  String get verify_prompt_or;

  /// Labels the email address in the prompt that starts with verify_prompt_prefix_multi. Keep the trailing space.
  ///
  /// In en, this message translates to:
  /// **'email address '**
  String get verify_prompt_target_email;

  /// Inline error when a resend found the challenge already expired, so a fresh code is on its way.
  ///
  /// In en, this message translates to:
  /// **'That code expired. We’re sending a new one.'**
  String get sca_error_code_expired_resending;

  /// Inline error under the OTP boxes when the code expired; 'Send again' is the resend link's label.
  ///
  /// In en, this message translates to:
  /// **'Verification code expired. Tap Send again.'**
  String get sca_error_code_expired_send_again;

  /// Inline error under the OTP boxes of the auto-swap sheet when the code expired.
  ///
  /// In en, this message translates to:
  /// **'Verification code expired. Try again.'**
  String get sca_error_code_expired_try_again;

  /// Toast when the backend sent a passkey challenge with no WebAuthn payload, so the ceremony cannot start.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t start passkey verification. Try again.'**
  String get sca_error_passkey_start;

  /// Inline error when the passkey assertion was rejected.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t verify with passkey. Try again or use another way.'**
  String get sca_error_passkey_verify;

  /// Toast when switching to a different verification method failed.
  ///
  /// In en, this message translates to:
  /// **'Could not switch method. Please try again.'**
  String get sca_error_switch_method;

  /// Subtitle of the verification sheet when the factor is SMS.
  ///
  /// In en, this message translates to:
  /// **'Enter the code we sent to your phone.'**
  String get sca_sms_prompt;

  /// Heading of the verification sheet when the factor is passkey. {title} is the caller-supplied base heading, e.g. 'Verify to trust this account'.
  ///
  /// In en, this message translates to:
  /// **'{title} with your passkey'**
  String sca_title_with_passkey(String title);

  /// Heading of the verification step when enabling auto-swap as part of funding from the Bitcoin wallet.
  ///
  /// In en, this message translates to:
  /// **'Verify to fund with Bitcoin'**
  String get sca_title_fund_bitcoin;

  /// Heading of the verification sheet that enables auto-swap.
  ///
  /// In en, this message translates to:
  /// **'Verify to enable auto-swap'**
  String get sca_title_enable_auto_swap;

  /// Heading of the verification step that adds a beneficiary to the trusted list.
  ///
  /// In en, this message translates to:
  /// **'Verify to trust this account'**
  String get sca_title_trust_account;

  /// Primary button of the beneficiary-trust passkey ceremony.
  ///
  /// In en, this message translates to:
  /// **'Verify and trust'**
  String get sca_action_verify_and_trust;

  /// App-bar title of the add-beneficiary flow.
  ///
  /// In en, this message translates to:
  /// **'Add a beneficiary'**
  String get add_beneficiary_title;

  /// Title of the sheet shown after a passkey was successfully created.
  ///
  /// In en, this message translates to:
  /// **'Passkey enabled'**
  String get passkey_enabled_title;

  /// Body of the passkey-enabled sheet.
  ///
  /// In en, this message translates to:
  /// **'You can now use your device to verify sign-ins and sensitive actions.'**
  String get passkey_enabled_body;

  /// Title of the sheet shown when passkey creation failed because the app installation could not be verified.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t set up your passkey'**
  String get passkey_unsupported_title;

  /// Body of the passkey-unsupported sheet when the account already has an authenticator app enrolled, so the user can fall back to one they have.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t verify this app installation with our server. This is usually temporary — try again in a few minutes, or use an authenticator app instead.'**
  String get passkey_unsupported_body_has_fallback;

  /// Body of the passkey-unsupported sheet when the account has no authenticator app yet, so the user would have to set one up.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t verify this app installation with our server. This is usually temporary — try again in a few minutes, or set up an authenticator app instead.'**
  String get passkey_unsupported_body_no_fallback;

  /// Title of the passkey setup sheet.
  ///
  /// In en, this message translates to:
  /// **'Create a passkey'**
  String get passkey_setup_title;

  /// Body of the passkey setup sheet. Face ID and Touch ID are Apple product names.
  ///
  /// In en, this message translates to:
  /// **'Use Face ID, Touch ID, fingerprint, or device PIN to secure your account.'**
  String get passkey_setup_body;

  /// Secondary action on the passkey setup sheet, which opens the other verification methods.
  ///
  /// In en, this message translates to:
  /// **'Try another way'**
  String get passkey_setup_action_another_way;

  /// Primary button on the passkey setup sheet.
  ///
  /// In en, this message translates to:
  /// **'Setup passkey'**
  String get passkey_setup_action_primary;

  /// Error when the authenticator-app enrolment could not be started.
  ///
  /// In en, this message translates to:
  /// **'We couldn\'t start the setup. Please try again.'**
  String get totp_error_start_setup;

  /// App-bar title of the authenticator-app setup and verify pages.
  ///
  /// In en, this message translates to:
  /// **'Authenticator app setup'**
  String get totp_setup_appbar_title;

  /// Heading of the QR-code step of authenticator-app setup.
  ///
  /// In en, this message translates to:
  /// **'Connect your authenticator app'**
  String get totp_setup_title;

  /// Body of the QR-code step. Google Authenticator and Microsoft Authenticator are product names.
  ///
  /// In en, this message translates to:
  /// **'Scan this QR code with Google Authenticator, Microsoft Authenticator, or another compatible app.'**
  String get totp_setup_body;

  /// Action that copies the enrolment secret for users who cannot scan the QR code.
  ///
  /// In en, this message translates to:
  /// **'Copy setup key'**
  String get totp_setup_action_copy_key;

  /// Primary button on the QR-code step, tapped once the user has added the account to their authenticator.
  ///
  /// In en, this message translates to:
  /// **'I\'ve added the account'**
  String get totp_setup_action_added;

  /// Heading shown when the account already has an authenticator that cannot be replaced from the app.
  ///
  /// In en, this message translates to:
  /// **'An authenticator is already registered'**
  String get totp_locked_title;

  /// Body of the already-registered state.
  ///
  /// In en, this message translates to:
  /// **'It has to be reset before a new one can be added — contact support and we will do it for you.'**
  String get totp_locked_body;

  /// Title of the sheet shown after authenticator sign-in was turned on.
  ///
  /// In en, this message translates to:
  /// **'Authenticator enabled'**
  String get totp_enabled_title;

  /// Body of the authenticator-enabled sheet.
  ///
  /// In en, this message translates to:
  /// **'You\'ll use verification codes when signing in or approving sensitive actions.'**
  String get totp_enabled_body;

  /// App-bar title of the recovery-codes page.
  ///
  /// In en, this message translates to:
  /// **'Save your recovery codes'**
  String get totp_recovery_appbar_title;

  /// Heading of the recovery-codes page.
  ///
  /// In en, this message translates to:
  /// **'Save these now'**
  String get totp_recovery_title;

  /// Body of the recovery-codes page.
  ///
  /// In en, this message translates to:
  /// **'This is the only time we\'ll show these codes. If you lose access to your authenticator app, you\'ll need these to sign back in. Save them somewhere safe.'**
  String get totp_recovery_body;

  /// Action that copies every recovery code to the clipboard.
  ///
  /// In en, this message translates to:
  /// **'Copy all'**
  String get totp_recovery_action_copy_all;

  /// Action that opens the system share sheet with the recovery codes.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get totp_recovery_action_share;

  /// Subject line of the system share sheet for the recovery codes.
  ///
  /// In en, this message translates to:
  /// **'Bringin recovery codes'**
  String get totp_recovery_share_subject;

  /// Checkbox the user must tick before leaving the recovery-codes page.
  ///
  /// In en, this message translates to:
  /// **'I\'ve saved my recovery codes somewhere safe.'**
  String get totp_recovery_confirm_checkbox;

  /// Heading of the page that verifies a code from the authenticator app.
  ///
  /// In en, this message translates to:
  /// **'Enter verification code'**
  String get totp_verify_title;

  /// Body of the authenticator verify page.
  ///
  /// In en, this message translates to:
  /// **'Enter the 6-digit code from your authenticator app.'**
  String get totp_verify_body;

  /// Warning inside the confirmation sheet, before the user commits. There is no server-side disable route for authenticator sign-in today, so this promise must stay accurate — see totp_cannot_be_removed_note.
  ///
  /// In en, this message translates to:
  /// **'Turning this on can\'t be undone from the app.'**
  String get totp_cannot_be_undone;

  /// Note on the security-settings row afterwards, explaining why the toggle is disabled. Pairs with totp_cannot_be_undone.
  ///
  /// In en, this message translates to:
  /// **'You can\'t turn this off from the app once it\'s on.'**
  String get totp_cannot_be_removed_note;

  /// Title of the confirmation sheet.
  ///
  /// In en, this message translates to:
  /// **'Turn on authenticator sign-in'**
  String get totp_confirm_title;

  /// Primary button of the confirmation sheet.
  ///
  /// In en, this message translates to:
  /// **'Turn it on'**
  String get totp_confirm_action_primary;

  /// Confirmation-sheet line for a user who already has a passkey. The server resolves factors passkey > totp > sms, so turning the authenticator on changes nothing about how they confirm payments.
  ///
  /// In en, this message translates to:
  /// **'Your passkey still confirms payments and sign-ins. The authenticator sits behind it as a second option.'**
  String get totp_confirm_factor_change_has_passkey;

  /// Confirmation-sheet line for a user with no passkey, whose confirmations move from SMS to the authenticator.
  ///
  /// In en, this message translates to:
  /// **'You\'ll confirm payments and sign-ins with a code from your authenticator instead of a text message.'**
  String get totp_confirm_factor_change_no_passkey;

  /// Confirmation-sheet line when adopting an authenticator the account already has. Recovery codes need the enrolment secret, which cannot exist for a credential we did not mint.
  ///
  /// In en, this message translates to:
  /// **'There are no recovery codes on this route — if you lose the authenticator, contact support to get back in.'**
  String get totp_confirm_recovery_adopt;

  /// Confirmation-sheet line when creating a new authenticator enrolment.
  ///
  /// In en, this message translates to:
  /// **'We\'ll show you recovery codes once you\'re done. Save them somewhere safe.'**
  String get totp_confirm_recovery_create;

  /// Heading of the entry screen when the account already has an authenticator registered.
  ///
  /// In en, this message translates to:
  /// **'Use the authenticator you already have'**
  String get totp_adopt_title;

  /// Body of the adopt entry screen.
  ///
  /// In en, this message translates to:
  /// **'This account already has an authenticator registered, so there\'s nothing new to scan. Enter a code from it and we\'ll turn it on.'**
  String get totp_adopt_subtitle;

  /// Primary button of the adopt entry screen.
  ///
  /// In en, this message translates to:
  /// **'Enter a code'**
  String get totp_adopt_action;

  /// Toast after adopting an existing authenticator.
  ///
  /// In en, this message translates to:
  /// **'Authenticator sign-in is on'**
  String get totp_adopt_success_toast;

  /// Toast when the account turns out to be enrolled already. Nothing failed, so it must not read as an error.
  ///
  /// In en, this message translates to:
  /// **'That\'s already on for this account'**
  String get totp_already_on_toast;

  /// Subtitle on the shared failure screen every send flow falls back to.
  ///
  /// In en, this message translates to:
  /// **'Transaction failed!'**
  String get tx_failure_subtitle;

  /// Detail-row label on the failure screen: why the transaction failed.
  ///
  /// In en, this message translates to:
  /// **'Reason'**
  String get tx_detail_label_reason;

  /// Detail-row label: when the transaction was attempted.
  ///
  /// In en, this message translates to:
  /// **'Date & time'**
  String get tx_detail_label_datetime;

  /// Detail-row label on a failed swap: the amount that was going to be sent.
  ///
  /// In en, this message translates to:
  /// **'Attempted'**
  String get tx_detail_label_attempted;

  /// Status line on the shared processing screen when money is being added to a balance.
  ///
  /// In en, this message translates to:
  /// **'Adding money...'**
  String get tx_processing_adding;

  /// Title of the shared layout for transactions that settle slowly, such as on-chain sends.
  ///
  /// In en, this message translates to:
  /// **'Transaction is processing...'**
  String get tx_processing_title;

  /// Detail-row value: the money came out of the card balance.
  ///
  /// In en, this message translates to:
  /// **'From card balance'**
  String get tx_detail_from_card_balance;

  /// Detail-row value: the money went into the card balance.
  ///
  /// In en, this message translates to:
  /// **'Funded card balance'**
  String get tx_detail_funded_card_balance;

  /// Detail-row value on a send whose source was the card balance.
  ///
  /// In en, this message translates to:
  /// **'Sent from card balance'**
  String get tx_detail_sent_from_card_balance;

  /// Headline of the success screen when the caller supplies no amount to show.
  ///
  /// In en, this message translates to:
  /// **'Success!'**
  String get tx_success_generic_title;

  /// Subtitle of the generic success screen.
  ///
  /// In en, this message translates to:
  /// **'Transaction completed.'**
  String get tx_success_generic_subtitle;

  /// Value of the exchange-rate row on the success screen. {rate} is a pre-formatted BTC amount; the sentence says what one euro bought.
  ///
  /// In en, this message translates to:
  /// **'€1 at ฿ {rate}'**
  String tx_exchange_rate_value(String rate);

  /// Title of the rating card on a success screen with no specific transaction attached.
  ///
  /// In en, this message translates to:
  /// **'Rate your experience'**
  String get tx_rating_title;

  /// Title of the rating card on a success screen for a specific transaction.
  ///
  /// In en, this message translates to:
  /// **'Rate this transaction'**
  String get tx_rating_prompt;

  /// Subtitle of the rating card.
  ///
  /// In en, this message translates to:
  /// **'Your feedback helps us improve.'**
  String get tx_rating_body;

  /// Notice on the euro-deposit screen.
  ///
  /// In en, this message translates to:
  /// **'Deposit from a bank account in your name. We do not support third party payments.'**
  String get deposit_bank_notice;

  /// Empty state when the backend returns no bank details to deposit into.
  ///
  /// In en, this message translates to:
  /// **'No deposit details available'**
  String get deposit_no_details;

  /// Section heading above the IBAN/BIC rows the user copies into their bank.
  ///
  /// In en, this message translates to:
  /// **'Copy your bank details'**
  String get deposit_copy_bank_details;

  /// Detail-row label on the euro-deposit screen.
  ///
  /// In en, this message translates to:
  /// **'Account holder name'**
  String get deposit_label_account_holder;

  /// Detail-row label on the euro-deposit screen.
  ///
  /// In en, this message translates to:
  /// **'Bank name'**
  String get deposit_label_bank_name;

  /// Detail-row label on the euro-deposit screen. The address itself is a postal address and is not translated.
  ///
  /// In en, this message translates to:
  /// **'Bank address'**
  String get deposit_label_bank_address;

  /// Detail-row label on the euro-deposit screen.
  ///
  /// In en, this message translates to:
  /// **'Account number'**
  String get deposit_label_account_number;

  /// Heading of the open-banking entry section on the euro-deposit screen.
  ///
  /// In en, this message translates to:
  /// **'Connect your bank account'**
  String get deposit_connect_bank_title;

  /// Shown when the bank-details lookup fails. {error} is an untranslated technical message.
  ///
  /// In en, this message translates to:
  /// **'Failed to fetch deposit details: {error}'**
  String deposit_error_fetch_details(String error);

  /// Status line after the user completed the source-of-funds declaration for a held deposit.
  ///
  /// In en, this message translates to:
  /// **'Thanks — we\'re releasing your deposit. This can take a few minutes.'**
  String get deposit_releasing;

  /// Body of the action-needed banner on a deposit held for a Travel Rule declaration.
  ///
  /// In en, this message translates to:
  /// **'Confirm where this Bitcoin came from to release your deposit. Tap to continue.'**
  String get deposit_action_needed_body;

  /// Shown in place of the QR code when the deposit address could not be fetched.
  ///
  /// In en, this message translates to:
  /// **'Failed to load address. Tap to retry.'**
  String get deposit_error_load_address;

  /// Limits note on the on-chain deposit tab. {min} and {max} are pre-formatted euro amounts.
  ///
  /// In en, this message translates to:
  /// **'Minimum €{min}. Maximum €{max} per transaction. Manage limits in your profile. We charge 1% fee on the transaction.'**
  String deposit_limits_manage_profile(String min, String max);

  /// Validation error on the open-banking amount field.
  ///
  /// In en, this message translates to:
  /// **'Max 2 decimal places'**
  String get open_banking_error_decimals;

  /// Validation error on the open-banking reference field.
  ///
  /// In en, this message translates to:
  /// **'Reference can\'t be empty'**
  String get open_banking_error_reference_empty;

  /// Validation error on the open-banking label field.
  ///
  /// In en, this message translates to:
  /// **'Label must be within 3-15 characters'**
  String get open_banking_error_label_length;

  /// Shown when starting the open-banking session fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to initiate open banking'**
  String get open_banking_error_initiate;

  /// App-bar title of the open-banking screen.
  ///
  /// In en, this message translates to:
  /// **'Connect your bank'**
  String get open_banking_title;

  /// Heading of the open-banking form.
  ///
  /// In en, this message translates to:
  /// **'Enter details for connecting your bank'**
  String get open_banking_subtitle;

  /// Label of the amount field on the open-banking form.
  ///
  /// In en, this message translates to:
  /// **'Enter amount in Euro'**
  String get open_banking_field_amount;

  /// Banner offering the user a chance to declare the source wallet before the deposit is held.
  ///
  /// In en, this message translates to:
  /// **'Verify your source wallet to release this deposit.'**
  String get declaration_banner_verify_wallet;

  /// Body of the proactive-declaration banner.
  ///
  /// In en, this message translates to:
  /// **'Confirm where this Bitcoin came from to skip the compliance hold.'**
  String get declaration_banner_skip_hold;

  /// Label of the BIC field on the add/edit-beneficiary form. BIC stays untranslated.
  ///
  /// In en, this message translates to:
  /// **'Add the BIC'**
  String get beneficiary_field_bic;

  /// Validation error on the BIC field.
  ///
  /// In en, this message translates to:
  /// **'BIC can\'t be empty'**
  String get beneficiary_error_bic_empty;

  /// Validation error when the BIC fails its format check.
  ///
  /// In en, this message translates to:
  /// **'This BIC is not valid'**
  String get beneficiary_error_bic_invalid;

  /// Label of the IBAN field on the add/edit-beneficiary form. IBAN stays untranslated.
  ///
  /// In en, this message translates to:
  /// **'Add IBAN'**
  String get beneficiary_field_iban;

  /// Validation error on the IBAN field.
  ///
  /// In en, this message translates to:
  /// **'IBAN can\'t be empty'**
  String get beneficiary_error_iban_empty;

  /// Validation error when the IBAN fails its checksum.
  ///
  /// In en, this message translates to:
  /// **'This IBAN is not valid'**
  String get beneficiary_error_iban_invalid;

  /// Label of the nickname field on the add/edit-beneficiary form.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary label'**
  String get beneficiary_field_label;

  /// Hint text of the beneficiary label field.
  ///
  /// In en, this message translates to:
  /// **'Add a label for this bank'**
  String get beneficiary_field_label_hint;

  /// Validation error on the beneficiary label field.
  ///
  /// In en, this message translates to:
  /// **'Label can\'t be empty'**
  String get beneficiary_error_label_empty;

  /// Validation error when the beneficiary label fails its format check.
  ///
  /// In en, this message translates to:
  /// **'This label is not valid'**
  String get beneficiary_error_label_invalid;

  /// Primary button on the add-beneficiary form.
  ///
  /// In en, this message translates to:
  /// **'Add beneficiary'**
  String get beneficiary_action_add;

  /// Title of the sheet shown when the entered IBAN is already a saved beneficiary.
  ///
  /// In en, this message translates to:
  /// **'IBAN already saved'**
  String get beneficiary_iban_exists_title;

  /// Body of the IBAN-already-saved sheet. {name} is the existing beneficiary's label.
  ///
  /// In en, this message translates to:
  /// **'This IBAN is already saved as \"{name}\". Edit that beneficiary if you\'d like to rename it.'**
  String beneficiary_iban_exists_body(String name);

  /// Title of the delete-beneficiary confirmation dialog.
  ///
  /// In en, this message translates to:
  /// **'Delete beneficiary'**
  String get beneficiary_delete_title;

  /// Body of the delete-beneficiary confirmation dialog.
  ///
  /// In en, this message translates to:
  /// **'Delete this beneficiary? You can add them again later.'**
  String get beneficiary_delete_body;

  /// Toast after a beneficiary was deleted.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary removed'**
  String get beneficiary_removed_toast;

  /// Toast after a beneficiary's details were saved.
  ///
  /// In en, this message translates to:
  /// **'Beneficiary updated'**
  String get beneficiary_updated_toast;

  /// Heading of the edit-beneficiary page.
  ///
  /// In en, this message translates to:
  /// **'Edit beneficiary details'**
  String get beneficiary_edit_title;

  /// Notice at the top of the send-euros flow.
  ///
  /// In en, this message translates to:
  /// **'Send to a bank account in your name. We do not support third party payments.'**
  String get send_euros_notice;

  /// Heading of the recipient step of the send-euros flow.
  ///
  /// In en, this message translates to:
  /// **'Select or add a beneficiary'**
  String get send_euros_select_beneficiary;

  /// Shown when the beneficiary list could not be fetched.
  ///
  /// In en, this message translates to:
  /// **'Failed to load beneficiaries'**
  String get send_euros_error_load_beneficiaries;

  /// Empty state of the beneficiary list.
  ///
  /// In en, this message translates to:
  /// **'No beneficiaries added yet.'**
  String get send_euros_empty_beneficiaries;

  /// Validation error on the reference field of the send-euros flow.
  ///
  /// In en, this message translates to:
  /// **'Label must be within 5-15 characters'**
  String get send_euros_error_label_length;

  /// Validation error when the send-euros reference contains punctuation the bank rail rejects.
  ///
  /// In en, this message translates to:
  /// **'Label must contain only alphanumeric characters'**
  String get send_euros_error_label_alphanumeric;

  /// Label of the amount the user is debited in the send-euros summary.
  ///
  /// In en, this message translates to:
  /// **'You send'**
  String get send_euros_label_you_send;

  /// Heading of the verification step of the send-euros flow.
  ///
  /// In en, this message translates to:
  /// **'Verify Euro transfer'**
  String get send_euros_verify_title;

  /// Primary button of the send-euros passkey ceremony.
  ///
  /// In en, this message translates to:
  /// **'Verify and send'**
  String get send_euros_action_verify_and_send;

  /// Heading shown when the euro transfer failed.
  ///
  /// In en, this message translates to:
  /// **'Transaction failed'**
  String get send_euros_failure_title;

  /// Validation error when the amount is under the minimum. {amount} is a pre-formatted euro amount.
  ///
  /// In en, this message translates to:
  /// **'Minimum withdrawal amount is {amount}'**
  String send_euros_error_min_amount(String amount);

  /// Alert when the amount is over the user's KYC transfer limit. {limit} is a pre-formatted number.
  ///
  /// In en, this message translates to:
  /// **'You seem to exceed the transfer limits of €{limit}. Expand the limits in Profile.'**
  String send_euros_error_exceeds_limits(String limit);

  /// Error when the backend returned no body at all.
  ///
  /// In en, this message translates to:
  /// **'Server returned an empty response. Please try again.'**
  String get api_error_empty_response;

  /// Error when the backend response is missing a field the app needs.
  ///
  /// In en, this message translates to:
  /// **'Server response is missing required information. Please try again.'**
  String get api_error_missing_fields;

  /// Error when the backend response could not be parsed.
  ///
  /// In en, this message translates to:
  /// **'Failed to process server response. Please try again.'**
  String get api_error_process_response;

  /// Error when the backend rate-limits the client.
  ///
  /// In en, this message translates to:
  /// **'Too many requests. Please try again after some time.'**
  String get api_error_rate_limited;

  /// Client-side validation before the phone-verification request is sent.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid phone number'**
  String get api_error_phone_invalid;

  /// Error when the password-reset endpoint refuses further attempts today.
  ///
  /// In en, this message translates to:
  /// **'You\'ve hit the daily limit for password-reset attempts. Please try again later.'**
  String get api_error_password_reset_daily_limit;

  /// Error when starting an SCA challenge fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to start the verification step. Please try again.'**
  String get api_error_verify_start;

  /// Error when confirming an SCA challenge fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to complete verification. Please try again.'**
  String get api_error_verify_complete;

  /// Error when submitting a verification code fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to confirm verification code. Please try again.'**
  String get api_error_confirm_code;

  /// Error when the SCA challenge expired before it was confirmed.
  ///
  /// In en, this message translates to:
  /// **'That approval expired. Start again below.'**
  String get api_error_approval_expired;

  /// Error when the resend-code request fails.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t send a new code. Try again.'**
  String get api_error_send_new_code;

  /// Error when authenticator enrolment cannot be started.
  ///
  /// In en, this message translates to:
  /// **'Unable to start authenticator setup. Please try again later.'**
  String get api_error_totp_start;

  /// Error when authenticator enrolment cannot be completed.
  ///
  /// In en, this message translates to:
  /// **'Unable to finish authenticator setup. Please try again later.'**
  String get api_error_totp_finish;

  /// Error when the account already holds an authenticator that cannot be replaced from the app.
  ///
  /// In en, this message translates to:
  /// **'This account already has an authenticator registered. It has to be reset before a new one can be added.'**
  String get api_error_totp_already_registered;

  /// Error when passkey registration cannot be started.
  ///
  /// In en, this message translates to:
  /// **'Unable to start passkey setup. Please try again later.'**
  String get api_error_passkey_start;

  /// Error when passkey registration cannot be completed.
  ///
  /// In en, this message translates to:
  /// **'Unable to finish passkey setup. Please try again later.'**
  String get api_error_passkey_finish;

  /// Error when the enrolled-passkey list cannot be fetched.
  ///
  /// In en, this message translates to:
  /// **'Unable to load your passkeys. Please try again later.'**
  String get api_error_passkey_list;

  /// Error when removing a passkey fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to remove passkey. Please try again later.'**
  String get api_error_passkey_remove;

  /// Error when an exchange order cannot be created.
  ///
  /// In en, this message translates to:
  /// **'Unable to create off-ramp or on-ramp order. Please try again later.'**
  String get api_error_create_order;

  /// Error when superseding an order fails.
  ///
  /// In en, this message translates to:
  /// **'Couldn\'t cancel the previous order. Try again.'**
  String get api_error_cancel_order;

  /// Error when confirming an exchange swap fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to confirm the swap at this time. Please try again later.'**
  String get api_error_confirm_swap;

  /// Error when the order-status lookup fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to fetch order status. Please try again.'**
  String get api_error_order_status;

  /// Error when the payout address for a sell cannot be fetched.
  ///
  /// In en, this message translates to:
  /// **'Unable to get offramp address. Please try again.'**
  String get api_error_offramp_address;

  /// Error when a pending withdrawal cannot be resumed.
  ///
  /// In en, this message translates to:
  /// **'Unable to resume the withdrawal at this time.'**
  String get api_error_resume_withdrawal;

  /// Error when confirming a beneficiary as trusted fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to confirm trust. Please try again later.'**
  String get api_error_confirm_trust;

  /// Error when the Pro subscription payment cannot be started.
  ///
  /// In en, this message translates to:
  /// **'Unable to start the subscription payment at this time. Please try again later.'**
  String get api_error_subscription_start;

  /// Error when the card's on-chain deposit address cannot be fetched.
  ///
  /// In en, this message translates to:
  /// **'Unable to get card deposit address. Please try again.'**
  String get api_error_card_deposit_address;

  /// Error when the card's Lightning address cannot be fetched.
  ///
  /// In en, this message translates to:
  /// **'Unable to get card Lightning address. Please try again.'**
  String get api_error_card_ln_address;

  /// Error when a Lightning send from the card balance cannot be started.
  ///
  /// In en, this message translates to:
  /// **'Unable to start Lightning send. Please try again.'**
  String get api_error_card_ln_send_start;

  /// Error when the supplied BOLT11 invoice is rejected.
  ///
  /// In en, this message translates to:
  /// **'Invalid Lightning invoice. Please check the recipient and try again.'**
  String get api_error_card_invalid_invoice;

  /// Error when selling from the card balance fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to sell from card balance. Please try again.'**
  String get api_error_card_sell;

  /// Error when setting the card PIN fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to set the card PIN at this time. Please try again later.'**
  String get api_error_card_set_pin;

  /// Error when reporting a card lost or stolen fails.
  ///
  /// In en, this message translates to:
  /// **'Unable to report the card as missing at this time. Please try again later.'**
  String get api_error_card_report_missing;

  /// Error when the chosen connection name is already taken.
  ///
  /// In en, this message translates to:
  /// **'A connection with this name exists.'**
  String get api_error_connection_name_exists;

  /// Error when linking a Breez wallet that is already linked.
  ///
  /// In en, this message translates to:
  /// **'A Breez wallet is already linked. Use rotate to change it.'**
  String get api_error_breez_already_linked;

  /// Error when an operation needs a linked Breez wallet and none exists.
  ///
  /// In en, this message translates to:
  /// **'No Breez wallet linked yet.'**
  String get api_error_breez_not_linked;

  /// Error when the supplied Breez relay address does not parse.
  ///
  /// In en, this message translates to:
  /// **'Invalid Breez relay address format.'**
  String get api_error_breez_relay_format;

  /// Error when the entered Lightning address is not user@domain.
  ///
  /// In en, this message translates to:
  /// **'Invalid lightning address format'**
  String get lnurl_error_address_format;

  /// Error when the entered value is neither a Lightning address nor an LNURL.
  ///
  /// In en, this message translates to:
  /// **'Invalid LNURL: expected user@domain or lnurl...'**
  String get lnurl_error_input_format;

  /// Error when the LNURL service returned no invoice.
  ///
  /// In en, this message translates to:
  /// **'Received empty payment request'**
  String get lnurl_error_empty_payment_request;

  /// Error when the Liquid wallet SDK cannot start.
  ///
  /// In en, this message translates to:
  /// **'Liquid SDK initialization failed. Please restart the app.'**
  String get wallet_error_liquid_init;

  /// Error when the Liquid wallet SDK fails during use.
  ///
  /// In en, this message translates to:
  /// **'Liquid SDK error. Please restart the app.'**
  String get wallet_error_liquid_generic;

  /// Error when the Spark wallet did not finish syncing in time.
  ///
  /// In en, this message translates to:
  /// **'Spark sync timed out'**
  String get wallet_error_spark_sync_timeout;

  /// Error when the recovery phrase could not be restored from storage.
  ///
  /// In en, this message translates to:
  /// **'Failed to restore mnemonics.'**
  String get wallet_error_restore_mnemonics;

  /// Shown when a wallet migration is started on an empty wallet.
  ///
  /// In en, this message translates to:
  /// **'No funds to migrate'**
  String get wallet_migration_no_funds;

  /// Shown when the migration payment did not settle in time.
  ///
  /// In en, this message translates to:
  /// **'Migration timed out. Please check payment status.'**
  String get wallet_migration_timeout;

  /// Shown when the user cancelled the wallet migration.
  ///
  /// In en, this message translates to:
  /// **'Migration cancelled'**
  String get wallet_migration_cancelled;

  /// Shown when the migration payment came back as refunded.
  ///
  /// In en, this message translates to:
  /// **'Payment was refunded'**
  String get wallet_migration_payment_refunded;

  /// Shown when the migration payment is waiting for the user to accept a fee.
  ///
  /// In en, this message translates to:
  /// **'Payment requires fee acceptance'**
  String get wallet_migration_payment_needs_fee;

  /// Error when the connected wallet's spending budget cannot cover the payment.
  ///
  /// In en, this message translates to:
  /// **'Insufficient budget for this transaction'**
  String get wallet_error_insufficient_budget;

  /// Shown when the stored PIN has vanished, so PIN lock turns itself off.
  ///
  /// In en, this message translates to:
  /// **'PIN not found in secure storage. Disabling PIN.'**
  String get security_error_pin_not_found;

  /// Error when the app version lookup fails.
  ///
  /// In en, this message translates to:
  /// **'Failed to get app version'**
  String get app_error_get_version;

  /// Error when the device could not begin advertising over Bluetooth.
  ///
  /// In en, this message translates to:
  /// **'Failed to start Bluetooth broadcasting'**
  String get nearby_error_broadcast_start;

  /// Error when the device could not begin scanning over Bluetooth.
  ///
  /// In en, this message translates to:
  /// **'Failed to start Bluetooth scanning'**
  String get nearby_error_scan_start;

  /// Error on Android versions that gate Bluetooth scanning behind Location as well.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth and Location permission are required on this Android version to discover nearby users. Go to Settings → Bringin to enable them.'**
  String get nearby_error_permission_android_both;

  /// Error when the user denied the Bluetooth permission.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth permission was denied. Go to Settings → Bringin to enable it.'**
  String get nearby_error_permission_denied;

  /// Error when the user denied the Bluetooth permission on a platform whose settings nest it under a Bluetooth entry.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth permission was denied. Go to Settings → Bringin → Bluetooth to enable it.'**
  String get nearby_error_permission_denied_bluetooth;

  /// Title of the shared error sheet when the severity is error.
  ///
  /// In en, this message translates to:
  /// **'Oops!'**
  String get error_modal_title_error;

  /// Title of the shared error sheet when the severity is warning.
  ///
  /// In en, this message translates to:
  /// **'Heads up'**
  String get error_modal_title_warning;

  /// Title of the shared error sheet when the severity is informational.
  ///
  /// In en, this message translates to:
  /// **'Just so you know'**
  String get error_modal_title_info;

  /// Label of the copy affordance on a copyable detail row.
  ///
  /// In en, this message translates to:
  /// **'Copy'**
  String get action_copy;

  /// Note under an amount field showing how much of the monthly KYC limit is left. {limit} is a pre-formatted number.
  ///
  /// In en, this message translates to:
  /// **'Your available transfer limit for this month is €{limit}'**
  String kyc_limit_note(String limit);

  /// Prompt above the resend link in the shared OTP modal.
  ///
  /// In en, this message translates to:
  /// **'Did not receive a verification code?'**
  String get otp_modal_no_code;

  /// Resend link in the shared OTP modal. Upper case in the design.
  ///
  /// In en, this message translates to:
  /// **'SEND AGAIN'**
  String get otp_modal_action_resend;

  /// Countdown shown while the resend link is still disabled.
  ///
  /// In en, this message translates to:
  /// **'Resend in another {seconds} seconds'**
  String otp_modal_resend_countdown(String seconds);

  /// Validation error when the OTP field is submitted empty.
  ///
  /// In en, this message translates to:
  /// **'Please enter the verification code'**
  String get otp_modal_error_empty;

  /// Title of the confirm-cancel sheet for a pending order.
  ///
  /// In en, this message translates to:
  /// **'Order cancellation'**
  String get order_cancel_title;

  /// Body of the confirm-cancel sheet for a pending order.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to cancel this order?'**
  String get order_cancel_body;

  /// Shown when the wallet's background optimization is already in progress. Deliberately unalarming — the user did not start it.
  ///
  /// In en, this message translates to:
  /// **'Wallet optimization is already running.'**
  String get sdk_error_optimization_running;

  /// Shown when the wallet's background optimization was cancelled.
  ///
  /// In en, this message translates to:
  /// **'Wallet optimization was cancelled.'**
  String get sdk_error_optimization_cancelled;

  /// Shown when the amount is under the on-chain dust limit. {sats} is a whole number parsed out of the SDK error.
  ///
  /// In en, this message translates to:
  /// **'Minimum on-chain send amount is {sats} sats.'**
  String sdk_error_min_onchain_send(String sats);

  /// Shown when the amount is under the on-chain dust limit and no figure could be parsed from the SDK error.
  ///
  /// In en, this message translates to:
  /// **'The amount is too small for an on-chain transaction.'**
  String get sdk_error_amount_too_small;

  /// Fallback when an SDK error cannot be mapped to a known message. 'Profile > Share Logs' names an in-app path, so it must match the translated menu labels.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong. Please try again. If the issue persists, share your logs from Profile > Share Logs and email them to support@bringin.xyz'**
  String get sdk_error_generic_share_logs;

  /// Shown when a Lightning or on-chain send fails for insufficient funds including fees.
  ///
  /// In en, this message translates to:
  /// **'Not enough Bitcoin to cover the network fee. Try again with a slightly smaller amount.'**
  String get payment_error_network_fee;

  /// Shown when a send times out — deliberately does not claim the payment failed, because it may still settle.
  ///
  /// In en, this message translates to:
  /// **'The network took too long to respond. Check your transactions before trying again.'**
  String get payment_error_timeout;

  /// Shown when a send fails on a network or socket error.
  ///
  /// In en, this message translates to:
  /// **'Connection problem. Check your internet and try again.'**
  String get payment_error_connection;

  /// Fallback when a send fails for a reason the app cannot explain.
  ///
  /// In en, this message translates to:
  /// **'Something went wrong and the payment was not completed.'**
  String get payment_error_generic_not_completed;

  /// Cloud-backup failure: Google Drive was not reachable.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t reach Google Drive. Check your connection and try again.'**
  String get backup_error_drive_unreachable;

  /// Cloud-backup failure: Play services is too old.
  ///
  /// In en, this message translates to:
  /// **'Google Play services needs an update. Update it, then try again.'**
  String get backup_error_play_services;

  /// Cloud-backup failure: this build cannot back up.
  ///
  /// In en, this message translates to:
  /// **'Backup isn’t available on this version of the app. Please contact support.'**
  String get backup_error_unsupported_backup;

  /// Cloud-backup failure: this build cannot restore.
  ///
  /// In en, this message translates to:
  /// **'Cloud restore isn’t available on this version of the app. Please contact support.'**
  String get backup_error_unsupported_restore;

  /// Cloud-backup failure: Google sign-in did not complete.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t sign you in to Google. Please try again.'**
  String get backup_error_signin;

  /// Cloud-backup failure: Drive scope was not granted, on the save path.
  ///
  /// In en, this message translates to:
  /// **'Bringin needs access to your Google Drive to save your backup. Try again and allow access.'**
  String get backup_error_permission_save;

  /// Cloud-backup failure: Drive scope was not granted, on the restore path.
  ///
  /// In en, this message translates to:
  /// **'Bringin needs access to your Google Drive to find your backup. Try again and allow access.'**
  String get backup_error_permission_find;

  /// Cloud-backup failure: no storage quota left.
  ///
  /// In en, this message translates to:
  /// **'Your Google Drive is full. Free up space, then try again.'**
  String get backup_error_drive_full;

  /// Cloud-backup failure: the account policy blocks the app.
  ///
  /// In en, this message translates to:
  /// **'This Google account doesn’t allow Bringin to use Google Drive. Try a different account.'**
  String get backup_error_account_blocked;

  /// Cloud-backup failure: the upload failed.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t save your backup to Google Drive. Please try again.'**
  String get backup_error_save_failed;

  /// Cloud-backup failure: the download or decode failed.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t open your backup from Google Drive. Please try again.'**
  String get backup_error_open_failed;

  /// Cloud-backup failure: the account check did not return in time.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t confirm your Bringin account. Please try again in a moment.'**
  String get backup_error_account_unconfirmed;

  /// Cloud-backup failure: generic restore fallback. Pairs with wallet_backup_failure_message on the save path.
  ///
  /// In en, this message translates to:
  /// **'We couldn’t restore your backup. Please try again.'**
  String get backup_error_restore_generic;
}

class _BringinTranslationsDelegate
    extends LocalizationsDelegate<BringinTranslations> {
  const _BringinTranslationsDelegate();

  @override
  Future<BringinTranslations> load(Locale locale) {
    return SynchronousFuture<BringinTranslations>(
        lookupBringinTranslations(locale));
  }

  @override
  bool isSupported(Locale locale) =>
      <String>['en'].contains(locale.languageCode);

  @override
  bool shouldReload(_BringinTranslationsDelegate old) => false;
}

BringinTranslations lookupBringinTranslations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en':
      return BringinTranslationsEn();
  }

  throw FlutterError(
      'BringinTranslations.delegate failed to load unsupported locale "$locale". This is likely '
      'an issue with the localizations generation tool. Please file an issue '
      'on GitHub with a reproducible sample app and the gen-l10n configuration '
      'that was used.');
}
