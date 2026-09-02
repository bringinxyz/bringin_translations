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
