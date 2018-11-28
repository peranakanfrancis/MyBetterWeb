#!/usr/bin/perl -w
use Digest::HMAC_SHA256 qw(hmac_SHA256_hex);
print "content-type: text/html\n\n";
my $hmac_data = "signaturestring";
my $secret_key="746D7SCHAIQ0QUZ0MRJWU0PQ3AD7PJ8B";
my $output = hmac_SHA256_hex($hmac_data, $secret_key);
print $output;
