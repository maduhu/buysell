DROP TABLE IF EXISTS `config_data`;
CREATE TABLE IF NOT EXISTS `config_data` (
  `config_data_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `file_name` varchar(40) NOT NULL,
  `config_var` varchar(100) NOT NULL,
  `config_value` text NOT NULL,
  `config_type` enum('Int','Real','String','Boolean','Array','Intwithsymbol','Email','Website') NOT NULL DEFAULT 'String',
  `config_category` varchar(100) NOT NULL,
  `config_section` varchar(100) NOT NULL,
  `editable` enum('Yes','No') NOT NULL DEFAULT 'No',
  `edit_order` int(11) NOT NULL DEFAULT '999',
  `description` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`config_data_id`),
  KEY `config_var` (`config_var`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8;

--
-- Dumping data for table `config_data`
--

INSERT INTO `config_data` (`file_name`, `config_var`, `config_value`, `config_type`, `config_category`, `config_section`, `editable`, `edit_order`, `description`, `date_added`) VALUES
('generalConfig', 'site_name', 'Buysell', 'String', 'site', 'site', 'Yes', 1, 'Site Name', NOW()),
('generalConfig', 'user_allow_to_add_product', '1', 'Boolean', 'site', 'product', 'Yes', 999, 'User can be both buyer and seller by default?', NOW()),
('generalConfig', 'site_default_currency', 'USD', 'String', 'site', 'site', 'No', 999, 'Site Default Currency', NOW()),
('generalConfig', 'allowed_currencies', 'USD,INR,EUR', 'Array', 'site', 'site', 'Yes', 999, 'Allowed Currencies', NOW()),
('generalConfig', 'currency_is_multi_currency_support', '1', 'Boolean', 'site', 'site', 'No', 999, 'Is multi currency support?', NOW()),
('generalConfig', 'admin_id', '1', 'Int', 'site', 'site', 'No', 999, 'Admin id', NOW()),
('generalConfig', 'invoice_email', 'r.senthilvasan@agriya.in', 'String', 'site', 'product', 'Yes', 999, 'Email id to send invoice details', NOW()),
('generalConfig', 'shipping_custom_delivery_time_days', '27', 'String', 'site', 'product', 'Yes', 999, 'Shipping custom delivery time in days', NOW()),
('generalConfig', 'default_shipping_cost', '10', 'String', 'site', 'product', 'Yes', 999, 'Default cost for shipping companies', NOW()),
('generalConfig', 'china_post_airmail_small_packet_max_weight', '2', 'Int', 'site', 'product', 'No', 999, 'Maximum weight allowed for China Post Air Mail - Small Packet (In KG)', NOW()),
('generalConfig', 'china_post_airmail_mbag_max_weight', '500', 'Int', 'site', 'product', 'No', 999, 'Maximum weight allowed for China Post Air Mail - MBag (In KG)', NOW()),
('generalConfig', 'admin_group_id', '1', 'Int', 'site', 'site', 'No', 999, 'Default Admin Group Id', NOW()),
('generalConfig', 'max_products_allowed_per_collection', '16', 'Int', 'site', 'product', 'Yes', 999, 'Maximum products allowed to add/collection', NOW()),
('payment', 'paypal_test_mode', '1', 'Boolean', 'payment', 'paypal', 'Yes', 999, 'Paypal test mode', NOW()),
('payment', 'paypal_adaptive_merchant_email', 's.manikandan_admin@agriya.in', 'Email', 'payment', 'paypal', 'Yes', 999, 'Paypal Merchant Email', NOW()),
('payment', 'paypal_adaptive_api_username', 's.manikandan_admin_api1.agriya.in', 'String', 'payment', 'Adaptive payment', 'Yes', 999, 'API Username', NOW()),
('payment', 'paypal_adaptive_api_password', '1401293047', 'String', 'payment', 'Adaptive payment', 'Yes', 999, 'API Password', NOW()),
('payment', 'paypal_adaptive_api_signature', 'A65UF6W81zMVvh-HUZa0HBUkaP3hAofZxw3dzdlIAU.YTkSCYZYnwwgU', 'String', 'payment', 'Adaptive payment', 'Yes', 999, 'API Signature', NOW()),
('payment', 'paypal_adaptive_app_id', 'APP-80W284485P519543T', 'String', 'payment', 'Adaptive payment', 'Yes', 999, 'Application Id', NOW()),
('products', 'product_listing_fee', '2', 'String', 'site', 'product', 'Yes', 999, 'The fee for listing the item for specific number of days ($)', NOW()),
('products', 'product_listing_days', '-1', 'String', 'site', 'product', 'Yes', 999, 'The number of days product is listed for paid listing\r\n(Set -1 for lifetime)', NOW()),
('products', 'paid_listing', '1', 'String', 'site', 'product', 'No', 999, 'Enable paid listing for product', NOW()),
('products', 'product_auto_approve', '1', 'Boolean', 'site', 'product', 'Yes', 999, 'Product can be published by seller themselves', NOW()),
('generalConfig', 'user_image_uploader_allowed_extensions', 'jpg, jpeg, png, gif', 'String', 'site', 'general', 'No', 999, 'Allowed extension type for user profile image', NOW()),
('generalConfig', 'user_image_uploader_allowed_file_size', '2048', 'Int', 'site', 'general', 'No', 999, 'Allowe file size for user profile image', NOW()),
('generalConfig', 'user_image_folder', 'files/user_image/', 'String', 'site', 'general', 'No', 999, 'User profile image folder path', NOW()),
('generalConfig', 'user_image_small_width', '50', 'Int', 'site', 'general', 'No', 999, 'User profile image - small width siz', NOW()),
('generalConfig', 'user_image_small_height', '50', 'Int', 'site', 'general', 'No', 999, 'User profile image - small width siz', NOW()),
('generalConfig', 'user_image_thumb_width', '90', 'Int', 'site', 'general', 'No', 999, 'User profile image - small width siz', NOW()),
('generalConfig', 'user_image_thumb_height', '90', 'Int', 'site', 'general', 'No', 999, 'User profile image - small width siz', NOW()),
('generalConfig', 'user_image_large_width', '140', 'Int', 'site', 'general', 'No', 999, 'User profile image - small width siz', NOW()),
('generalConfig', 'user_image_large_height', '140', 'Int', 'site', 'general', 'No', 999, 'User profile image - small width siz', NOW()),
('generalConfig', 'minimum_amount_added_to_wallet', '20', 'Int', 'site', 'general', 'No', 999, 'minimum amount that can be added to wallet', NOW()),
('generalConfig', 'sitelogo_allowed_extension', 'jpg, jpeg, png, gif', 'String', 'site', 'logo', 'No', 999, 'Allowed file extension for site logo', NOW()),
('generalConfig', 'sitelogo_allowed_file_size', '2', 'Int', 'site', 'logo', 'No', 999, 'Maximum file size allowed for site logo', NOW()),
('generalConfig', 'sitelogo_folder', 'files/site_logo/', 'String', 'site', 'logo', 'No', 999, 'Site logo folder path', NOW()),
('generalConfig', 'sitelogo_width', '140', 'Int', 'site', 'logo', 'No', 999, 'Image of site logo', NOW()),
('generalConfig', 'sitelogo_height', '54', 'Int', 'site', 'logo', 'No', 999, 'Height of site logo', NOW()),
('generalConfig', 'sitefavicon_allowed_file_size', '50', 'Int', 'site', 'logo', 'No', 999, 'Maximum file size allowed for site logo (In KB)', NOW()),
('generalConfig', 'sitefavicon_folder', 'files/site_favicon/', 'String', 'site', 'logo', 'No', 999, 'Site logo folder path', NOW()),
('generalConfig', 'sitefavicon_width', '16', 'Int', 'site', 'logo', 'No', 999, 'Image of site logo', NOW()),
('generalConfig', 'sitefavicon_height', '16', 'Int', 'site', 'logo', 'No', 999, 'Height of site logo', NOW()),
('generalConfig', 'sitefavicon_allowed_extension', 'ico', 'String', 'site', 'logo', 'No', 999, 'Allowed file extension for site logo', NOW()),
('login', 'enable_facebook', '1', 'Boolean', 'login', 'external Login', 'Yes', 999, 'Show Facebook', NOW()),
('login', 'enable_twitter', '1', 'Boolean', 'login', 'external Login', 'Yes', 999, 'Show Twitter', NOW()),
('login', 'facebook_app_key', '311867549018653', 'String', 'login', 'facebook', 'Yes', 999, 'Application Key', NOW()),
('login', 'facebook_secret_key', '2cd8ae0b3b3fc9cdfe587cf5191a17f7', 'String', 'login', 'facebook', 'Yes', 999, 'Secret Key', NOW()),
('login', 'facebook_app_name', 'BuysellDev', 'String', 'login', 'facebook', 'Yes', 999, 'Application Name', NOW()),
('login', 'facebook_app_id', '', 'String', 'login', 'facebook', 'Yes', 999, 'Application Id', NOW()),
('login', 'twitter_consumer_key', 'B9Gf56X7XQwmItPht6UIHCpy6', 'String', 'login', 'twitter', 'Yes', 999, 'Consumer Key', NOW()),
('login', 'twitter_consumer_secret', '0xULRFz3LfC8s55p2oePOStqTErwflXXy3Yio6zlUh7Fyh458k', 'String', 'login', 'twitter', 'Yes', 999, 'Consumer Secret', NOW()),
('generalConfig', 'display_date_format', 'd M, Y', 'String', 'site', 'site', 'Yes', 10, 'Site date display format', NOW()),
('webshoporder', 'item_site_transaction_fee_type', 'Percentage', 'String', 'site', 'site', 'Yes', 999, 'Site Commission Fee Type (Flat or Percentage)', NOW()),
('webshoporder', 'item_site_transaction_fee_percent', '5', 'String', 'site', 'site', 'Yes', 999, 'Site commission fee if the fee type is Percentage', NOW()),
('webshoporder', 'item_site_transaction_fee', '5', 'String', 'site', 'site', 'Yes', 999, 'Site Commission fee if the fee type is Flat', NOW()),
('generalConfig', 'lang', 'en', 'String', 'site', 'site', 'No', 15, 'Default Language (Enter folder name. Ex: "en" for english)', NOW()),
('generalConfig', 'copyright', '2015 - 2016', 'String', 'site', 'site', 'Yes', 5, 'Copyright year', NOW()),
('generalConfig', 'signup_captcha_display', '1', 'Boolean', 'site', 'captcha', 'Yes', 120, 'Enable captcha in Signup', NOW()),
('generalConfig', 'login_captcha_display', '1', 'Boolean', 'site', 'captcha', 'Yes', 125, 'Enable captcha in Login', NOW()),
('generalConfig', 'captcha_type', 'Recaptcha', 'String', 'site', 'captcha', 'Yes', 100, 'Captcha Type (Recaptcha / SolveMedia)', NOW()),
('generalConfig', 'challenge_key', '2uImtVOVlMKh-yn-H2uWI-fkcHv9MN84', 'String', 'site', 'captcha', 'Yes', 105, 'Solve Media Challenge Key', NOW()),
('generalConfig', 'verification_key', 'xJRPdd6IltxJd.I1ixtP6MDIsyGgCeWn', 'String', 'site', 'captcha', 'Yes', 110, 'Solve Media Verification Key', NOW()),
('generalConfig', 'authentication_key', 'wJZJgLwlXD1EF88dFvtlQJDblRWY8Yp1', 'String', 'site', 'captcha', 'Yes', 115, 'Solve Media Authentication Hash Key', NOW()),
('generalConfig', 'seller_request_captcha_display', '1', 'Boolean', 'site', 'captcha', 'Yes', 130, 'Enable captcha in Seller Request', NOW()),
('mail', 'driver', 'smtp', 'String', 'site', 'mailer', 'Yes', 105, 'Mail Driver', NOW()),
('mail', 'host', 'smtp.gmail.com', 'String', 'site', 'mailer', 'Yes', 110, 'Host Address', NOW()),
('mail', 'port', '587', 'String', 'site', 'mailer', 'Yes', 115, 'Host Port', NOW()),
('mail', 'sendmail ', '/usr/sbin/sendmail -bs', 'String', 'site', 'mailer', 'No', 125, 'System Path', NOW()),
('mail', 'username', 'travelhub.ahsan@gmail.com', 'String', 'site', 'mailer', 'Yes', 130, 'Server Username', NOW()),
('mail', 'password', 'ahsan.in', 'String', 'site', 'mailer', 'Yes', 135, 'Server Password', NOW()),
('mail', 'encryption', 'tls', 'String', 'site', 'mailer', 'Yes', 120, 'E-Mail Encryption Protocol', NOW()),
('mail', 'from_name', 'noreply', 'String', 'site', 'mailer', 'Yes', 999, 'From Name', NOW()),
('mail', 'from_email', 'noreply@buysell.com', 'String', 'site', 'mailer', 'Yes', 999, 'From Email', NOW()),
('generalConfig', 'support_email', 'support@buysell.com', 'String', 'site', 'site', 'Yes', 50, 'Support Email', NOW()),
('generalConfig', 'twitter_link', 'http://twitter.com/agriya', 'String', 'site', 'site', 'Yes', 60, 'Twitter link', NOW()),
('generalConfig', 'facebook_link', 'http://www.facebook.com/agriya', 'String', 'site', 'site', 'Yes', 65, 'Facebook link', NOW()),
('site', 'cron_mail_sending_limit', '10', 'Int', 'site', 'site', 'Yes', 999, 'No. of Mail Per Batch', NOW()),
('generalConfig', 'is_multi_lang_support', '1', 'Boolean', 'site', 'site', 'No', 999, 'Is multi language support?', NOW()),
('generalConfig', 'minify', '1', 'Boolean', 'site', 'site', 'No', 999, 'Do you want to minify CSS/JS?', NOW()),
('payment', 'wallet_payment', '1', 'Boolean', 'site', 'payment', 'No', 999, 'Wallet option for purchase?', NOW()),
('payment', 'wallet_payment_used_product_purchase', '1', 'Boolean', 'site', 'payment', 'No', 999, 'Allow Wallet option for product purchase?', NOW()),
('generalConfig', 'cache', '1', 'Boolean', 'site', 'site', 'Yes', 999, 'Cache enable', NOW()),
('generalConfig', 'cache_expiry_minutes', '10', 'Int', 'site', 'site', 'Yes', 999, 'Cache Expiry Minutes', NOW());