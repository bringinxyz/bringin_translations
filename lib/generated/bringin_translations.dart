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

  /// No description provided for @backup_phrase_generation_index.
  ///
  /// In en, this message translates to:
  /// **'{index}.'**
  String backup_phrase_generation_index(int index);

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

  /// No description provided for @bitcoin_address_scan_tooltip.
  ///
  /// In en, this message translates to:
  /// **'Scan BTC Address'**
  String get bitcoin_address_scan_tooltip;

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

  /// No description provided for @qr_code_not_detected_error.
  ///
  /// In en, this message translates to:
  /// **'QR code wasn\'t detected.'**
  String get qr_code_not_detected_error;

  /// No description provided for @successful_payment_received.
  ///
  /// In en, this message translates to:
  /// **'Payment received!'**
  String get successful_payment_received;

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

  /// No description provided for @wallet_dashboard_payment_item_balance_positive.
  ///
  /// In en, this message translates to:
  /// **'+ {value}'**
  String wallet_dashboard_payment_item_balance_positive(String value);

  /// No description provided for @wallet_dashboard_payment_item_balance_negative.
  ///
  /// In en, this message translates to:
  /// **'- {value}'**
  String wallet_dashboard_payment_item_balance_negative(String value);

  /// No description provided for @wallet_dashboard_payment_item_balance_fee.
  ///
  /// In en, this message translates to:
  /// **'Fee {feeFormatted}'**
  String wallet_dashboard_payment_item_balance_fee(String feeFormatted);

  /// No description provided for @wallet_dashboard_payment_item_balance_pending_suffix.
  ///
  /// In en, this message translates to:
  /// **' (Pending)'**
  String get wallet_dashboard_payment_item_balance_pending_suffix;

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

  /// No description provided for @withdraw_funds_error_invalid_address.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid BTC Address'**
  String get withdraw_funds_error_invalid_address;

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

  /// No description provided for @password_pwned_action_confirm.
  ///
  /// In en, this message translates to:
  /// **'Got it'**
  String get password_pwned_action_confirm;

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
