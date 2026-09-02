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
  String get successful_payment_received => 'Payment received!';

  @override
  String get success_title_payment_received => 'Payment received';

  @override
  String get success_title_purchase_complete => 'Purchase Complete!';

  @override
  String get successful_payment_sent_title => 'Payment was\nsuccessfully sent!';

  @override
  String valid_payment_error_exceeds_the_limit(String amount) {
    return 'Payment exceeds the limit $amount.';
  }

  @override
  String get wallet_dashboard_payment_item_no_title => 'Unknown';

  @override
  String get withdraw_funds_use_all_funds => 'Use all Funds';

  @override
  String get withdraw_funds_btc_address => 'BTC Address';

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

  @override
  String get tx_label_bringin_inc => 'Bringin INC';

  @override
  String get tx_label_bringin => 'Bringin';

  @override
  String get field_label_email => 'Email';

  @override
  String get field_hint_email => 'Add your email';

  @override
  String get field_error_email_empty => 'Your email can\'t be empty.';

  @override
  String get field_error_email_invalid => 'This email is not valid.';

  @override
  String get field_label_password => 'Password';

  @override
  String get action_next => 'Next';

  @override
  String get action_back => 'Back';

  @override
  String get action_close => 'Close';

  @override
  String get action_try_again => 'Try again';

  @override
  String get error_generic => 'Something went wrong!';

  @override
  String get error_generic_retry => 'Something went wrong. Please try again.';

  @override
  String get password_error_empty => 'Password is required';

  @override
  String get password_error_too_short =>
      'Password must be at least 8 characters';

  @override
  String get password_error_too_long => 'Password is too long';

  @override
  String get password_error_no_uppercase => 'Add at least one uppercase letter';

  @override
  String get password_error_no_lowercase => 'Add at least one lowercase letter';

  @override
  String get password_error_no_special => 'Add at least one special character';

  @override
  String get password_error_no_digit => 'Add at least one number';

  @override
  String get password_confirm_error_empty => 'Please confirm your password';

  @override
  String get password_confirm_error_mismatch => 'Passwords don\'t match';

  @override
  String get password_rule_min_length => 'At least 8 characters';

  @override
  String get password_rule_uppercase => 'An uppercase letter (A–Z)';

  @override
  String get password_rule_lowercase => 'A lowercase letter (a–z)';

  @override
  String get password_rule_digit => 'A number (0–9)';

  @override
  String get password_rule_special => 'A special character (!@#\$…)';

  @override
  String get password_pwned_title => 'Choose a different password';

  @override
  String get password_pwned_message =>
      'This password has appeared in a public data breach and isn\'t safe to use. Please pick a new one you haven\'t used on other sites.';

  @override
  String get login_action_get_started => 'Get Started';

  @override
  String get login_divider_or => 'OR';

  @override
  String get login_action_continue_google => 'Continue with Google';

  @override
  String get login_action_continue_apple => 'Continue with Apple';

  @override
  String get login_error_google_token =>
      'Unable to get authentication token from Google.';

  @override
  String get login_error_google_generic =>
      'Unable to sign in with Google. Please try again.';

  @override
  String get login_error_apple_token =>
      'Unable to get authentication token from Apple.';

  @override
  String get login_error_apple_generic =>
      'Unable to sign in with Apple. Please try again.';

  @override
  String get login_password_hint => 'Enter your password';

  @override
  String get login_action_forgot_password => 'Forgot password?';

  @override
  String get login_action_log_in => 'Log in';

  @override
  String get login_title => 'Log in';

  @override
  String get account_locked_title => 'Account locked';

  @override
  String get account_suspended_title => 'Account suspended';

  @override
  String account_locked_try_again_in(String duration) {
    return 'Try again in $duration';
  }

  @override
  String account_locked_failed_attempts(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count failed attempts.',
      one: '1 failed attempt.',
    );
    return '$_temp0';
  }

  @override
  String get account_locked_action_support => 'Contact support';

  @override
  String get create_account_title => 'Sign up with email';

  @override
  String get create_account_field_label_first_name => 'First name';

  @override
  String get create_account_field_hint_first_name => 'Add your first name';

  @override
  String get create_account_error_first_name_empty =>
      'Your firstname can\'t be empty';

  @override
  String get create_account_error_first_name_invalid =>
      'This firstname is not valid';

  @override
  String get create_account_field_label_last_name => 'Last name';

  @override
  String get create_account_field_hint_last_name => 'Add your last name';

  @override
  String get create_account_error_last_name_empty =>
      'Your lastname can\'t be empty';

  @override
  String get create_account_error_last_name_invalid =>
      'This lastname is not valid';

  @override
  String get create_account_field_label_referral => 'Referral Code';

  @override
  String get create_account_field_hint_referral => 'Enter referral code';

  @override
  String get create_account_referral_prefilled =>
      'Referral code pre-filled from your invitation link';

  @override
  String get create_account_terms_label => 'Accept terms and condition';

  @override
  String get create_account_terms_prefix => 'You agree to our ';

  @override
  String get create_account_terms_link => 'Terms & conditions';

  @override
  String get create_account_terms_separator => ' and ';

  @override
  String get create_account_privacy_link => 'Privacy policy';

  @override
  String get create_account_terms_suffix =>
      ' (As applicable on our website and from our third party service providers).';

  @override
  String get create_account_error_terms_required =>
      'Please accept our Terms & Conditions';

  @override
  String get create_account_error_already_registered =>
      'User is already registered!';

  @override
  String get create_account_error_page_title => 'Oops!';

  @override
  String get verify_email_signup_title => 'Sign up';

  @override
  String get verify_email_heading => 'Verify your email';

  @override
  String get verify_email_subtitle_prefix =>
      'Add the verification code send to your email address ';

  @override
  String get verify_otp_subtitle_prefix =>
      'Enter the verification code sent to ';

  @override
  String get verify_email_error_invalid_code =>
      'Invalid verification code. Please try again.';

  @override
  String get verify_email_error_code_expired =>
      'Verification code expired. Tap resend.';

  @override
  String get verify_email_error_invalid_code_retry =>
      'Invalid verification code. Retry';

  @override
  String get create_password_title => 'Set your password';

  @override
  String get create_password_message =>
      'For your security, please set a password. You\'ll use it to sign in from now on.';

  @override
  String get create_password_field_hint => 'Create a password';

  @override
  String get create_password_field_label_confirm => 'Confirm password';

  @override
  String get create_password_field_hint_confirm => 'Re-enter your password';

  @override
  String get create_password_action_submit => 'Create Password';

  @override
  String get create_password_error_generic =>
      'Unable to create your password. Please try again.';

  @override
  String get reset_password_title => 'Set a new password';

  @override
  String get reset_password_message =>
      'Your existing password has expired. Please set a new one to continue.';

  @override
  String get reset_password_field_label_new => 'New password';

  @override
  String get reset_password_field_hint_new => 'Enter a new password';

  @override
  String get reset_password_field_label_confirm => 'Confirm new password';

  @override
  String get reset_password_field_hint_confirm => 'Re-enter your new password';

  @override
  String get reset_password_action_submit => 'Set new password';

  @override
  String get reset_password_error_session_expired =>
      'Reset session expired. Please sign in again.';

  @override
  String get reset_password_error_generic =>
      'Unable to reset your password. Please try again.';

  @override
  String get forgot_password_title => 'Reset your password';

  @override
  String get forgot_password_message =>
      'Enter the email address you used to sign in. We\'ll send you a link to reset your password.';

  @override
  String get forgot_password_action_submit => 'Send reset link';

  @override
  String get forgot_password_success_title => 'Check your inbox';

  @override
  String get forgot_password_success_heading => 'We\'ve sent a reset link';

  @override
  String forgot_password_success_message(String email) {
    return 'We\'ve emailed a password-reset link to $email. Tap the link in your inbox to set a new password. It expires in an hour.';
  }

  @override
  String get forgot_password_success_action_back => 'Back to sign in';

  @override
  String get invoice_error_amount_empty => 'Amount cannot be empty';

  @override
  String get invoice_fetching_rate => 'Fetching rate...';

  @override
  String get paste_invoice_field_label => 'Lightning Invoice or Address';

  @override
  String get paste_invoice_field_hint => 'Paste invoice or address';

  @override
  String get paste_invoice_validating_helper => 'Validating address...';

  @override
  String get paste_invoice_action_validating => 'Validating...';

  @override
  String paste_invoice_amount_sats(String sats) {
    return '$sats sats';
  }

  @override
  String get paste_invoice_error_too_long =>
      'Input is too long to be a valid invoice or address';

  @override
  String get paste_invoice_error_invalid =>
      'Invalid lightning invoice or address';

  @override
  String get paste_invoice_error_zero_amount =>
      'We don\'t support zero-sat invoices';

  @override
  String get invoice_qr_instruction =>
      'Please scan the QR code from any Bitcoin Lightning wallet to complete the payment.';

  @override
  String get invoice_qr_expires_in => 'Expires in ';

  @override
  String invoice_qr_amount_sats(String amount) {
    return 'Amount: $amount SATS';
  }

  @override
  String get invoice_qr_copied =>
      'Lightning invoice was copied to your clipboard';

  @override
  String get buy_invoice_headline => 'How much Bitcoin do you want to buy?';

  @override
  String get buy_invoice_field_label_amount => 'Amount';

  @override
  String buy_invoice_error_below_minimum(String minimum) {
    return 'Try a higher amount than €$minimum';
  }

  @override
  String buy_invoice_receive_upto(String sats) {
    return 'Receive upto: $sats Sats';
  }

  @override
  String get buy_invoice_error_insufficient_balance => 'Insufficient balance';

  @override
  String buy_invoice_error_minimum_transaction(String minimum) {
    return 'The minimum amount for this transaction is €$minimum';
  }

  @override
  String buy_invoice_error_convert_failed(String error) {
    return 'Failed to convert amount: $error';
  }

  @override
  String buy_invoice_balance_btc(String btc) {
    return 'Balance: $btc BTC';
  }

  @override
  String create_invoice_field_label_amount(String unit) {
    return 'Amount (in $unit)';
  }

  @override
  String get create_invoice_error_amount_too_low => 'Try a higher amount';

  @override
  String get create_invoice_field_label_description => 'Description';

  @override
  String get action_skip => 'Skip';

  @override
  String get action_continue => 'Continue';

  @override
  String get action_go_back => 'Go back';

  @override
  String get action_home => 'Home';

  @override
  String get badge_advanced => 'Advanced';

  @override
  String get add_wallet_title => 'Set up a Bitcoin wallet';

  @override
  String get add_wallet_intro =>
      'Bringin lets you use a self-custody wallet. Create a new wallet with us or connect an existing hardware or software wallet.';

  @override
  String get add_wallet_option_create_title => 'Create a new wallet';

  @override
  String get add_wallet_option_create_subtitle =>
      'Set up a new self-custody wallet.';

  @override
  String get add_wallet_option_restore_title => 'Restore a wallet';

  @override
  String get add_wallet_option_restore_subtitle =>
      'Recover from your backup or 12-word recovery phrase.';

  @override
  String get add_wallet_option_external_title => 'Link an external wallet';

  @override
  String get add_wallet_option_external_subtitle =>
      'Link an external NWC wallet. (Coming soon)';

  @override
  String get add_wallet_external_coming_soon =>
      'Linking an external wallet is coming soon';

  @override
  String get add_wallet_loader_restoring =>
      'Restoring your wallet. This won\'t take long.';

  @override
  String get add_wallet_loader_creating =>
      'Creating your new wallet. Almost there!';

  @override
  String get add_wallet_loader_checking => 'Checking your wallet.';

  @override
  String get add_wallet_loader_spark_setup => 'Setting up Spark wallet...';

  @override
  String get backup_prompt_title_create => 'Create a new wallet';

  @override
  String get backup_prompt_intro =>
      'You’re using a non-custodial wallet—only you have access to your funds. We don’t hold your keys or control your Bitcoin.';

  @override
  String get backup_prompt_heading => 'Back up your wallet';

  @override
  String get backup_prompt_why_title => 'Why back up?';

  @override
  String get backup_prompt_why_description =>
      'Backing up your wallet ensures you can recover your Bitcoin if you lose access to your device or app. Without a backup, your funds cannot be recovered.';

  @override
  String get backup_option_cloud_title => 'Back up to Google Drive / iCloud';

  @override
  String get backup_option_cloud_subtitle =>
      'Automatic backup. If you lose your device, you can recover your wallet easily.';

  @override
  String get backup_option_write_down_title => 'Write down recovery phrase';

  @override
  String get backup_option_write_down_subtitle =>
      'Save your 12-word phrase securely. It’s the only way to recover your wallet.';

  @override
  String get backup_prompt_action_skip => 'Skip backup and create wallet';

  @override
  String get backup_action_submit => 'Back up wallet';

  @override
  String get backup_cloud_title => 'Back up to cloud';

  @override
  String get backup_cloud_option_plain_title =>
      'Back up without additional password';

  @override
  String get backup_cloud_option_plain_subtitle =>
      'Automatic backup. Recover your wallet easily if you lose access to your device.';

  @override
  String get backup_cloud_option_password_title =>
      'Back up with additional password';

  @override
  String get backup_cloud_option_password_subtitle =>
      'Encrypt your backup with a password. Only use this if you can store it safely—losing it means you will not be able to restore your wallet.';

  @override
  String get backup_cloud_option_1 => 'OPTION 1';

  @override
  String get backup_cloud_option_2 => 'OPTION 2';

  @override
  String get backup_cloud_icloud_coming_soon => 'iCloud backup coming soon';

  @override
  String get cloud_picker_title => 'Sign in to your cloud storage';

  @override
  String get cloud_picker_google_drive => 'Sign in to Google Drive';

  @override
  String get cloud_picker_icloud => 'Sign in to iCloud';

  @override
  String get cloud_picker_coming_soon => '(Coming soon)';

  @override
  String get restore_wallet_title => 'Restore a wallet';

  @override
  String get restore_wallet_heading => 'Restore';

  @override
  String get restore_option_cloud_title => 'From Google Drive / iCloud';

  @override
  String get restore_option_cloud_subtitle =>
      'Sign in to your cloud storage to restore your wallet if you’ve created a backup.';

  @override
  String get restore_option_phrase_title => 'From your recovery phrase';

  @override
  String get restore_option_phrase_subtitle =>
      'Restore your wallet using your securely stored 12-word recovery phrase.';

  @override
  String get restore_wallet_action_submit => 'Restore wallet';

  @override
  String get restore_wallet_icloud_coming_soon => 'iCloud restore coming soon';

  @override
  String get restore_wallet_loader_checking => 'Checking your backup.';

  @override
  String get restore_wallet_error_no_backup =>
      'No backup found on this Google account. Try a different account, or restore using your recovery phrase.';

  @override
  String get restore_wallet_error_corrupted =>
      'This backup looks corrupted (expected a 12-word phrase). Try another account or restore using your recovery phrase.';

  @override
  String get migration_title => 'Wallet migration';

  @override
  String get migration_heading => 'Migrate your wallet to continue';

  @override
  String get migration_found_wallet_prefix =>
      'We found an existing wallet with ';

  @override
  String migration_found_wallet_amount(String sats) {
    return '$sats sats';
  }

  @override
  String get migration_upgrade_title => 'We’ve upgraded our network.';

  @override
  String get migration_upgrade_description =>
      'We’ve upgraded to a new blockchain (Spark) for improved features and reliability. To continue using your wallet, it needs to be migrated.\n\nYour funds will be transferred securely, and you can continue using your wallet as usual.';

  @override
  String get migration_no_migrate_note =>
      'If you choose not to migrate, you can create a new wallet, but your existing funds will not be carried over.';

  @override
  String get migration_existing_wallet_label => 'Existing wallet';

  @override
  String get migration_fees_label => 'Network fees';

  @override
  String get migration_balance_after_label => 'Balance after migration';

  @override
  String get migration_action_create_new => 'Create new wallet instead';

  @override
  String get migration_action_migrate => 'Migrate wallet';

  @override
  String get migration_confirm_title => 'Create a new wallet?';

  @override
  String migration_confirm_bullet_holds(String sats) {
    return 'Your existing wallet holds $sats sats on Liquid Blockchain.';
  }

  @override
  String get migration_confirm_bullet_inaccessible =>
      'If you continue, these funds will not be accessible in the new wallet.';

  @override
  String get migration_confirm_acknowledge =>
      'I understand my existing funds will not be carried over.';

  @override
  String get migration_confirm_action_create => 'Create wallet';

  @override
  String get migration_progress_label => 'Migrating';

  @override
  String get migration_progress_from_to => 'from Liquid to Spark';

  @override
  String get migration_step_connecting => 'Connecting to Liquid wallet...';

  @override
  String get migration_step_complete => 'Migration completed successfully!';

  @override
  String get migration_step_failed => 'Migration failed';

  @override
  String migration_error_with_detail(String details) {
    return 'Migration failed: $details';
  }

  @override
  String get migration_dust_title => 'Balance too small to migrate';

  @override
  String migration_dust_message(String minSats) {
    return 'Migration isn’t possible for balances under $minSats sats due to network fees. We’ll create a fresh wallet instead.';
  }

  @override
  String get migration_success_title_migrated =>
      'Wallet migrated successfully!';

  @override
  String get migration_success_subtitle_migrated =>
      'Your funds have been transferred to the new network. You can continue using your wallet as usual.';

  @override
  String get migration_success_title_created => 'New wallet created!';

  @override
  String get migration_success_subtitle_created =>
      'Your new wallet is ready to use. Your existing funds stay on the old network.';

  @override
  String get migration_success_history_title => 'Transaction history';

  @override
  String migration_success_history_description(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'We found $count transactions on your old wallet. Since you’re moving to a new network, this history won’t be available in the app. Do you want to save a copy?',
      one:
          'We found 1 transaction on your old wallet. Since you’re moving to a new network, this history won’t be available in the app. Do you want to save a copy?',
    );
    return '$_temp0';
  }

  @override
  String get liquid_export_title => 'Save Transaction History';

  @override
  String liquid_export_message(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other:
          'Your Liquid wallet had $count transactions. Since you’re moving to Spark, you won’t be able to view these in the app. Would you like to save a copy?',
      one:
          'Your Liquid wallet had 1 transaction. Since you’re moving to Spark, you won’t be able to view these in the app. Would you like to save a copy?',
    );
    return '$_temp0';
  }

  @override
  String get liquid_export_action_download => 'Download CSV';

  @override
  String get liquid_export_action_download_again => 'Download Again';

  @override
  String get liquid_export_share_title => 'Liquid Transaction History';

  @override
  String get liquid_export_error => 'Failed to export transactions';

  @override
  String get wallet_success_title_active => 'Back up secure & wallet active!';

  @override
  String get wallet_success_title_logged_out => 'Back up secure & logged out!';

  @override
  String get wallet_success_title_disconnected =>
      'Back up secure & wallet disconnected!';

  @override
  String get wallet_success_bullet_only_backup =>
      'Your recovery phrase is your only backup.';

  @override
  String get wallet_success_bullet_keep_private =>
      'Keep it private and stored offline.';

  @override
  String get wallet_success_bullet_now_active => 'Your wallet is now active.';

  @override
  String get wallet_success_cloud_prefix =>
      'You have cloud backup on your Google drive as ';

  @override
  String get wallet_success_cloud_suffix => '. Your wallet is now active.';

  @override
  String get wallet_success_cloud_no_email =>
      'You have cloud backup on your Google drive. Your wallet is now active.';

  @override
  String get wallet_success_backed_up_prefix =>
      'Your wallet is backed up to your Google drive as ';

  @override
  String get wallet_success_logout_suffix =>
      '. Sign back in anytime to restore it.';

  @override
  String get wallet_success_logout_no_email =>
      'Your wallet is backed up to your Google drive. Sign back in anytime to restore it.';

  @override
  String get wallet_success_disconnect_suffix =>
      '. Sign in and restore your wallet anytime.';

  @override
  String get wallet_success_disconnect_no_email =>
      'Your wallet is backed up to your Google drive. Sign in and restore your wallet anytime.';

  @override
  String get wallet_success_write_down_logout =>
      'Keep your 12-word recovery phrase safe. Sign back in anytime to restore your wallet.';

  @override
  String get wallet_success_write_down_disconnect =>
      'Keep your 12-word recovery phrase safe. You can restore your wallet anytime from the Bringin app.';

  @override
  String get wallet_backup_failure_message =>
      'We couldn’t set up your backup. Please try again.';

  @override
  String get login_required_title => 'Login Required';

  @override
  String get login_required_message =>
      'To use the swap feature, you need to log in to your Bringin account. This allows you to exchange between Bitcoin and Euros.';

  @override
  String get login_required_action_login_title => 'Login to Bringin';

  @override
  String get login_required_action_login_subtitle =>
      'Access full features including Euro account and swap functionality';

  @override
  String get login_required_action_bitcoin_only_title =>
      'Continue with Bitcoin only';

  @override
  String get login_required_action_bitcoin_only_subtitle =>
      'Keep using your Bitcoin wallet without Euro features';

  @override
  String get wallet_bitcoin_label => 'Bitcoin wallet';

  @override
  String get send_title => 'Send money';

  @override
  String get send_action_swipe => 'Swipe to send';

  @override
  String get send_use_full_balance => 'Use the full wallet balance';

  @override
  String get send_label_recipient_receives => 'Recipient receives';

  @override
  String get send_label_reference => 'Reference';

  @override
  String get send_label_transaction_id => 'Transaction ID';

  @override
  String get send_label_network_fee => 'Network fee';

  @override
  String get send_label_total_payable => 'Total payable';

  @override
  String get send_success_title => 'Sent successfully!';

  @override
  String get send_pay_to_bringin_address => 'Pay to my Bringin address';

  @override
  String get send_sent_to_bringin => 'Sent to Bringin';

  @override
  String get send_to_bringin => 'To Bringin';

  @override
  String get send_lightning_payment_label => 'Lightning payment';

  @override
  String get send_lightning_address_label => 'Lightning Address';

  @override
  String get send_entry_title => 'Send';

  @override
  String get send_entry_hint =>
      'Paste your LN Invoice or LN address or BTC address below';

  @override
  String get send_confirm_prompt =>
      'Do you want to confirm the following details?';

  @override
  String get send_confirm_label_amount => 'Amount';

  @override
  String get send_confirm_label_invoice_amount => 'Invoice Amount';

  @override
  String get send_confirm_label_total_amount => 'Total Amount';

  @override
  String get send_confirm_label_description => 'Description';

  @override
  String get send_confirm_label_destination => 'Destination';

  @override
  String get send_confirm_label_recipient_address => 'Recipient Address';

  @override
  String get send_fee_calculating => 'Calculating...';

  @override
  String get send_fee_unknown => 'Unknown';

  @override
  String get send_confirm_you_will_pay => 'You will pay';

  @override
  String get send_confirm_you_pay => 'You pay ';

  @override
  String get send_confirm_incl_fees => ' (incl. fees)';

  @override
  String get send_confirm_total_suffix => ' total.';

  @override
  String send_confirm_amount_sats(String sats) {
    return ' $sats sats';
  }

  @override
  String get send_action_confirm_payment => 'CONFIRM PAYMENT';

  @override
  String get send_action_confirm_send => 'CONFIRM SEND';

  @override
  String get send_amount_field_label => 'Amount (sats)';

  @override
  String get send_amount_error_required => 'Amount is required';

  @override
  String get send_amount_error_invalid => 'Enter a valid sats amount';

  @override
  String send_amount_error_below_minimum(String min) {
    return 'Minimum amount is $min sats';
  }

  @override
  String send_amount_error_exceeds_balance(String balance) {
    return 'Amount exceeds your balance of $balance sats';
  }

  @override
  String get send_amount_error_rate_unavailable =>
      'Conversion rate unavailable';

  @override
  String get send_amount_error_invalid_value => 'Enter a valid amount';

  @override
  String get send_amount_error_above_zero => 'Amount must be greater than zero';

  @override
  String get send_amount_error_insufficient_funds => 'Insufficient funds';

  @override
  String send_amount_error_minimum_sats(int min) {
    return 'Minimum is $min sats';
  }

  @override
  String send_amount_error_minimum_btc(String min) {
    return 'Minimum is $min BTC';
  }

  @override
  String send_amount_error_maximum_sats(int max) {
    return 'Maximum is $max sats';
  }

  @override
  String get send_amount_convert_from_eur => 'Convert from EUR';

  @override
  String send_amount_prompt_for_destination(String destination) {
    return 'Enter the amount to send to $destination';
  }

  @override
  String get send_amount_processing => 'Processing...';

  @override
  String send_amount_balance(String balance) {
    return 'Balance: $balance';
  }

  @override
  String get send_amount_hint_min_prefix => 'Min: ';

  @override
  String get send_amount_hint_max_prefix => '  ·  Max: ';

  @override
  String get send_amount_hint_sats_suffix => ' sats.';

  @override
  String get send_onchain_amount_prompt => 'How much do you want to send?';

  @override
  String get send_onchain_loader_checking => 'Checking your payment details.';

  @override
  String get send_onchain_success_title => 'Payment Sent!';

  @override
  String get send_onchain_success_message =>
      'Onchain payment sent successfully!';

  @override
  String get send_onchain_loader_sending =>
      'Sending your payment. This won\'t take long.';

  @override
  String get send_error_title => 'Error';

  @override
  String get send_error_payment_title => 'Payment Error';

  @override
  String get send_error_payment_failed_title => 'Payment Failed';

  @override
  String get send_error_unknown_reason => 'Payment failed for unknown reason';

  @override
  String send_error_payment_detail(String message) {
    return 'Payment error: $message';
  }

  @override
  String send_error_generic_detail(String message) {
    return 'Error: $message';
  }

  @override
  String get action_cancel => 'Cancel';

  @override
  String get mnemonics_phrase_label => '12-word phrase';

  @override
  String get mnemonics_caution_title => 'Caution!';

  @override
  String get mnemonics_caution_message =>
      'This phrase gives access to your Bitcoin. If you lose it, your wallet cannot be recovered—even by Bringin.';

  @override
  String mnemonics_word_index(int index) {
    return 'Word $index';
  }

  @override
  String get verify_backup_title => 'Verify back up';

  @override
  String get verify_backup_heading => 'Confirm your recovery phrase.';

  @override
  String get verify_backup_description =>
      'Enter the requested words from your 12-word phrase to verify you’ve saved it correctly.';

  @override
  String verify_backup_hint_word(int index) {
    return 'Add word $index';
  }

  @override
  String get verify_backup_error_required => 'This field is required';

  @override
  String get verify_backup_error_incorrect => 'Incorrect word';

  @override
  String get send_sheet_field_label => 'On-chain/ lightning address or invoice';

  @override
  String get send_sheet_error_invalid_input => 'Invalid address or invoice';

  @override
  String get send_sheet_error_parse_failed => 'Could not parse input';

  @override
  String get send_sheet_detected_ln_invoice => 'Lightning invoice detected';

  @override
  String get send_sheet_detected_ln_address => 'Lightning address detected';

  @override
  String get send_sheet_detected_btc_address => 'Bitcoin address detected';

  @override
  String get payment_details_title => 'Transaction details';

  @override
  String get payment_details_label_payment_type => 'Payment type';

  @override
  String get payment_details_label_fee => 'Fee';

  @override
  String get payment_details_label_status => 'Transaction status';

  @override
  String get payment_details_label_date => 'Date';

  @override
  String get payment_details_label_comment => 'Comment';

  @override
  String get payment_details_label_lnurl_domain => 'LNURL pay domain';

  @override
  String get payment_details_label_message => 'Message';

  @override
  String get payment_details_label_invoice => 'Invoice';

  @override
  String get payment_details_label_preimage => 'Payment preimage';

  @override
  String get payment_details_label_onchain_tx => 'On-chain transaction';

  @override
  String get payment_details_action_view_explorer => 'View on explorer';

  @override
  String get payment_details_label_order_id => 'Order ID';

  @override
  String get payment_details_label_transaction_type => 'Transaction type';

  @override
  String get payment_details_label_amount_btc => 'Amount in Bitcoin';

  @override
  String get payment_details_label_amount_eur => 'Amount in Euro';

  @override
  String get payment_details_label_deposit_transaction => 'Deposit transaction';

  @override
  String get payment_details_label_deposit_iban => 'Deposit IBAN';

  @override
  String get payment_details_label_deposit_name => 'Deposit name';

  @override
  String get payment_details_label_destination_iban => 'Destination IBAN';

  @override
  String get payment_details_label_blockchain_hash => 'Blockchain hash';

  @override
  String get payment_details_label_rate => 'Rate';

  @override
  String get payment_details_label_fees => 'Fees';

  @override
  String payment_details_fee_line_exchange(String amount) {
    return 'Exchange: $amount';
  }

  @override
  String payment_details_fee_line_withdrawal(String amount) {
    return 'Withdrawal: $amount';
  }

  @override
  String get payment_details_compliance_title => 'Under compliance review';

  @override
  String get payment_details_compliance_description =>
      'Your transaction is under a routine compliance review by our payment partner. Your funds are safe and we\'ll notify you as soon as the review clears.\n\nThere\'s nothing you need to do. The compliance team will reach out directly if any information is needed from you.\n\nIf the transaction is still pending two days from now, please contact us at support@bringin.xyz.';

  @override
  String get payment_details_action_retry_transaction => 'Retry Transaction';

  @override
  String get payment_details_toast_resumed =>
      'Transaction resumed successfully';

  @override
  String get payment_details_error_generic => 'Something went wrong!';

  @override
  String get payment_details_error_open_link => 'Failed to open link.';

  @override
  String get payment_details_copied => 'Copied to clipboard';

  @override
  String get payment_status_pending => 'Pending';

  @override
  String get payment_status_completed => 'Completed';

  @override
  String get payment_status_failed => 'Failed';

  @override
  String get manage_wallet_title => 'Manage Bitcoin wallet';

  @override
  String get manage_wallet_non_custodial_title => 'Non custodial wallet';

  @override
  String get manage_wallet_section_details => 'Wallet details';

  @override
  String get manage_wallet_section_transactions => 'Transactions';

  @override
  String get manage_wallet_row_backup => 'Wallet backup';

  @override
  String get manage_wallet_row_disconnect => 'Disconnect wallet';

  @override
  String get manage_wallet_no_recovery_phrase =>
      'No recovery phrase available.';

  @override
  String get manage_wallet_not_backed_up_banner =>
      'Wallet not backed up. Backup your wallet';

  @override
  String get manage_wallet_disconnect_confirm_title => 'Disconnect wallet?';

  @override
  String get manage_wallet_disconnect_confirm_message =>
      'Your Bitcoin wallet will be removed from this device. You’ll stay signed in to Bringin. If you have your recovery phrase, you can restore this wallet later.';

  @override
  String get manage_wallet_disconnect_payment_in_progress =>
      'You have a payment in progress. Disconnecting now may interrupt it.';

  @override
  String get manage_wallet_action_disconnect => 'Disconnect';

  @override
  String get manage_wallet_action_disconnect_anyway =>
      'I understand, disconnect anyway';

  @override
  String get manage_wallet_secure_now_title => 'Secure your Bitcoin now';

  @override
  String get manage_wallet_secure_now_message =>
      'Your wallet isn’t backed up. If you lose access, your Bitcoin will be permanently lost.';

  @override
  String get manage_wallet_secure_now_note =>
      'Bringin cannot recover it, as we do not store your keys.';

  @override
  String get action_retry => 'Retry';

  @override
  String get action_verify => 'Verify';

  @override
  String get error_unknown => 'An unknown error occurred';

  @override
  String receive_amount_sats(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sats',
      one: '1 sat',
    );
    return '$_temp0';
  }

  @override
  String receive_payment_received(String amount) {
    return 'Payment received: $amount';
  }

  @override
  String get add_money_title => 'Add money';

  @override
  String get add_money_scan_qr => 'Scan QR to add money.';

  @override
  String add_money_scan_qr_with_fee(String fee) {
    return 'Scan QR to add money. A flat fee of $fee sats applicable.';
  }

  @override
  String add_money_scan_qr_with_estimated_fee(String fee) {
    return 'Scan QR to add money. A flat fee of ~$fee sats applicable.';
  }

  @override
  String get add_money_scan_qr_fixed_invoice =>
      'Scan QR to add money. Add amount for fixed invoice.';

  @override
  String get add_money_use_bitcoin_wallet => 'Use your Bitcoin wallet';

  @override
  String get add_money_use_lightning_wallet => 'Use your Lightning wallet';

  @override
  String get add_money_label_onchain_address => 'On-chain address';

  @override
  String get add_money_label_invoice_amount => 'Invoice amount';

  @override
  String get add_money_label_invoice_code => 'Invoice code';

  @override
  String get add_money_ln_address_unavailable =>
      'Lightning address not available';

  @override
  String get receive_label_transaction_link => 'Transaction link';

  @override
  String get receive_label_transaction_fees => 'Transaction fees';

  @override
  String get receive_label_exchange_rate => 'Exchange rate';

  @override
  String get eur_amount_field_label => 'Amount in EUR';

  @override
  String get eur_amount_error_invalid => 'Please enter a valid amount';

  @override
  String eur_amount_rate(String rate) {
    return '1 BTC = $rate EUR';
  }

  @override
  String get fees_type_payment_request => 'payment request';

  @override
  String fees_message(String fee, String type, String warning) {
    return 'A fee of $fee sats is applied to this $type.$warning';
  }

  @override
  String get create_invoice_title => 'Bringin Invoice';

  @override
  String get create_invoice_error_parse => 'Failed to parse invoice';

  @override
  String get create_invoice_prompt =>
      'Enter the amount and description for the invoice';

  @override
  String get create_invoice_amount_label => 'Amount in sats';

  @override
  String create_invoice_minimum_hint(String min) {
    return 'Minimum amount: $min sats';
  }

  @override
  String get create_invoice_error_description_required =>
      'Description is required';

  @override
  String get create_invoice_error_description_too_long =>
      'Description must be 280 characters or less';

  @override
  String get create_invoice_action_creating => 'Creating...';

  @override
  String get receive_address_generating => 'Generating Bitcoin address...';

  @override
  String get receive_address_error_generate => 'Failed to generate address';

  @override
  String get receive_address_qr_instruction =>
      'Please scan the QR code from any Bitcoin wallet to complete the payment.';

  @override
  String receive_address_estimated_fee(String fee) {
    return 'Estimated claim fee: $fee sats';
  }

  @override
  String receive_address_estimated_fee_variable(String fee) {
    return 'Estimated claim fee: ~$fee sats (may vary with network conditions)';
  }

  @override
  String get receive_address_fee_note =>
      'A small fee will be deducted upon deposit.';

  @override
  String get receive_address_confirm_note =>
      'Most payments confirm within an hour, but sometimes it can take longer.';

  @override
  String get receive_deposit_waiting => 'Waiting for payment...';

  @override
  String receive_deposit_on_the_way(String sats) {
    return '+ $sats sats on the way';
  }

  @override
  String receive_deposit_on_the_way_conf(String sats, int confirmations) {
    return '+ $sats sats on the way ($confirmations/3 conf)';
  }

  @override
  String receive_deposit_claiming(String sats) {
    return 'Claiming $sats sats...';
  }

  @override
  String get receive_deposit_claimed => 'Deposit claimed!';

  @override
  String receive_deposit_confirmed(String sats) {
    return '$sats sats confirmed — claiming soon...';
  }

  @override
  String get buy_confirm_label_transaction_fee => 'Transaction Fee';

  @override
  String get buy_confirm_label_processing_fee => 'Processing Fee';

  @override
  String get buy_confirm_label_liquid_network_fee => 'Liquid Network Fee';

  @override
  String buy_confirm_label_discount(String percentage) {
    return 'Discount - Transaction Fee ($percentage%)';
  }

  @override
  String get buy_confirm_you_pay_approx => 'You pay ~';

  @override
  String buy_confirm_network_fee_suffix(String sats) {
    return ' + $sats sats network fee';
  }

  @override
  String get buy_confirm_error_insufficient_funds =>
      'Insufficient funds to pay';

  @override
  String get buy_confirm_error_status_failed => 'Transaction status failed!';

  @override
  String get buy_confirm_error_generic =>
      'Something went wrong. Please try again later.';

  @override
  String get buy_confirm_loader_preparing => 'Getting things ready for you.';

  @override
  String get buy_confirm_loader_confirming => 'Getting everything ready.';

  @override
  String get buy_confirm_status_verifying => 'Verifying, one moment.';

  @override
  String get buy_confirm_status_almost_there => 'Almost there, just a moment.';

  @override
  String get buy_confirm_status_finishing => 'Looking good! Finishing up.';

  @override
  String get buy_confirm_status_on_the_way =>
      'Your Bitcoin is on its way. Hang tight!';

  @override
  String get buy_invoice_loader_generating => 'Generating your invoice.';

  @override
  String get buy_invoice_default_description => 'Top Up - Buy Bitcoin to Breez';

  @override
  String get restore_phrase_title => 'Use recovery phrase';

  @override
  String get restore_phrase_instruction =>
      'Type in your complete 12-word recovery phrase.';

  @override
  String restore_phrase_word_hint(int index) {
    return 'Add word $index';
  }

  @override
  String get restore_phrase_action_submit => 'Recover wallet';

  @override
  String get restore_phrase_error_required => 'Required';

  @override
  String get restore_phrase_error_invalid_word => 'Invalid word';

  @override
  String get restore_password_title => 'Your cloud password';

  @override
  String get restore_password_message =>
      'Access your back up with the password you used for your cloud backup.';

  @override
  String get restore_password_action_unlock => 'Access backup';

  @override
  String get restore_password_error_incorrect =>
      'Incorrect password. Please try again.';

  @override
  String get action_delete => 'Delete';

  @override
  String get action_confirm => 'Confirm';

  @override
  String get connect_copied_lightning_address =>
      'Lightning address copied to clipboard';

  @override
  String get connect_copied_address => 'Address copied to clipboard';

  @override
  String get connect_copied_iban => 'IBAN copied to clipboard';

  @override
  String get connect_destination_bank => 'your bank';

  @override
  String get connect_destination_wallet => 'your wallet';

  @override
  String get connect_success_title => 'You\'re all set!';

  @override
  String get connect_success_message =>
      'You\'ve created a permanent connection.';

  @override
  String get connect_success_instruction_lightning =>
      'Send BTC via Lightning to this address — it\'ll arrive as euros in your bank, instantly.';

  @override
  String get connect_success_label_lightning_address =>
      'Your Lightning address:';

  @override
  String get connect_success_instruction_onchain =>
      'Send BTC to this address from any wallet — it\'ll arrive as euros in your bank, instantly.';

  @override
  String get connect_success_label_btc_address =>
      'Your dedicated Bitcoin deposit address:';

  @override
  String connect_success_instruction_viban(String destination) {
    return 'Send euros to this vIBAN from any bank — they\'ll arrive as Bitcoin in $destination, instantly.';
  }

  @override
  String get connect_success_label_viban => 'Your dedicated vIBAN:';

  @override
  String get connect_limits_heading => 'Allowed limits per transaction:';

  @override
  String get connect_limit_min => 'Min: 30 €';

  @override
  String connect_limit_max(String max) {
    return 'Max: $max €';
  }

  @override
  String get connect_manage_note =>
      'You may manage your connection anytime from Bringin Connect.';

  @override
  String get connect_action_go_to_connect => 'Go to Bringin Connect';

  @override
  String get connect_sell_success_title => 'Your sell connection is ready!';

  @override
  String get connect_sell_label_lightning_address => 'Your lightning address';

  @override
  String get connect_sell_label_btc_address => 'Your Bitcoin address';

  @override
  String get connect_sell_instruction_lightning =>
      'Send Bitcoin from any wallet to this lightning address— funds arrive instantly as euros in your account.';

  @override
  String get connect_sell_instruction_onchain =>
      'Send Bitcoin from any wallet to this Bitcoin address— funds arrive instantly as euros in your account.';

  @override
  String get connect_buy_success_title => 'Your buy connection is ready!';

  @override
  String get connect_buy_label_viban => 'Your dedicated vIBAN';

  @override
  String get connect_buy_instruction_viban =>
      'Send Bitcoin from any bank to this vIBAN— funds arrive instantly as Bitcoin in your wallet.';

  @override
  String get connect_loader_rotating_1 =>
      'The hamsters powering our servers are running extra fast.';

  @override
  String get connect_loader_rotating_2 =>
      'Brewing your connection with extra care...';

  @override
  String get connect_loader_rotating_3 =>
      'Hang tight — this is the boring part so you don\'t have to deal with it.';

  @override
  String get connect_loader_rotating_4 =>
      'Still here? Great. So are we. Working on it.';

  @override
  String get connect_loader_deleting_1 => 'Cleaning things up for you...';

  @override
  String get connect_loader_deleting_2 => 'Removing the connection safely...';

  @override
  String get connect_loader_deleting_3 => 'Hang tight — almost done.';

  @override
  String get connect_loader_deleting_4 => 'Still here? Great. Wrapping up.';

  @override
  String get connect_loader_finalising_deletion => 'Finalising the deletion...';

  @override
  String get connect_loader_final_touches =>
      'Putting the final touches on your connection...';

  @override
  String get connect_loader_almost_done =>
      'Almost done! Just a few more seconds.';

  @override
  String get connect_loader_may_take_minutes =>
      'It may take a couple of minutes.';

  @override
  String get connect_buy_loader_1 => 'Getting things ready...';

  @override
  String get connect_buy_loader_2 => 'Almost there...';

  @override
  String get connect_buy_loader_3 => 'Setting things up...';

  @override
  String get connect_buy_loader_4 => 'Finishing up...';

  @override
  String get connect_error_verify_failed =>
      'Unable to verify connection. Please try again.';

  @override
  String get connect_error_setup_failed =>
      'Connection setup failed. Please try again.';

  @override
  String get connect_error_resume_verification =>
      'Unable to resume verification. Please try again.';

  @override
  String get connect_error_timeout =>
      'Taking longer than expected. Check your connection and try again.';

  @override
  String get connect_error_network =>
      'Network unavailable. Please check your connection and try again.';

  @override
  String get connect_label_required => 'Label is required';

  @override
  String connect_label_too_short(int min) {
    return 'Label must be at least $min characters';
  }

  @override
  String get connect_label_duplicate => 'This name is already used';

  @override
  String get connect_buy_setup_title => 'Setup a buy connection';

  @override
  String get connect_buy_setup_description =>
      'Link your Bitcoin wallet to get a dedicated vIBAN. Send euros from any bank—funds arrive instantly as BTC in your wallet.';

  @override
  String get connect_field_label => 'Label';

  @override
  String get connect_field_label_hint_suffix => '(Destination name)';

  @override
  String get connect_buy_field_label_placeholder => 'Blue wallet';

  @override
  String get connect_buy_select_wallet => 'Select/ add your wallet';

  @override
  String get connect_buy_label_address => 'Address';

  @override
  String get connect_buy_error_load_addresses => 'Failed to load addresses';

  @override
  String get connect_buy_no_wallets =>
      'No onchain wallets found. Tap + to add one.';

  @override
  String get connect_buy_all_wallets_connected =>
      'All your onchain wallets already have a buy connection. Tap + to add a new wallet.';

  @override
  String get add_wallet_page_title => 'Add a new wallet';

  @override
  String get add_wallet_hint_address => 'Paste an address';

  @override
  String get add_wallet_label_field => 'Wallet label';

  @override
  String get add_wallet_hint_label => 'Add a label for this wallet';

  @override
  String get add_wallet_action_add => 'Add wallet';

  @override
  String get add_wallet_error_onchain_only =>
      'Only Bitcoin on-chain addresses are supported';

  @override
  String get add_wallet_error_invalid_address => 'Invalid Bitcoin address';

  @override
  String get add_wallet_error_activation_failed_retry =>
      'Address could not be activated. Try again.';

  @override
  String get add_wallet_error_not_found => 'Address not found. Try again.';

  @override
  String get add_wallet_error_activation_failed => 'Address activation failed.';

  @override
  String get add_wallet_error_verify_failed =>
      'Failed to verify address. Try again.';

  @override
  String get connect_verify_buy_title => 'Verify buy connection';

  @override
  String get connect_verify_passkey_prompt => 'Authenticate with your passkey.';

  @override
  String get connect_verify_totp_prompt =>
      'Enter the code from your authenticator app.';

  @override
  String get connect_verify_sms_prompt_prefix =>
      'Add the verification code sent to your ';

  @override
  String get connect_verify_sms_prompt_target => 'mobile number ';

  @override
  String get connect_verify_action_submit => 'Submit';

  @override
  String get connect_verify_action_passkey => 'Verify with passkey';

  @override
  String get connect_verify_action_passkey_retry => 'Try passkey again';

  @override
  String get connect_verify_action_use_sms => 'Use SMS instead';

  @override
  String get connect_verify_field_label => 'Enter code';

  @override
  String get connect_verify_error_generic => 'Something went wrong. Try again.';

  @override
  String get connect_verify_error_resend => 'Failed to resend code. Try again.';

  @override
  String get connect_verify_error_sms_switch =>
      'Couldn\'t switch to SMS. Try again.';

  @override
  String get connect_verify_error_cancel =>
      'Failed to cancel. Please try again.';

  @override
  String get connect_verify_cancel_dialog_title => 'Cancel connection setup?';

  @override
  String get connect_verify_cancel_dialog_message =>
      'If you go back now, the connection setup will be cancelled. You can start again anytime.';

  @override
  String get connect_verify_cancel_dialog_confirm => 'Cancel setup';

  @override
  String get connect_sell_setup_title => 'Setup a sell connection';

  @override
  String get connect_sell_setup_description =>
      'Link your bank account to get a dedicated Bitcoin address. Send Bitcoin from any wallet—funds arrive instantly as euros in your account.';

  @override
  String get connect_sell_field_label_placeholder => 'Wise';

  @override
  String get connect_sell_toast_beneficiary_added => 'Beneficiary added';

  @override
  String get connect_sell_error_ln_address_required =>
      'Lightning address is required';

  @override
  String connect_sell_error_ln_address_length(int min, int max) {
    return 'Must be $min-$max characters';
  }

  @override
  String get connect_sell_error_ln_address_charset =>
      'Only lowercase letters, numbers, hyphens and underscores allowed';

  @override
  String get connect_sell_ln_address_heading => 'Create your Lightning address';

  @override
  String get connect_sell_ln_address_description =>
      'Claim a unique Lightning address for your bank. We recommend including your bank name for clarity (e.g. yourname_bankname).';

  @override
  String get connect_sell_ln_address_hint => 'Add username/ handle';

  @override
  String get connect_sell_network_type => 'Network type';

  @override
  String get connect_sell_network_onchain_title => 'On-chain';

  @override
  String get connect_sell_network_onchain_description =>
      'We will generate the address for you.';

  @override
  String get connect_sell_network_lightning_title => 'Lightning';

  @override
  String get connect_sell_network_lightning_description =>
      'You can create your own username/ handle.';

  @override
  String get connect_sell_select_bank => 'Select/ add your bank';

  @override
  String get connect_sell_error_load_banks => 'Failed to load bank accounts';

  @override
  String get connect_sell_no_banks => 'No bank accounts yet. Tap + to add one.';

  @override
  String get connect_sell_bank_has_connections =>
      'There are existing connections with this bank.';

  @override
  String get connect_sell_bank_has_onchain =>
      'There is an on-chain connection with this bank.';

  @override
  String get connect_sell_bank_has_lightning =>
      'There is a lightning connection with this bank.';

  @override
  String get connect_verify_sell_title => 'Verify sell connection';

  @override
  String get connect_detail_fallback_name_buy => 'Buy Connection';

  @override
  String get connect_detail_fallback_name_sell => 'Sell Connection';

  @override
  String get connect_detail_type_buy => 'Buy connection';

  @override
  String get connect_detail_type_sell => 'Sell connection';

  @override
  String get connect_detail_deposit_label_viban => 'Your dedicated vIBAN';

  @override
  String get connect_detail_deposit_label_ln =>
      'Your dedicated Lightning address';

  @override
  String get connect_detail_deposit_label_onchain =>
      'Your dedicated Bitcoin address';

  @override
  String get connect_detail_destination_label_address => 'Destination address';

  @override
  String get connect_detail_banner_reenable_title =>
      'Review and re-enable connection';

  @override
  String get connect_detail_banner_reenable_buy =>
      'Please review your connection details and continue to re-enable it. As part of the Travel Rule requirement, you\'ll need to declare the nature of your destination address in the next steps. A fresh vIBAN will be issued for this Buy connection. Your linked destination wallet stays the same.';

  @override
  String get connect_detail_banner_reenable_ln_sell =>
      'Please review your connection details and continue to re-enable it. Your Lightning deposit address and linked bank account both stay the same — re-enabling reactivates the automatic conversion of incoming Lightning to euros.';

  @override
  String get connect_detail_banner_reenable_onchain_sell =>
      'Please review your connection details and continue to re-enable it. A fresh Bitcoin deposit address will be issued for this Sell connection. Your linked bank account stays the same.';

  @override
  String get connect_detail_banner_pending_passkey =>
      'This connection needs to be verified. Tap Activate to approve it with your passkey.';

  @override
  String get connect_detail_banner_pending_totp =>
      'This connection needs to be verified. Tap Activate to enter the code from your authenticator app.';

  @override
  String get connect_detail_banner_pending_sms =>
      'This connection needs to be verified. Tap Activate to enter the 6-digit code sent to your phone or email.';

  @override
  String get connect_detail_action_reenable => 'Re-enable';

  @override
  String get connect_detail_action_activate => 'Activate';

  @override
  String get connect_detail_error_activation_title => 'Activation failed';

  @override
  String get connect_detail_error_reenable_title => 'Re-enable failed';

  @override
  String get connect_detail_error_delete_title => 'Delete failed';

  @override
  String get connect_detail_error_missing_destination_address =>
      'This connection is missing its destination address. Contact support to recover it.';

  @override
  String get connect_detail_error_missing_destination_iban =>
      'This connection is missing its destination IBAN. Contact support to recover it.';

  @override
  String get connect_detail_error_beneficiary_not_found =>
      'Couldn\'t find the bank account this connection was linked to. Try creating a new sell connection from the Connect tab.';

  @override
  String get connect_detail_error_missing_standing_order =>
      'Unable to delete: missing standing order ID.';

  @override
  String get connect_detail_error_unexpected_response =>
      'Unexpected response from server.';

  @override
  String get connect_detail_toast_deleted => 'Connection deleted';

  @override
  String get connect_detail_sca_delete_title =>
      'Verify to delete this connection';

  @override
  String get connect_detail_sca_delete_subtitle_passkey =>
      'Verify it\'s you with your face or fingerprint.';

  @override
  String get connect_detail_sca_delete_action => 'Delete connection';

  @override
  String get connect_detail_error_load_transactions =>
      'Failed to load transactions.';

  @override
  String get connect_detail_action_load_more => 'Load more';

  @override
  String get connect_detail_delete_dialog_title => 'Delete connection?';

  @override
  String get connect_detail_delete_dialog_message =>
      'Delete this Connection for your Wallet? You can add them again later.';

  @override
  String get connect_detail_delete_dialog_confirm => 'Confirm delete';

  @override
  String get exception_account_setup_in_progress =>
      'Your account is being set up. Please wait a moment.';

  @override
  String get exception_auto_swap_required =>
      'Set up auto-swap to sell Bitcoin to your bank account.';

  @override
  String get exception_beneficiary_not_trusted =>
      'This account needs to be verified before you can sell to it.';

  @override
  String get exception_blink_oauth_generic =>
      'Unable to complete the Blink OAuth process at this time. Please try again later.';

  @override
  String get exception_breez_relay_rate_limited =>
      'Too many Breez link changes. Please wait a while and try again.';

  @override
  String get exception_card_link_account_already_linked =>
      'This card is already linked to that account.';

  @override
  String get exception_card_link_account_card_closed =>
      'This card is closed and can\'t be updated.';

  @override
  String get exception_card_link_account_provisioning =>
      'Setting up your card balance — please try again in a moment.';

  @override
  String get exception_card_wallet_send_onchain_insufficient_balance =>
      'Insufficient card balance to complete this withdrawal.';

  @override
  String get exception_card_wallet_topup_insufficient_balance =>
      'Insufficient EUR balance to top up your Bitcoin card.';

  @override
  String get exception_cashback_withdraw_generic =>
      'Unable to withdraw cashback at this time. Please try again later.';

  @override
  String get exception_check_blink_ln_invoice_status_generic =>
      'Unable to check the status of the Blink LN invoice at this time. Please try again later.';

  @override
  String get exception_concurrent_request =>
      'Another request is already in progress. Please wait.';

  @override
  String get exception_confirm_striga_consent_generic =>
      'Unable to confirm Striga consent at this time. Please try again later.';

  @override
  String get exception_create_blink_ln_invoice_generic =>
      'Unable to create a Blink LN invoice at this time. Please try again later.';

  @override
  String get exception_create_blink_onchain_address_generic =>
      'Unable to create a Blink on-chain address at this time. Please try again later.';

  @override
  String get exception_create_card_prepayment_generic =>
      'Unable to create the card prepayment at this time. Please try again later.';

  @override
  String get exception_delete_beneficiary_generic =>
      'Failed to delete beneficiary. Please try again later.';

  @override
  String get exception_delete_card_generic =>
      'Unable to delete the card at this time. Please try again later.';

  @override
  String get exception_discount_price_generic =>
      'Unable to retrieve the discount price at this time. Please try again later.';

  @override
  String get exception_duplicate_bringin_link =>
      'A connection already exists for this recipient.';

  @override
  String get exception_duplicate_destination_address =>
      'A connection already exists for this Bitcoin address.';

  @override
  String get exception_duplicate_iban =>
      'A connection already exists for this bank account.';

  @override
  String get exception_edit_beneficiary_generic =>
      'Failed to edit beneficiary. Please try again later.';

  @override
  String get exception_email_not_verified_for_ln_address =>
      'Verify your email before reserving a Lightning address.';

  @override
  String get exception_export_transaction_generic =>
      'Unable to export transactions. Please try again later.';

  @override
  String get exception_fiat_setup_generic =>
      'Couldn\'t finish setting up your Euro account. Try again later.';

  @override
  String get exception_fiat_setup_in_progress =>
      'Setup is already in progress.';

  @override
  String get exception_fiat_setup_requires_session =>
      'Please complete verification and try again.';

  @override
  String get exception_forgot_password_session_expired =>
      'Password reset session expired. Please start the flow again.';

  @override
  String get exception_freeze_card_generic =>
      'Unable to freeze the card at this time. Please try again later.';

  @override
  String get exception_get_affiliate_participation_generic =>
      'Unable to retrieve the affiliate participation at this time. Please try again later.';

  @override
  String get exception_get_affiliate_program_generic =>
      'Unable to retrieve the affiliate program at this time. Please try again later.';

  @override
  String get exception_get_all_cards_generic =>
      'Unable to retrieve all cards at this time. Please try again later.';

  @override
  String get exception_get_balance_generic =>
      'Unable to retrieve balance. Please try again later.';

  @override
  String get exception_get_bank_details_generic =>
      'Unable to retrieve bank details at this time. Please try again later.';

  @override
  String get exception_get_blink_account_details_generic =>
      'Unable to retrieve Blink account details at this time. Please try again later.';

  @override
  String get exception_get_card_details_by_card_id_generic =>
      'Unable to retrieve the card details at this time. Please try again later.';

  @override
  String get exception_get_card_prepayment_info_generic =>
      'Unable to retrieve the card prepayment information at this time. Please try again later.';

  @override
  String get exception_get_card_pricing_generic =>
      'Unable to retrieve the card pricing at this time. Please try again later.';

  @override
  String get exception_get_card_statements_generic =>
      'Unable to retrieve the card statements at this time. Please try again later.';

  @override
  String get exception_get_card_wallet_balance_generic =>
      'Unable to retrieve card wallet balance. Please try again later.';

  @override
  String get exception_get_details_by_email_generic =>
      'Unable to retrieve details for the provided email. Please try again later.';

  @override
  String get exception_get_offramp_order_status_generic =>
      'Unable to retrieve off-ramp order status at this time. Please try again later.';

  @override
  String get exception_get_onboarding_info_params_generic =>
      'Unable to get onboarding info params at this time. Please try again later.';

  @override
  String get exception_get_onramp_order_status_generic =>
      'Unable to retrieve on-ramp order status at this time. Please try again later.';

  @override
  String get exception_get_transaction_generic =>
      'Unable to retrieve transaction details. Please try again later.';

  @override
  String get exception_host_lookup =>
      'Please check your internet connection or try again later.';

  @override
  String get exception_invalid_btc_address =>
      'Invalid Bitcoin address. Please check and try again.';

  @override
  String get exception_invalid_sca_login_code =>
      'That code isn\'t right. Try again.';

  @override
  String get exception_invalid_totp_code =>
      'That code isn\'t right. Try the newest one shown in your app.';

  @override
  String get exception_lightning_address_amount_out_of_range =>
      'The amount is outside the limits set by the recipient\'s wallet. Adjust the amount and try again.';

  @override
  String get exception_lightning_address_invalid =>
      'This isn\'t a valid Lightning address. Check it and try again.';

  @override
  String get exception_lightning_address_invoice_mismatch =>
      'The recipient\'s wallet returned an invoice with the wrong amount. Please try again.';

  @override
  String get exception_lightning_address_is_bringin =>
      'You can\'t send to a Bringin Lightning address. Use an external wallet address.';

  @override
  String get exception_lightning_address_not_declared =>
      'This Lightning address hasn\'t been declared yet. Re-save it from the add-wallet screen and try again.';

  @override
  String get exception_lightning_address_provider_unreachable =>
      'The recipient\'s wallet provider didn\'t respond. Try again, or ask the recipient to share an invoice instead.';

  @override
  String get exception_lightning_travel_rule_cap =>
      'Lightning transfers are capped at €990. Lower the amount or choose an on-chain wallet.';

  @override
  String get exception_limit_increase_not_tier2 =>
      'Limit increases are available for tier 2 users only.';

  @override
  String get exception_list_bringin_links_generic =>
      'Unable to fetch connections. Please try again.';

  @override
  String get exception_ln_address_already_claimed =>
      'You already have a Lightning address.';

  @override
  String get exception_ln_address_exists =>
      'This Lightning address is already taken.';

  @override
  String get exception_ln_invoice_already_in_use =>
      'That invoice is already tied to another order. Go back and start the buy again.';

  @override
  String get exception_lnurl_amount_above_maximum =>
      'This amount is above the maximum this destination accepts. Lower the amount.';

  @override
  String get exception_lnurl_amount_below_minimum =>
      'This amount is below the minimum this destination accepts. Increase the amount.';

  @override
  String get exception_mobile_number_in_use =>
      'Mobile number already in use. Please use a different phone number to continue.';

  @override
  String get exception_non_sms_challenge =>
      'This code can\'t be re-sent. Use your authenticator or passkey instead.';

  @override
  String get exception_offramp_rate_generic =>
      'Unable to retrieve off-ramp rate. Please try again later.';

  @override
  String get exception_participate_in_affiliate_program_generic =>
      'Unable to participate in the affiliate program at this time. Please try again later.';

  @override
  String get exception_password_expired =>
      'Your password has expired. Please set a new one to continue.';

  @override
  String get exception_previously_used_password =>
      'You\'ve used this password before. Please choose a new one.';

  @override
  String get exception_probe_blink_ln_fee_generic =>
      'Unable to probe the Blink LN fee at this time. Please try again later.';

  @override
  String get exception_recaptcha_generic => 'Unable to complete verification.';

  @override
  String get exception_register_push_token_generic =>
      'Unable to register push token. Please try again later.';

  @override
  String get exception_request_wallet_access_generic =>
      'Unable to request wallet access at this time. Please try again later.';

  @override
  String get exception_restricted_jurisdiction =>
      'Transaction cannot be done from your current location.';

  @override
  String get exception_resume_offramp_swap_generic =>
      'Unable to resume offramp swap at this time. Please try again later.';

  @override
  String get exception_sca_read_window_expired =>
      'Please verify to export transactions older than 90 days.';

  @override
  String get exception_sca_resend_challenge_not_found =>
      'That verification session has expired. Start again.';

  @override
  String get exception_sca_volume_limit =>
      'You\'ve reached your account\'s transaction limit. Your funds are safe — contact support to review and increase your limit.';

  @override
  String get exception_send_blink_ln_payment_generic =>
      'Unable to send this LN payment at this time. Please try again later.';

  @override
  String get exception_swap_current_amount_in_offramp_order_generic =>
      'Unable to swap the current amount in offramp order at this time. Please try again later.';

  @override
  String get exception_too_many_pending_bringin_links =>
      'Too many pending connections. Please confirm or wait for existing ones to expire.';

  @override
  String get exception_totp_adopt_already_enrolled =>
      'Authenticator sign-in is already switched on for this account.';

  @override
  String get exception_totp_adopt_no_credential =>
      'No existing authenticator found for this account. Set one up instead.';

  @override
  String get exception_totp_not_allowed =>
      'Authenticator-app two-factor isn\'t available on this account yet.';

  @override
  String get exception_unfreeze_card_generic =>
      'Unable to unfreeze the card at this time. Please try again later.';

  @override
  String get exception_unregister_push_token_generic =>
      'Unable to unregister push token. Please try again later.';

  @override
  String get exception_update_card_limits_generic =>
      'Unable to update the card limits at this time. Please try again later.';

  @override
  String get exception_update_card_method_generic =>
      'Unable to update the card method at this time. Please try again later.';

  @override
  String get exception_update_travel_rule_options_generic =>
      'Couldn\'t save your Auto declaration setting. Try again in a moment.';

  @override
  String get exception_update_user_details_generic =>
      'Unable to update user details at this time. Please try again later.';

  @override
  String get exception_validate_ip_generic =>
      'Unable to validate the IP address at this time. Please try again later.';

  @override
  String get exception_verify_mobile_otp_generic =>
      'Unable to verify the mobile OTP at this time. Please try again later.';

  @override
  String get exception_wallet_verification_required =>
      'This wallet needs a one-time ownership check for transfers of €1,000 or more. Verify to continue.';

  @override
  String get action_save => 'Save';

  @override
  String get action_update => 'Update';

  @override
  String get action_report => 'Report';

  @override
  String get action_got_it => 'Got it';

  @override
  String get card_activate_title => 'Activate card';

  @override
  String get card_activate_description =>
      'Activate your Physical card once you receive it.';

  @override
  String card_activate_description_masked(String last4) {
    return 'Activate your Physical card •••••$last4 once you receive it.';
  }

  @override
  String get card_activate_field_last4 => 'Add the last 4 digits of your card';

  @override
  String get card_activate_field_pin => 'Set PIN';

  @override
  String get card_activate_field_pin_confirm => 'Confirm PIN';

  @override
  String get card_activate_toast_success => 'Card activated.';

  @override
  String get card_activate_error_pin_weak =>
      'Avoid repeating or sequential digits.';

  @override
  String get card_activate_error_pin_mismatch => 'PINs do not match.';

  @override
  String get card_activate_error_failed =>
      'We couldn\'t activate your card. Please try again.';

  @override
  String get card_activate_error_pin_not_set =>
      'Card activated, but we couldn\'t set your PIN. Please try again from the card screen.';

  @override
  String card_detail_title_physical(String last4) {
    return 'Physical card ....$last4';
  }

  @override
  String card_detail_title_virtual(String last4) {
    return 'Virtual card ....$last4';
  }

  @override
  String get card_label_linked_account => 'Linked account';

  @override
  String get card_linked_euro => 'Linked: Euro account';

  @override
  String get card_linked_bitcoin => 'Linked: Bitcoin account';

  @override
  String get card_toast_reported_missing => 'Card reported as missing';

  @override
  String get card_toast_removed => 'Card removed';

  @override
  String get card_toast_closed => 'Card closed successfully';

  @override
  String get card_error_toggle_online => 'Couldn\'t update online payments.';

  @override
  String get card_error_toggle_contactless =>
      'Couldn\'t update contactless payments.';

  @override
  String get card_error_toggle_atm => 'Couldn\'t update ATM withdrawals.';

  @override
  String get card_error_freeze => 'Couldn\'t freeze the card.';

  @override
  String get card_error_unfreeze => 'Couldn\'t unfreeze the card.';

  @override
  String get card_action_manage => 'Manage card';

  @override
  String get card_action_remove => 'Remove card';

  @override
  String get card_action_close => 'Close card';

  @override
  String get card_action_replace => 'Replace card';

  @override
  String get card_action_replace_physical => 'Replace physical card';

  @override
  String get card_action_view_3ds => 'View 3DS password';

  @override
  String get card_action_reset_3ds => 'Reset 3DS password';

  @override
  String get card_action_reset_atm_pin => 'Reset ATM PIN';

  @override
  String get card_action_report_missing => 'Card missing?';

  @override
  String get card_toggle_online => 'Online payments';

  @override
  String get card_toggle_atm => 'ATM withdrawals';

  @override
  String get card_toggle_contactless => 'Contactless payments';

  @override
  String get card_tx_error_load => 'Couldn\'t load transactions';

  @override
  String get card_tx_error_load_more => 'Couldn\'t load more';

  @override
  String get payment_details_label_merchant_name => 'Merchant name';

  @override
  String get payment_details_label_merchant_location => 'Merchant location';

  @override
  String get payment_details_label_merchant_category =>
      'Merchant category code';

  @override
  String get payment_details_label_original_amount => 'Original amount';

  @override
  String get payment_details_label_linked_account_id => 'Linked account ID';

  @override
  String get card_tx_type_creation_fee => 'Card creation fee';

  @override
  String get card_tx_type_atm_withdrawal => 'ATM withdrawal';

  @override
  String get card_tx_type_refund => 'Card refund';

  @override
  String get card_tx_type_payment_declined => 'Card payment declined';

  @override
  String get card_linked_update_title => 'Update linked account';

  @override
  String get card_linked_option_bitcoin => 'Bitcoin account';

  @override
  String get card_linked_limit_title => 'Card limit reached';

  @override
  String card_linked_limit_message(int max, String destination) {
    return 'You already have $max cards linked to your $destination. Close one before linking another card here.';
  }

  @override
  String get card_limits_title => 'Card limits';

  @override
  String get card_limits_toast_updated => 'Card limits updated.';

  @override
  String get card_limits_error_update => 'Couldn\'t update card limits.';

  @override
  String get card_limits_error_txn_over_daily =>
      'Transaction limit cannot exceed daily limit.';

  @override
  String get card_limits_error_daily_over_monthly =>
      'Daily limit cannot exceed monthly limit.';

  @override
  String get card_limits_error_txn_over_monthly =>
      'Transaction limit cannot exceed monthly limit.';

  @override
  String get card_limits_section_pos_description =>
      'Limit for physical stores.';

  @override
  String get card_limits_section_online => 'Online';

  @override
  String get card_limits_section_online_description =>
      'On e-commerce and digital platforms.';

  @override
  String get card_limits_section_contactless => 'Contactless';

  @override
  String get card_limits_section_contactless_description =>
      'Cap for tap-and-go purchases.';

  @override
  String get card_limits_section_atm => 'ATM Withdrawals';

  @override
  String get card_limits_section_atm_description =>
      'Maximum cash you can withdraw.';

  @override
  String get card_limits_section_overall => 'Overall';

  @override
  String get card_limits_section_overall_description =>
      'Combined spending cap across all categories.';

  @override
  String get card_limits_period_daily => 'Daily';

  @override
  String get card_limits_period_monthly => 'Monthly';

  @override
  String get card_limits_period_transaction => 'Per transaction';

  @override
  String card_limits_slider_max(String amount) {
    return 'Max $amount';
  }

  @override
  String get card_coming_soon => 'Coming soon';

  @override
  String get card_replace_title => 'Proceed with card replacement?';

  @override
  String get card_replace_message =>
      'Your current card deactivates instantly, and a new card ships to your address.\n\nIt will be delivered to the same address using the same delivery method.';

  @override
  String get card_reveal_target_details => 'Card details';

  @override
  String get card_reveal_target_pin => 'Card PIN';

  @override
  String get card_reveal_target_3ds => 'Card 3DS password';

  @override
  String get card_reveal_verify_title => 'Verify it\'s you';

  @override
  String get card_reveal_verify_prompt_prefix =>
      'Add the verification code sent to your mobile number ';

  @override
  String get card_reveal_verify_prompt_suffix =>
      '. This is a security measure to keep your account safe.';

  @override
  String get card_reveal_toast_code_resent => 'Code sent again.';

  @override
  String get card_reveal_error_resend => 'Couldn\'t resend code. Try again.';

  @override
  String get card_reveal_error_send_code => 'Couldn\'t send verification code';

  @override
  String get card_reveal_error_session_expired =>
      'Session expired. Please verify again.';

  @override
  String get card_reveal_error_load_details =>
      'Couldn\'t load card details. Try again.';

  @override
  String get card_reveal_error_invalid_code =>
      'That code didn\'t work. Please try again.';

  @override
  String get card_reveal_label_number => 'Card number';

  @override
  String get card_reveal_label_expiry => 'Expiry date';

  @override
  String get card_reveal_label_name => 'Name on the card';

  @override
  String get card_reveal_toast_number_copied => 'Card number copied';

  @override
  String get card_reveal_toast_pin_copied => 'PIN copied';

  @override
  String get card_reveal_toast_3ds_copied => '3DS password copied';

  @override
  String get card_field_error_load => 'Could not load card field.';

  @override
  String card_field_error_load_named(String field) {
    return 'Couldn\'t load $field.';
  }

  @override
  String get card_consent_error_unknown => 'An unknown error occurred.';

  @override
  String get card_consent_error_malformed =>
      'Malformed consent response from Striga.';

  @override
  String get card_consent_error_unknown_code => 'Unknown consent error.';

  @override
  String get card_consent_error_unreachable =>
      'Couldn\'t reach the verification service.';

  @override
  String get card_close_title_remove => 'Remove this card?';

  @override
  String get card_close_title_close => 'Close your card?';

  @override
  String get card_close_message_expired =>
      'This card has already expired, so there is nothing left to close. Removing it just takes it off your list — you\'ll still be able to view past transactions.';

  @override
  String get card_close_message =>
      'Closing your card is permanent. You\'ll still be able to view past transactions.';

  @override
  String get card_close_error_remove => 'Couldn\'t remove the card.';

  @override
  String get card_close_error_close => 'Couldn\'t close the card.';

  @override
  String get card_missing_title => 'Report card missing?';

  @override
  String get card_missing_message =>
      'Your card will be blocked for future use. You can still access your card transactions.';

  @override
  String get card_missing_error => 'Couldn\'t report the card as missing.';

  @override
  String get card_label_3ds_password => '3DS password';

  @override
  String get card_3ds_field_hint => 'Add 3DS password';

  @override
  String get card_3ds_field_confirm_label => 'Confirm 3DS password';

  @override
  String get card_3ds_field_confirm_hint => 'Re-enter 3DS password';

  @override
  String get card_3ds_error_mismatch => 'Passwords don\'t match.';

  @override
  String card_3ds_special_chars(String chars) {
    return 'Supported special characters are:\n$chars';
  }

  @override
  String get card_atm_pin_title => 'Reset your card PIN at an ATM';

  @override
  String get card_atm_pin_message =>
      'Changing your card PIN isn\'t available in the app yet. For now, you can reset it at any ATM that supports PIN changes.\n\nWe\'re working on adding in-app PIN changes in an upcoming release.';

  @override
  String get card_send_sheet_prompt => 'Where to send?';

  @override
  String get card_send_option_bitcoin => 'Send to Bitcoin wallet';

  @override
  String get card_send_option_euro => 'Send to Euro account';

  @override
  String get card_send_option_external => 'Send to external wallets';

  @override
  String get card_send_subtitle_bitcoin => 'Card balance to Bitcoin wallet';

  @override
  String get card_send_subtitle_euro => 'Card balance to Euro account';

  @override
  String get card_send_subtitle_external => 'Card balance to external wallet';

  @override
  String get card_send_step_recipient => 'Recipient';

  @override
  String get card_send_step_verify => 'Verify & pay';

  @override
  String get card_send_use_full_balance => 'Use the full Card balance';

  @override
  String get card_send_action_wallet => 'Send to wallet';

  @override
  String get card_send_processing => 'Sending money...';

  @override
  String get card_send_invoice_description => 'Card balance withdraw';

  @override
  String get card_send_lnurl_comment => 'Send from Bringin card';

  @override
  String card_send_error_ln_cap(int cap) {
    return 'Lightning transfers are capped at €$cap. Lower the amount.';
  }

  @override
  String card_send_error_ln_cap_external(int cap) {
    return 'Lightning transfers are capped at €$cap. Lower the amount or choose an on-chain wallet.';
  }

  @override
  String card_send_failure_reason(String status) {
    return 'Transaction $status';
  }

  @override
  String get card_send_otp_error_expired =>
      'Verification code expired. Tap resend or try again.';

  @override
  String get card_send_otp_error_generic =>
      'Couldn\'t verify your code. Please try again.';

  @override
  String get card_send_otp_resent => 'Verification code resent';

  @override
  String get card_send_sca_title_swap => 'Verify Card balance swap';

  @override
  String get card_send_sca_action_swap => 'Verify and swap';

  @override
  String send_amount_error_minimum_btc_symbol(String min) {
    return 'Minimum is ฿$min';
  }

  @override
  String get card_send_error_zero_invoice =>
      'Zero-amount invoices are not supported. Use one with an embedded amount.';

  @override
  String get card_send_detected_btc_address =>
      'Bitcoin address detected — tap Next to save it as a wallet.';

  @override
  String get card_send_error_unrecognised => 'Unrecognised address or invoice';

  @override
  String get card_send_select_recipient => 'Select or add recipient';

  @override
  String get card_send_error_load_wallets =>
      'Could not load saved wallets. Pull to retry.';

  @override
  String get card_send_no_wallets =>
      'No saved wallets yet. Tap + to add one, or paste a Lightning invoice above.';

  @override
  String get card_send_error_resave =>
      'Could not re-save the wallet. Try again.';

  @override
  String get card_send_resave_title => 'Re-save this wallet';

  @override
  String get card_send_resave_message =>
      'This Lightning address was saved before EU Travel Rule. Re-save it to enable payments.';

  @override
  String get card_send_action_resave => 'Re-save';

  @override
  String get card_add_sheet_prompt => 'How to fund?';

  @override
  String get card_add_option_bitcoin => 'Fund with Bitcoin wallet';

  @override
  String get card_add_option_euro => 'Fund with Euro account';

  @override
  String get card_add_option_external => 'Fund with external wallets';

  @override
  String get card_add_subtitle_bitcoin => 'Bitcoin wallet to Card balance';

  @override
  String get card_add_subtitle_euro => 'Euro account to Card balance';

  @override
  String get card_add_subtitle_external => 'External wallet to Card balance';

  @override
  String get card_add_use_full_btc_balance =>
      'Use the full Bitcoin wallet balance';

  @override
  String get card_add_use_full_eur_balance =>
      'Use the full Euro account balance';

  @override
  String get card_add_field_amount => 'Add to Card balance';

  @override
  String get card_add_field_send_from_euro => 'Send from Euro account';

  @override
  String get card_add_field_btc_receives => 'Card balance gets';

  @override
  String get card_add_action_swipe => 'Swipe to add';

  @override
  String get card_add_error_address_unavailable =>
      'Card balance address is not available. Please try again.';

  @override
  String get card_add_sca_title_topup => 'Verify Card balance topup';

  @override
  String card_add_deposit_status(String status) {
    return 'Deposit $status';
  }

  @override
  String get card_add_tab_onchain => 'Onchain';

  @override
  String get card_add_onchain_heading => 'Use an external wallet';

  @override
  String get card_add_onchain_description =>
      'Scan QR to add money. A flat fee of 50 sats applicable.';

  @override
  String get card_add_onchain_notice =>
      'You\'ll be required to declare the source of funds once the deposit is received. Deposits above €1,000 are not permitted from wallets owned by another individual or company.';

  @override
  String get card_add_ln_heading => 'Use a Lightning wallet';

  @override
  String get card_add_ln_description =>
      'Scan QR or copy the address to receive money instantly.';

  @override
  String card_add_ln_notice(String cap) {
    return 'You\'ll be required to declare the source of funds once the deposit is received. Lightning deposits are capped at €$cap per transaction under EU Travel Rule.';
  }

  @override
  String get card_add_label_ln_address => 'Lightning address';

  @override
  String send_amount_error_minimum_eur(String min) {
    return 'Minimum is €$min';
  }

  @override
  String get card_create_error_name_empty => 'Name on card can\'t be empty.';

  @override
  String get card_create_error_name_too_short =>
      'Name must be at least 4 characters.';

  @override
  String get card_create_error_name_too_long =>
      'Name must be 40 characters or less.';

  @override
  String get card_create_error_name_charset =>
      'Name can only contain Latin letters (A-Z, a-z).';

  @override
  String get card_create_error_address_empty => 'Address can\'t be empty.';

  @override
  String get card_create_error_city_empty => 'City can\'t be empty.';

  @override
  String get card_create_error_postal_empty => 'Postal code can\'t be empty.';

  @override
  String get card_create_toast_ordered_pending_relink =>
      'Card ordered. Switching to your Card balance is pending — try again from card details if it doesn\'t update shortly.';

  @override
  String get card_create_toast_created_pending_relink =>
      'Card created. Switching to your Card balance is pending — try again from card details if it doesn\'t update shortly.';

  @override
  String get card_create_toast_physical_success =>
      'Physical card ordered successfully!';

  @override
  String get card_create_error_invalid_3ds =>
      'We couldn\'t create the card. Please check that your 3DS password only contains allowed characters and try again.';

  @override
  String get card_create_physical_title => 'Create a physical card';

  @override
  String card_create_limit_message(int max, String destination) {
    return 'You already have $max cards linked to your $destination. Close one to create a new card.';
  }

  @override
  String card_create_fee_notice(String fee) {
    return 'Your linked account pays €$fee as a card creation fee once the card is created.';
  }

  @override
  String get card_create_fee_loading => 'Loading card creation fee...';

  @override
  String get card_create_field_name_hint => 'Add a name';

  @override
  String get card_create_field_3ds_label => 'New 3DS password';

  @override
  String get card_create_delivery_title => 'Card delivery';

  @override
  String get card_create_field_address1 => 'Address (line 1)';

  @override
  String get card_create_field_address1_hint => 'Add your address';

  @override
  String get card_create_field_address2 => 'Address (line 2)';

  @override
  String get card_create_field_address2_hint => 'Use if your address is longer';

  @override
  String get card_create_field_city => 'City';

  @override
  String get card_create_field_city_hint => 'Your city';

  @override
  String get card_create_field_postal => 'Postal code';

  @override
  String get card_create_field_postal_hint => 'Add code';

  @override
  String get card_create_field_region => 'Region/State';

  @override
  String get card_create_field_country => 'Country';

  @override
  String get card_create_delivery_tracked => 'Tracked post';

  @override
  String card_create_delivery_tracked_detail(String price) {
    return 'Arrives within 10 days | €$price';
  }

  @override
  String get card_create_delivery_express => 'Express delivery';

  @override
  String card_create_delivery_express_detail(String price) {
    return 'Arrives within 3 days | €$price';
  }

  @override
  String get card_create_delivery_express_prefix => 'Arrives within 3 days | ';

  @override
  String get card_create_delivery_free => 'Free';

  @override
  String get card_password_rule_length => '8 to 36 characters';

  @override
  String get card_password_rule_capital => 'A capital letter';

  @override
  String get card_password_rule_digit => 'A digit';

  @override
  String get card_password_rule_lowercase => 'A lowercase letter';

  @override
  String get card_password_rule_special => 'A special character';

  @override
  String get card_password_rule_allowed => 'Only allowed characters';

  @override
  String get card_create_action_create => 'Create card';

  @override
  String get card_create_virtual_title => 'Create a virtual card';

  @override
  String get card_balance_manage_title => 'Manage Card balance';

  @override
  String get card_balance_custodial_title => 'Custodial wallet';

  @override
  String get card_balance_custodial_description =>
      'Your card balance is a custodial Bitcoin wallet, designed for seamless card transactions.';

  @override
  String get card_balance_error_load_transactions =>
      'Couldn\'t load your transactions.';

  @override
  String get card_prepayment_success_title =>
      'Thank you for your card prepayment! 🎉';

  @override
  String get card_prepayment_error_bank_app =>
      'Couldn\'t open your bank\'s app. Try approving in the browser instead.';

  @override
  String get profile_anon_card_error =>
      'We couldn\'t activate your card. Please check your details and try again.';

  @override
  String get profile_anon_card_title => 'Activate Anonymous Card';

  @override
  String get profile_anon_card_subtitle =>
      'Link your free debit card to your account with no extra cost';

  @override
  String get profile_anon_card_field_code => 'Activation Code';

  @override
  String get profile_anon_card_field_code_hint => 'Code on your envelope';

  @override
  String get profile_anon_card_action => 'Link card';

  @override
  String get profile_auto_decl_error =>
      'Couldn\'t save that change. Try again in a moment.';

  @override
  String get profile_auto_decl_title => 'Auto wallet declaration';

  @override
  String get profile_auto_decl_subtitle => 'Save your wallet preferences';

  @override
  String get profile_auto_decl_intro =>
      'Tell us whether you normally buy to and sell from wallets you own. We\'ll use your choices as the default so you don\'t have to confirm this every time. For transfers over €1,000, we may still need to verify that you control the wallet, as required by EU rules.';

  @override
  String get profile_auto_decl_buy_title => 'Buy to my own wallet';

  @override
  String get profile_auto_decl_buy_subtitle =>
      'Automatically treat new Bitcoin buys as going to a wallet I own.';

  @override
  String get profile_auto_decl_sell_title => 'Sell from my own wallet';

  @override
  String get profile_auto_decl_sell_subtitle =>
      'Automatically treat new Bitcoin sells as coming from a wallet I own.';

  @override
  String get profile_auto_decl_footnote =>
      'These preferences apply only to new wallet addresses you add. Your existing wallet declarations won\'t change.';

  @override
  String get profile_backup_required_title => 'Backup required';

  @override
  String get profile_backup_required_heading => 'Backup your wallet';

  @override
  String get profile_backup_required_action => 'I understand, logout';

  @override
  String get profile_backup_required_ack =>
      'I understand that without a backup, my Bitcoin will be permanently lost and cannot be recovered.';

  @override
  String get profile_backup_required_warning =>
      'No backup = permanent loss. We don’t hold your keys or control your Bitcoin.';

  @override
  String get profile_delete_title => 'Delete account';

  @override
  String get profile_delete_confirm_heading => 'Are you sure?';

  @override
  String get profile_delete_body =>
      'If you delete your account on Bringin, all your previous transaction history and other transaction-related details will also be deleted.';

  @override
  String get profile_delete_note =>
      'Note: There are some details that our partners with whom we work are obligated to save for compliance reasons. More details about them are in the privacy policies. For more information, contact us at support@bringin.xyz';

  @override
  String get profile_delete_action => 'Yes, delete my account';

  @override
  String get profile_delete_done_title => 'Account deleted';

  @override
  String get profile_delete_done_body =>
      'If you wish to have an account with Bringin again with the same email address and mobile number, contact us at support@bringin.xyz';

  @override
  String get profile_delete_action_home => 'Go to home';

  @override
  String get profile_delete_error_password_empty =>
      'Your password can\'t be empty';

  @override
  String get profile_delete_error_password_invalid => 'Invalid password';

  @override
  String get profile_export_title => 'Transaction statement';

  @override
  String get profile_export_intro =>
      'Select the period and format for your transaction statement. We\'ll email the export to your registered address ';

  @override
  String get profile_export_label_from => 'From';

  @override
  String get profile_export_label_format => 'Download format';

  @override
  String get profile_export_action_select_date => 'Select date';

  @override
  String get profile_export_action => 'Export';

  @override
  String get profile_export_toast_sent => 'Email sent.';

  @override
  String get profile_export_error_failed => 'Export failed. Please try again.';

  @override
  String get profile_export_error_cancelled =>
      'Export cancelled — please try again.';

  @override
  String get profile_kyc_title => 'KYC and limits';

  @override
  String get profile_kyc_section_deposit_limits => 'Deposit limits';

  @override
  String get profile_kyc_banner_tier2 =>
      'You’re on Tier 2 for your Euro and card accounts. You can increase your limits anytime.';

  @override
  String get profile_kyc_banner_reaching =>
      'You are reaching the limits for your Euro account and Card balance account.';

  @override
  String get profile_kyc_banner_tier1 =>
      'You are on tier 1 for your Euro account and Card balance account.';

  @override
  String profile_kyc_tier_label(int tier) {
    return 'You are on Tier $tier';
  }

  @override
  String profile_kyc_limit_row(String label, String limit) {
    return '$label of $limit/month';
  }

  @override
  String get profile_kyc_approaching =>
      'You’re approaching your transaction limits. Complete additional verification to unlock higher limits.';

  @override
  String get profile_kyc_complete_verification =>
      'Complete additional verification for unlocking higher limits.';

  @override
  String get profile_kyc_action_unlock => 'Unlock higher limits';

  @override
  String get profile_kyc_btc_not_applicable =>
      'Not applicable to Bitcoin wallet';

  @override
  String get profile_kyc_btc_no_limits =>
      'No deposit limits on your Bitcoin wallet. It’s self-custodied, which means it’s outside our limits.';

  @override
  String get profile_kyc_increase_title => 'Increase your limits';

  @override
  String get profile_kyc_increase_note =>
      'Please note that once you start the next tier of KYC, you must complete it within 30 days.';

  @override
  String get profile_kyc_increase_prepare =>
      'Keep your proof of address ready and provide details on your source of funds.';

  @override
  String get profile_kyc_email_prefix => 'Email us at ';

  @override
  String get profile_kyc_email_suffix =>
      ' if you would like to opt-in to upgrade your KYC-tier.';

  @override
  String get profile_kyc_band_100k_500k => 'From €100K to €500k';

  @override
  String get profile_kyc_band_500k_1m => 'From €500K to €1M';

  @override
  String get profile_kyc_band_above_1m => 'Above €1M';

  @override
  String get profile_kyc_review_pending =>
      'Your request is being reviewed — an account manager will be in touch shortly.';

  @override
  String get profile_kyc_choose_limit =>
      'Choose your monthly transaction limit. An account manager will contact you shortly.';

  @override
  String get profile_kyc_action_notify => 'Notify manager';

  @override
  String get profile_kyc_notified_title => 'Notification received!';

  @override
  String get profile_kyc_notified_body =>
      'We’ve received your request to increase your monthly transaction limits. Your account manager will email you shortly with an update. For any questions, contact ';

  @override
  String get profile_pro_title => 'Bringin Pro';

  @override
  String get profile_pro_benefit_card => 'Debit card access';

  @override
  String get profile_pro_benefit_fx => '0% FX fee';

  @override
  String get profile_pro_benefit_cards =>
      'A free physical & virtual debit cards';

  @override
  String get profile_pro_benefit_rate => 'Bitcoin to Euro exchange rate 1%';

  @override
  String get profile_pro_link_here => 'click here';

  @override
  String get profile_pro_is_pro => 'You are a pro user';

  @override
  String get profile_pro_section_additional => 'Additional benefits';

  @override
  String get profile_pro_offer_alby =>
      'Get 10% off on the Alby Hub Subscription for 1 year. ';

  @override
  String get profile_pro_offer_koinly =>
      'Get 10% off on the Koinly Tax Calculator for 1 year. ';

  @override
  String get profile_fallback_user => 'User';

  @override
  String get profile_action_help => 'Help?';

  @override
  String get profile_ln_section_title => 'Your lightning addresses';

  @override
  String get profile_ln_claim_prompt =>
      'Claim your lightning address to start receiving payments.';

  @override
  String get profile_ln_destinations_all => 'wallet, account and card balance';

  @override
  String get profile_ln_destinations_wallet_account => 'wallet and account';

  @override
  String get profile_ln_destinations_account_card => 'account and card balance';

  @override
  String get profile_ln_destinations_account => 'account';

  @override
  String profile_ln_description(int count, String destinations) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'Lightning addresses to receive payments to your $destinations.',
      one: 'Lightning address to receive payments to your $destinations.',
    );
    return '$_temp0';
  }

  @override
  String get profile_ln_action_claim_address => 'Claim address';

  @override
  String get profile_ln_action_claim_username => 'Claim username';

  @override
  String get profile_ln_toast_copied => 'Address copied';

  @override
  String get profile_shortcut_referral => 'Referral\nprogram';

  @override
  String get profile_shortcut_bank_accounts => 'Saved bank\naccounts';

  @override
  String get profile_shortcut_external_wallets => 'All external\nwallets';

  @override
  String get profile_row_support => 'Customer support';

  @override
  String get profile_row_auto_declaration => 'Auto declaration';

  @override
  String get profile_row_statements => 'Transaction statements';

  @override
  String get profile_row_community => 'Bringin community';

  @override
  String get profile_row_security => 'Login & security';

  @override
  String get profile_row_feedback => 'Feedbacks';

  @override
  String get profile_row_share_logs => 'Share logs';

  @override
  String get profile_row_logout => 'Logout';

  @override
  String get profile_link_terms => 'Terms and conditions';

  @override
  String get profile_logs_preparing => 'Preparing your logs.';

  @override
  String get profile_logs_subject => 'Logs';

  @override
  String get profile_kyc_required =>
      'Please complete your KYC verification to access this feature.';

  @override
  String get profile_signing_out => 'Signing you out.';

  @override
  String get profile_logout_cloud_backup_title => 'Get a cloud back up';

  @override
  String get profile_logout_no_cloud_backup => 'No cloud back up found.';

  @override
  String get profile_logout_no_cloud_backup_body =>
      'After logout, you\'ll need your 12-word recovery phrase to restore your wallet. Make sure it\'s stored safely before logging out.';

  @override
  String get profile_logout_not_backed_up =>
      'Your wallet isn\'t backed up. If you lose access, your Bitcoin will be permanently lost.';

  @override
  String get profile_logout_title => 'Logout?';

  @override
  String get profile_logout_no_backup_found => 'No backup found.';

  @override
  String get profile_logout_no_backup_body =>
      'If you\'ve used this wallet before, any future deposits to this address cannot be recovered.';

  @override
  String get profile_logout_payment_in_progress =>
      'You have a payment in progress. Logging out now may interrupt it.';

  @override
  String get profile_logout_alby_disconnect =>
      'Your Alby wallet will disconnect. Reconnect through Alby Go after signing in again.';

  @override
  String get profile_logout_action_anyway => 'I understand, logout anyway';

  @override
  String get profile_logout_action_add_cloud => 'Add a cloud back up';

  @override
  String get profile_logout_confirm_title => 'Log out of Bringin?';

  @override
  String get profile_logout_confirm_signin_again =>
      'You\'ll need to sign in again to access your account.';

  @override
  String get profile_logout_confirm_wallet_removed =>
      'Your Bitcoin wallet will be removed from this device. You can restore it later if you have a recovery phrase.';

  @override
  String get profile_logout_confirm_backed_up =>
      'Your wallet is backed up to Google Drive. Sign back in anytime to restore it.';

  @override
  String get profile_kyc_limit_label_withdrawal => 'withdrawal';

  @override
  String get profile_kyc_limit_label_deposits => 'deposits';

  @override
  String get sell_autoswap_title => 'Auto-swap isn\'t enabled';

  @override
  String get sell_autoswap_description =>
      'Auto-swap converts your Bitcoin to Euros. You\'ll need it before you can sell to your bank.';

  @override
  String get sell_autoswap_action => 'Enable auto-swap';

  @override
  String get sell_title => 'Sell to bank';

  @override
  String get sell_source_blink => 'Blink wallet';

  @override
  String get sell_source_nwc => 'NWC wallet';

  @override
  String get sell_source_external => 'External wallet';

  @override
  String get sell_select_source => 'Select source';

  @override
  String get sell_select_recipient => 'Select or add a recipient';

  @override
  String get sell_error_account_not_ready =>
      'Account not ready. Please try again.';

  @override
  String get sell_error_load_recipients => 'Failed to load recipients';

  @override
  String get sell_no_recipients => 'No recipients added yet.';

  @override
  String get sell_reference_default => 'From Bringin';

  @override
  String get sell_error_load_details => 'We couldn\'t load some details.';

  @override
  String get sell_label_reference_source => 'From Bringin wallet';

  @override
  String get sell_field_you_receive => 'You receive';

  @override
  String get sell_field_you_sell => 'You sell';

  @override
  String get sell_hint_loading_rate => 'Loading rate...';

  @override
  String get sell_action_swipe => 'Swipe to sell Bitcoin';

  @override
  String get sell_connect_beneficiary_fallback => 'Beneficiary';

  @override
  String get sell_connect_toast_setting_up =>
      'Setting things up — please wait.';

  @override
  String get sell_connect_toast_still_waiting =>
      'Still waiting for the code. Tap again in a moment, or tap \"Didn\'t receive a code?\" to contact support.';

  @override
  String sell_connect_toast_resend_server(String message) {
    return '$message Tap \"Contact support\" if this keeps happening.';
  }

  @override
  String get sell_connect_toast_resend_failed =>
      'Couldn\'t resend the code. Tap \"Contact support\" below to get help.';

  @override
  String get sell_connect_error_open_support =>
      'Couldn\'t open support. Please try again.';

  @override
  String get sell_connect_onetime_notice =>
      'One-time setup — we won\'t ask for a code on future transfers to this recipient.';

  @override
  String get sell_connect_passkey_prompt =>
      'Verify it\'s you with your face or fingerprint to authorise this connection.';

  @override
  String get sell_connect_first_time_prefix => 'First time sending to ';

  @override
  String get sell_connect_code_sent_mobile =>
      'Add the code sent to your mobile ';

  @override
  String get sell_connect_code_sent_email => ' or email ';

  @override
  String get sell_connect_support_checking =>
      'Checking… still no code? Contact support';

  @override
  String get sell_connect_support_prompt =>
      'Didn\'t receive a code? Contact support';

  @override
  String get sell_label_from => 'From';

  @override
  String get sell_label_to => 'To';

  @override
  String get sell_label_bank_account => 'Bank account';

  @override
  String get sell_status_selling => 'Selling Bitcoin...';

  @override
  String get sell_status_euros_on_way => 'Your Euros are on their way...';

  @override
  String get sell_status_euros_sent => 'Euros sent successfully!';

  @override
  String get sell_status_added => 'Added successfully!';

  @override
  String get sell_notify_40min =>
      'Takes up to 40 minutes. We\'ll notify when done.';

  @override
  String get sell_notify_1_2min =>
      'Takes up to 1-2 minutes. We\'ll notify when done.';

  @override
  String get sell_euro_title => 'Sell to Euro account';

  @override
  String get sell_error_unknown => 'Unknown error';

  @override
  String get sell_error_restricted_jurisdiction => 'Restricted jurisdiction';

  @override
  String get sell_error_beneficiary_address =>
      'We couldn\'t reach this beneficiary\'s payment address. Please try again.';

  @override
  String get sell_error_fee_changed =>
      'The Lightning network fee changed while preparing this payment. Try again.';

  @override
  String get sell_error_lightning_only =>
      'This sell can only be sent over Lightning. Go back and enter the amount again.';

  @override
  String get sell_error_load_deposit_address =>
      'We couldn\'t load your deposit address. Tap to retry.';

  @override
  String get sell_qr_scan_prompt => 'Scan with your Bitcoin wallet';

  @override
  String get sell_qr_footer =>
      'Scan QR or copy address to your source wallet to complete the transaction.';

  @override
  String get sell_qr_scan_add_euros => 'Scan the QR or copy code to add Euros.';

  @override
  String get sell_qr_scan_add_money => 'Scan QR or copy code to add money.';

  @override
  String get sell_qr_limits_link => 'Limits & rates';

  @override
  String get sell_qr_one_in_progress => 'One transaction in progress';

  @override
  String get sell_qr_ln_not_ready =>
      'Lightning isn\'t ready for this connection yet. Use the on-chain address, or tap to retry.';

  @override
  String get sell_qr_onchain_limits =>
      'Minimum €10. Maximum €10 000 per transaction. Manage limits in your profile. We charge 1% fee on the transaction.';

  @override
  String sell_qr_ln_limits(String min, String max) {
    return 'Minimum €$min. Maximum €$max per transaction — a fixed EU Travel Rule cap that can\'t be increased. We charge 1% fee on the transaction.';
  }
}
