#!/usr/bin/env bash
#
# Enable the version of WooCommerce used as a Composer dependency to be changed.
#
# Usage:
#
#     set-woocommerce-version.sh [version]

WC_VERSION=${1-latest}

if [[ $WC_VERSION != 'latest' ]]; then
	echo "Using WooCommerce version ${WC_VERSION}:"
	composer require --dev --prefer-source --no-suggest --update-with-all-dependencies "woocommerce/woocommerce:^${WC_VERSION}"
else
	echo "Using WooCommerce at master."
fi
