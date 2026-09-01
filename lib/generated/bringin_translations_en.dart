// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'bringin_translations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class BringinTranslationsEn extends BringinTranslations {
  BringinTranslationsEn([String locale = 'en']) : super(locale);

  @override
  String amount_form_denomination(String denomination) {
    return 'Amount in $denomination';
  }

  @override
  String amount_form_insert_hint(String denomination) {
    return 'Please enter the amount in $denomination';
  }

  @override
  String get amount_form_error_invalid_amount => 'Invalid amount';

  @override
  String backup_phrase_generation_index(int index) {
    return '$index.';
  }

  @override
  String get bringin_type_fiat_withdrawal => 'Euro Withdrawal';

  @override
  String get bringin_type_offramp => 'Sold Bitcoin';

  @override
  String get bringin_type_onramp_partial_fiat_deposit => 'Bought Bitcoin';

  @override
  String get bringin_type_offramp_without_fiat_withdrawl => 'Sold Bitcoin';

  @override
  String get bringin_type_fiat_deposit => 'Euro Deposit';

  @override
  String get bringin_type_fiat_pending => 'Pending';

  @override
  String get bringin_type_bitcoin_withdrawal => 'Bitcoin Withdrawal';

  @override
  String get bringin_type_card_authorization => 'Card Payment';

  @override
  String get bringin_type_card_authorization_reversal => 'Card Reversal';

  @override
  String get bringin_type_card_tx_refund => 'Card Refund';

  @override
  String get bringin_type_card_tx_release => 'Card Release';

  @override
  String get bringin_type_card_tx_atm => 'ATM Withdrawal';

  @override
  String get bringin_type_card_tx_declined => 'Card Declined';

  @override
  String get bringin_type_card_tx_settlement_confirmed => 'Card Payment';

  @override
  String get bringin_type_push_funds => 'Refund';

  @override
  String get bringin_type_rewards => 'Rewards';

  @override
  String get bringin_type_cashback => 'Cashback';

  @override
  String get bringin_type_exchange_rate_change => 'Exchange rate change';

  @override
  String get bringin_type_deposit => 'Deposit';

  @override
  String get bringin_type_ln_address_deposit => 'Lightning Deposit';

  @override
  String get bringin_type_swap_currency => 'Bitcoin To Euro Swap';

  @override
  String get bringin_type_card_creation_fee => 'Card Creation Fee';

  @override
  String get bringin_card_type_physical => 'Physical';

  @override
  String get bringin_card_type_virtual => 'Virtual';

  @override
  String get bringin_card_type_label => 'Card Type';

  @override
  String get bitcoin_address_scan_tooltip => 'Scan BTC Address';

  @override
  String get currency_converter_dialog_error_exchange_rate =>
      'Failed to retrieve BTC exchange rate.';

  @override
  String get fee_chooser_option_economy => 'Economy';

  @override
  String get fee_chooser_option_regular => 'Regular';

  @override
  String get fee_chooser_option_priority => 'Priority';

  @override
  String get invoice_btc_address_deposit_address => 'Deposit Address';

  @override
  String invoice_payment_validator_error_payment_exceeded_limit(
      String maxSats) {
    return 'Payment exceeds the limit ($maxSats)';
  }

  @override
  String invoice_payment_validator_error_payment_below_invoice_limit(
      String minSats) {
    return 'Payment is below the limit ($minSats)';
  }

  @override
  String get invoice_payment_validator_error_insufficient_local_balance =>
      'Insufficient local balance';

  @override
  String invoice_payment_validator_error_unknown(String error) {
    return 'Validation error $error';
  }

  @override
  String get enter_backup_phrase_error =>
      'Failed to restore from backup. Please make sure backup phrase was correctly entered and try again.';

  @override
  String get keyboard_done_action => 'Done';

  @override
  String get lsp_error_cannot_open_channel =>
      'Bringin cannot open new channels at the moment. Please try again later.';

  @override
  String lnurl_fetch_invoice_min(String min) {
    return 'Enter an amount between $min';
  }

  @override
  String lnurl_fetch_invoice_and(String max) {
    return ' and $max';
  }

  @override
  String lnurl_payment_page_error_exceeds_limit(int amount) {
    return 'Exceeds maximum sendable amount: $amount';
  }

  @override
  String lnurl_payment_page_error_below_limit(int amount) {
    return 'Below minimum accepted amount: $amount';
  }

  @override
  String link_launcher_failed_to_launch(String url) {
    return 'Could not launch $url';
  }

  @override
  String get ln_payment_action_retry => 'RETRY';

  @override
  String get no_connection_flushbar_title => 'No internet connection';

  @override
  String get no_connection_flushbar_action_retry => 'Retry';

  @override
  String get payment_error_insufficient_balance => 'Insufficient balance';

  @override
  String get payment_error_incorrect_payment_details =>
      'Incorrect payment details';

  @override
  String get payment_error_unexpected_error => 'Unexpected error';

  @override
  String get payment_error_no_route => 'No route';

  @override
  String get payment_error_payment_timeout_exceeded =>
      'Payment timeout exceeded';

  @override
  String get payment_error_none => '';

  @override
  String get payment_info_title_bitcoin_transfer => 'Bitcoin Transfer';

  @override
  String get payment_info_title_closed_channel => 'Closed Channel';

  @override
  String get payment_info_title_unknown => 'Unknown';

  @override
  String get payment_info_title_bitcoin_deposit => 'Bitcoin Deposit';

  @override
  String get payment_info_title_bitcoin_withdrawal => 'Bitcoin Withdrawal';

  @override
  String get payment_info_title_token_transfer => 'Token Transfer';

  @override
  String get payment_info_title_lightning_payment => 'Lightning Payment';

  @override
  String get payment_info_title_spark_transfer => 'Spark Transfer';

  @override
  String get payment_info_type_lightning => 'Lightning';

  @override
  String get payment_info_type_onchain => 'On-chain';

  @override
  String get payment_info_type_spark => 'Spark';

  @override
  String get payment_info_type_token => 'Token';

  @override
  String get payment_info_title_pending_closed_channel =>
      'Pending Closed Channel';

  @override
  String get payment_error_to_send_unknown_reason => 'Failed to send payment';

  @override
  String payment_error_to_send(String error) {
    return 'Failed to send payment: $error';
  }

  @override
  String get payment_info_title_opened_channel => 'Opened Channel';

  @override
  String get payment_info_title_pending_opened_channel =>
      'Pending Opened Channel';

  @override
  String get payment_info_dialog_error_unsupported_input => 'Unsupported input';

  @override
  String get payment_info_dialog_error_qrcode => 'QR code wasn\'t detected.';

  @override
  String get payment_request_dialog_requested => 'You are requested to pay:';

  @override
  String get payment_request_dialog_action_cancel => 'Cancel';

  @override
  String get payment_request_dialog_action_approve => 'Approve';

  @override
  String get processing_payment_dialog_wait =>
      'Please wait while your payment is being processed';

  @override
  String get payment_confirmation_dialog_title => 'Payment Confirmation';

  @override
  String get payment_confirmation_dialog_confirmation =>
      'Are you sure you want to pay';

  @override
  String get payment_confirmation_dialog_confirmation_end => ' ?';

  @override
  String get payment_confirmation_dialog_action_no => 'NO';

  @override
  String get payment_confirmation_dialog_action_yes => 'YES';

  @override
  String get payment_details_dialog_share_transaction =>
      'Share Transaction Hash';

  @override
  String payment_details_dialog_copy_action(String title) {
    return 'Copy $title';
  }

  @override
  String payment_details_dialog_copied(String title) {
    return '$title was copied to your clipboard.';
  }

  @override
  String get payment_request_zero_amount_not_supported =>
      'Zero-amount lightning payments are not supported.';

  @override
  String get generic_network_error =>
      'Failed to connect to Bringin. Please check your internet connection and try again.';

  @override
  String get qr_code_dialog_warning_message =>
      'Keep Bringin open until the payment is completed.';

  @override
  String get qr_action_button_error_code_not_detected =>
      'QR code wasn\'t detected.';

  @override
  String get qr_code_not_detected_error => 'QR code wasn\'t detected.';

  @override
  String get successful_payment_received => 'Payment received!';

  @override
  String get successful_payment_sent_title => 'Payment was\nsuccessfully sent!';

  @override
  String valid_payment_error_exceeds_the_limit(String amount) {
    return 'Payment exceeds the limit $amount.';
  }

  @override
  String wallet_dashboard_payment_item_balance_positive(String value) {
    return '+ $value';
  }

  @override
  String wallet_dashboard_payment_item_balance_negative(String value) {
    return '- $value';
  }

  @override
  String wallet_dashboard_payment_item_balance_fee(String feeFormatted) {
    return 'Fee $feeFormatted';
  }

  @override
  String get wallet_dashboard_payment_item_balance_pending_suffix =>
      ' (Pending)';

  @override
  String get wallet_dashboard_payment_item_no_title => 'Unknown';

  @override
  String get withdraw_funds_use_all_funds => 'Use all Funds';

  @override
  String get withdraw_funds_btc_address => 'BTC Address';

  @override
  String get withdraw_funds_error_invalid_address =>
      'Please enter a valid BTC Address';

  @override
  String get withdraw_funds_action_next => 'NEXT';

  @override
  String get locale => 'en';

  @override
  String get app_name => 'Bringin';

  @override
  String get home_sca_error_title => 'Session verification unavailable';

  @override
  String get home_sca_error_message =>
      'We couldn\'t reach our security service. Please check your connection and try again.';

  @override
  String get home_sca_error_action_logout => 'Log out';

  @override
  String get home_sca_error_action_retry => 'Retry';

  @override
  String get home_showcase_nav_title => 'Navigate the app';

  @override
  String get home_showcase_nav_description =>
      'Switch between Home, Connect, Cards, and Profile to reach every part of the app.';

  @override
  String get home_showcase_balance_title => 'Your total balance';

  @override
  String get home_showcase_balance_description =>
      'All your Bitcoin, Euro, and card balances in one place. Tap the eye to hide.';

  @override
  String get home_showcase_actions_title => 'Move money fast';

  @override
  String get home_showcase_actions_description =>
      'Add funds or send Bitcoin / Euro in a couple of taps.';

  @override
  String get home_showcase_swaps_title => 'Bitcoin ↔ Euro swaps';

  @override
  String get home_showcase_swaps_description =>
      'Buy Bitcoin into your wallet, or sell directly back to your bank.';

  @override
  String get home_nav_label_home => 'Home';

  @override
  String get home_nav_label_connect => 'Connect';

  @override
  String get home_nav_label_cards => 'Cards';

  @override
  String get home_nav_label_profile => 'Profile';

  @override
  String get home_balance_label_total => 'Total balance';

  @override
  String get home_accounts_title => 'Wallet & accounts';

  @override
  String get home_accounts_bitcoin_label => 'Bitcoin';

  @override
  String get home_accounts_bitcoin_activate => 'Activate wallet';

  @override
  String get home_accounts_euro_label => 'Euro';

  @override
  String get home_accounts_card_balance_label => 'Card balance';

  @override
  String home_accounts_transactions_in_progress(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count transactions in progress',
      one: '1 transaction in progress',
    );
    return '$_temp0';
  }

  @override
  String get home_action_add => 'Add';

  @override
  String get home_action_send => 'Send';

  @override
  String get home_action_scan => 'Scan';

  @override
  String get home_swaps_title => 'Bitcoin swaps';

  @override
  String get home_swaps_buy_to_wallets => 'Buy to wallets';

  @override
  String get home_swaps_sell_to_banks => 'Sell to banks';

  @override
  String get home_transactions_title => 'All transactions';

  @override
  String get home_action_needed_title => 'Action needed';

  @override
  String home_action_needed_description(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items need your review.',
      one: '1 item needs your review.',
    );
    return '$_temp0';
  }

  @override
  String get home_tx_filter_all => 'All';

  @override
  String get home_tx_filter_bitcoin => 'Bitcoin';

  @override
  String get home_tx_filter_euro_account => 'Euro account';

  @override
  String get home_tx_filter_cards => 'Cards';

  @override
  String get home_tx_filter_swaps => 'Swaps';

  @override
  String get home_transactions_empty => 'No transactions yet';

  @override
  String get home_transactions_empty_filtered =>
      'Nothing here in your recent transactions.';

  @override
  String get home_resume_loader_message => 'Picking up where you left off.';

  @override
  String get home_error_generic => 'Something went wrong.';

  @override
  String get home_purchase_processing_title => 'Getting your purchase ready';

  @override
  String get home_purchase_processing_subtitle => 'This won\'t take long.';

  @override
  String get home_update_banner_required =>
      'A new required version of Bringin is available. Update now to keep using the app.';

  @override
  String get home_update_banner_optional =>
      'A new version of Bringin is available.';

  @override
  String get home_update_banner_action => 'Update now';

  @override
  String get tx_label_card_payment => 'Card payment';

  @override
  String get tx_label_bitcoin => 'Bitcoin';

  @override
  String get tx_label_top_up => 'Top up';

  @override
  String get tx_label_sell_btc => 'Sell BTC';

  @override
  String get tx_label_wallet => 'Wallet';

  @override
  String get tx_label_to_euro_account => 'To Euro account';

  @override
  String get tx_label_to_bank => 'To Bank';

  @override
  String get tx_label_atm_withdrawal => 'ATM Withdrawal';

  @override
  String get tx_label_to_ln_address => 'To LN address';

  @override
  String get tx_label_to_bitcoin_wallet => 'To Bitcoin wallet';

  @override
  String tx_label_to_destination(String destination) {
    return 'To $destination';
  }

  @override
  String get tx_subtype_received => 'Received';

  @override
  String get tx_subtype_sent => 'Sent';

  @override
  String get tx_subtype_pro => 'Pro';

  @override
  String get tx_subtype_buy => 'Buy';

  @override
  String get tx_subtype_sell => 'Sell';

  @override
  String get tx_subtype_send => 'Send';

  @override
  String get tx_subtype_add => 'Add';

  @override
  String get tx_subtype_card_fee => 'Card fee';

  @override
  String get tx_subtype_refund => 'Refund';

  @override
  String get tx_subtype_cashback => 'Cashback';

  @override
  String get tx_subtype_rewards => 'Rewards';

  @override
  String get tx_subtype_deposit => 'Deposit';

  @override
  String get tx_subtype_swap => 'Swap';
}
