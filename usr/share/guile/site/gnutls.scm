;;; GnuTLS --- Guile bindings for GnuTLS.
;;; Copyright (C) 2007-2012, 2014, 2015, 2016 Free Software Foundation, Inc.
;;;
;;; GnuTLS is free software; you can redistribute it and/or
;;; modify it under the terms of the GNU Lesser General Public
;;; License as published by the Free Software Foundation; either
;;; version 2.1 of the License, or (at your option) any later version.
;;;
;;; GnuTLS is distributed in the hope that it will be useful,
;;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
;;; Lesser General Public License for more details.
;;;
;;; You should have received a copy of the GNU Lesser General Public
;;; License along with GnuTLS; if not, write to the Free Software
;;; Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA

;;; Written by Ludovic Court�s <ludo@gnu.org>

(define-module (gnutls)
  ;; Note: The export list must be manually kept in sync with the build
  ;; system.
  :export (;; versioning
           gnutls-version

           ;; sessions
           session?
           make-session bye handshake rehandshake
           alert-get alert-send
           session-cipher session-kx session-mac session-protocol
           session-compression-method session-certificate-type
           session-authentication-type session-server-authentication-type
           session-client-authentication-type
           session-peer-certificate-chain session-our-certificate-chain
           set-session-transport-fd! set-session-transport-port!
           set-session-credentials! set-server-session-certificate-request!
           set-session-server-name!

           ;; anonymous credentials
           anonymous-client-credentials? anonymous-server-credentials?
           make-anonymous-client-credentials make-anonymous-server-credentials
           set-anonymous-server-dh-parameters!

           ;; certificate credentials
           certificate-credentials? make-certificate-credentials
           set-certificate-credentials-dh-parameters!
           set-certificate-credentials-x509-key-files!
           set-certificate-credentials-x509-trust-file!
           set-certificate-credentials-x509-crl-file!
           set-certificate-credentials-x509-key-data!
           set-certificate-credentials-x509-trust-data!
           set-certificate-credentials-x509-crl-data!
           set-certificate-credentials-x509-keys!
           set-certificate-credentials-verify-limits!
           set-certificate-credentials-verify-flags!
           peer-certificate-status

           ;; SRP credentials
           srp-client-credentials? srp-server-credentials?
           make-srp-client-credentials make-srp-server-credentials
           set-srp-client-credentials!
           set-srp-server-credentials-files!
           server-session-srp-username
           srp-base64-encode srp-base64-decode

           ;; PSK credentials
           psk-client-credentials? psk-server-credentials?
           make-psk-client-credentials make-psk-server-credentials
           set-psk-client-credentials!
           set-psk-server-credentials-file!
           server-session-psk-username

           ;; priorities
           set-session-priorities!
           set-session-default-priority!

           ;; DH
           set-session-dh-prime-bits!
           make-dh-parameters dh-parameters?
           pkcs3-import-dh-parameters pkcs3-export-dh-parameters

           ;; X.509
           x509-certificate? x509-private-key?
           import-x509-certificate  x509-certificate-matches-hostname?
           x509-certificate-dn x509-certificate-dn-oid
           x509-certificate-issuer-dn x509-certificate-issuer-dn-oid
           x509-certificate-signature-algorithm x509-certificate-version
           x509-certificate-key-id x509-certificate-authority-key-id
           x509-certificate-subject-key-id
           x509-certificate-subject-alternative-name
           x509-certificate-public-key-algorithm x509-certificate-key-usage
           import-x509-private-key pkcs8-import-x509-private-key

           ;; record layer
           record-send record-receive!
           session-record-port

           ;; debugging
           set-log-procedure! set-log-level!

           ;; enum->string functions
           cipher->string kx->string params->string credentials->string
           mac->string digest->string compression-method->string
           connection-end->string alert-level->string
           alert-description->string handshake-description->string
           certificate-status->string certificate-request->string
           close-request->string
           protocol->string certificate-type->string
           x509-certificate-format->string
           x509-subject-alternative-name->string pk-algorithm->string
           sign-algorithm->string psk-key-format->string key-usage->string
           certificate-verify->string error->string
           cipher-suite->string server-name-type->string

           ;; enum values
           cipher/null
           cipher/arcfour cipher/arcfour-128
           cipher/3des-cbc
           cipher/aes-128-cbc cipher/rijndael-cbc cipher/rijndael-128-cbc
           cipher/aes-256-cbc cipher/rijndael-256-cbc
           cipher/arcfour-40
           cipher/rc2-40-cbc
           cipher/des-cbc
           kx/rsa
           kx/dhe-dss
           kx/dhe-rsa
           kx/anon-dh
           kx/srp
           kx/rsa-export
           kx/srp-rsa
           kx/srp-dss
           kx/psk
           kx/dhe-dss
           params/rsa-export
           params/dh
           credentials/certificate
           credentials/anon
           credentials/anonymous
           credentials/srp
           credentials/psk
           credentials/ia
           mac/unknown
           mac/null
           mac/md5
           mac/sha1
           mac/rmd160
           mac/md2
           digest/null
           digest/md5
           digest/sha1
           digest/rmd160
           digest/md2
           compression-method/null
           compression-method/deflate
           compression-method/lzo
           connection-end/server
           connection-end/client
           alert-level/warning
           alert-level/fatal
           alert-description/close-notify
           alert-description/unexpected-message
           alert-description/bad-record-mac
           alert-description/decryption-failed
           alert-description/record-overflow
           alert-description/decompression-failure
           alert-description/handshake-failure
           alert-description/ssl3-no-certificate
           alert-description/bad-certificate
           alert-description/unsupported-certificate
           alert-description/certificate-revoked
           alert-description/certificate-expired
           alert-description/certificate-unknown
           alert-description/illegal-parameter
           alert-description/unknown-ca
           alert-description/access-denied
           alert-description/decode-error
           alert-description/decrypt-error
           alert-description/export-restriction
           alert-description/protocol-version
           alert-description/insufficient-security
           alert-description/internal-error
           alert-description/user-canceled
           alert-description/no-renegotiation
           alert-description/unsupported-extension
           alert-description/certificate-unobtainable
           alert-description/unrecognized-name
           alert-description/unknown-psk-identity
           alert-description/inner-application-failure
           alert-description/inner-application-verification
           handshake-description/hello-request
           handshake-description/client-hello
           handshake-description/server-hello
           handshake-description/certificate-pkt
           handshake-description/server-key-exchange
           handshake-description/certificate-request
           handshake-description/server-hello-done
           handshake-description/certificate-verify
           handshake-description/client-key-exchange
           handshake-description/finished
           certificate-status/invalid
           certificate-status/revoked
           certificate-status/signer-not-found
           certificate-status/signer-not-ca
           certificate-status/insecure-algorithm
           certificate-request/ignore
           certificate-request/request
           certificate-request/require
           close-request/rdwr
           close-request/wr
           protocol/ssl-3
           protocol/tls-1.0
           protocol/tls-1.1
           protocol/version-unknown
           certificate-type/x509
           certificate-type/openpgp
           x509-certificate-format/der
           x509-certificate-format/pem
           x509-subject-alternative-name/dnsname
           x509-subject-alternative-name/rfc822name
           x509-subject-alternative-name/uri
           x509-subject-alternative-name/ipaddress
           pk-algorithm/rsa
           pk-algorithm/dsa
           pk-algorithm/unknown
           sign-algorithm/unknown
           sign-algorithm/rsa-sha1
           sign-algorithm/dsa-sha1
           sign-algorithm/rsa-md5
           sign-algorithm/rsa-md2
           sign-algorithm/rsa-rmd160
           psk-key-format/raw
           psk-key-format/hex
           key-usage/digital-signature
           key-usage/non-repudiation
           key-usage/key-encipherment
           key-usage/data-encipherment
           key-usage/key-agreement
           key-usage/key-cert-sign
           key-usage/crl-sign
           key-usage/encipher-only
           key-usage/decipher-only
           certificate-verify/disable-ca-sign
           certificate-verify/allow-x509-v1-ca-crt
           certificate-verify/allow-x509-v1-ca-certificate
           certificate-verify/do-not-allow-same
           certificate-verify/allow-any-x509-v1-ca-crt
           certificate-verify/allow-any-x509-v1-ca-certificate
           certificate-verify/allow-sign-rsa-md2
           certificate-verify/allow-sign-rsa-md5
           server-name-type/dns

           ;; FIXME: Automate this:
           ;; grep '^#define GNUTLS_E_' ../../lib/includes/gnutls/gnutls.h.in | \
           ;;   sed -r -e 's|^#define GNUTLS_E_([^ ]+).*$|error/\1|' | tr A-Z_ a-z-
           error/success
           error/unsupported-version-packet
           error/unexpected-packet-length
           error/invalid-session
           error/fatal-alert-received
           error/unexpected-packet
           error/warning-alert-received
           error/error-in-finished-packet
           error/unexpected-handshake-packet
           error/decryption-failed
           error/memory-error
           error/decompression-failed
           error/compression-failed
           error/again
           error/expired
           error/db-error
           error/srp-pwd-error
           error/insufficient-credentials
           error/insuficient-credentials
           error/insufficient-cred
           error/insuficient-cred
           error/hash-failed
           error/base64-decoding-error
           error/rehandshake
           error/got-application-data
           error/record-limit-reached
           error/encryption-failed
           error/pk-encryption-failed
           error/pk-decryption-failed
           error/pk-sign-failed
           error/x509-unsupported-critical-extension
           error/key-usage-violation
           error/no-certificate-found
           error/invalid-request
           error/short-memory-buffer
           error/interrupted
           error/push-error
           error/pull-error
           error/received-illegal-parameter
           error/requested-data-not-available
           error/pkcs1-wrong-pad
           error/received-illegal-extension
           error/internal-error
           error/dh-prime-unacceptable
           error/file-error
           error/too-many-empty-packets
           error/unknown-pk-algorithm
           error/too-many-handshake-packets
           error/no-temporary-rsa-params
           error/no-compression-algorithms
           error/no-cipher-suites
           error/openpgp-getkey-failed
           error/pk-sig-verify-failed
           error/illegal-srp-username
           error/srp-pwd-parsing-error
           error/no-temporary-dh-params
           error/asn1-element-not-found
           error/asn1-identifier-not-found
           error/asn1-der-error
           error/asn1-value-not-found
           error/asn1-generic-error
           error/asn1-value-not-valid
           error/asn1-tag-error
           error/asn1-tag-implicit
           error/asn1-type-any-error
           error/asn1-syntax-error
           error/asn1-der-overflow
           error/openpgp-uid-revoked
           error/certificate-error
           error/x509-certificate-error
           error/certificate-key-mismatch
           error/unsupported-certificate-type
           error/x509-unknown-san
           error/openpgp-fingerprint-unsupported
           error/x509-unsupported-attribute
           error/unknown-hash-algorithm
           error/unknown-pkcs-content-type
           error/unknown-pkcs-bag-type
           error/invalid-password
           error/mac-verify-failed
           error/constraint-error
           error/warning-ia-iphf-received
           error/warning-ia-fphf-received
           error/ia-verify-failed
           error/unknown-algorithm
           error/unsupported-signature-algorithm
           error/safe-renegotiation-failed
           error/unsafe-renegotiation-denied
           error/unknown-srp-username
           error/premature-termination
           error/base64-encoding-error
           error/incompatible-gcrypt-library
           error/incompatible-crypto-library
           error/incompatible-libtasn1-library
           error/openpgp-keyring-error
           error/x509-unsupported-oid
           error/random-failed
           error/base64-unexpected-header-error
           error/openpgp-subkey-error
           error/crypto-already-registered
           error/handshake-too-large
           error/cryptodev-ioctl-error
           error/cryptodev-device-error
           error/channel-binding-not-available
           error/bad-cookie
           error/openpgp-preferred-key-error
           error/incompat-dsa-key-with-tls-protocol
           error/pkcs11-error
           error/pkcs11-load-error
           error/parsing-error
           error/pkcs11-pin-error
           error/pkcs11-slot-error
           error/locking-error
           error/pkcs11-attribute-error
           error/pkcs11-device-error
           error/pkcs11-data-error
           error/pkcs11-unsupported-feature-error
           error/pkcs11-key-error
           error/pkcs11-pin-expired
           error/pkcs11-pin-locked
           error/pkcs11-session-error
           error/pkcs11-signature-error
           error/pkcs11-token-error
           error/pkcs11-user-error
           error/crypto-init-failed
           error/timedout
           error/user-error
           error/ecc-no-supported-curves
           error/ecc-unsupported-curve
           error/pkcs11-requested-object-not-availble
           error/certificate-list-unsorted
           error/illegal-parameter
           error/no-priorities-were-set
           error/unimplemented-feature
           error/application-error-max
           error/application-error-min

           ;; OpenPGP keys (formerly in GnuTLS-extra)
           openpgp-certificate? openpgp-private-key?
           import-openpgp-certificate import-openpgp-private-key
           openpgp-certificate-id openpgp-certificate-id!
           openpgp-certificate-fingerprint openpgp-certificate-fingerprint!
           openpgp-certificate-name openpgp-certificate-names
           openpgp-certificate-algorithm openpgp-certificate-version
           openpgp-certificate-usage

           ;; OpenPGP keyrings
           openpgp-keyring? import-openpgp-keyring
           openpgp-keyring-contains-key-id?

           ;; certificate credentials
           set-certificate-credentials-openpgp-keys!

           ;; enum->string functions
           openpgp-certificate-format->string

           ;; enum values
           openpgp-certificate-format/raw
           openpgp-certificate-format/base64))

(cond-expand
  ((not guile-2)                                  ;silly 1.8
   (define-macro (eval-when foo a b)
     `(begin ,a ,b)))
  (else #t))

(eval-when (expand load eval)
  (define %libdir
    (or (getenv "GNUTLS_GUILE_EXTENSION_DIR")
        "/usr/lib/guile/2.0"))

  (load-extension (string-append %libdir "/guile-gnutls-v-2")
                  "scm_init_gnutls"))

;; Renaming.
(define protocol/ssl-3 protocol/ssl3)
(define protocol/tls-1.0 protocol/tls1-0)
(define protocol/tls-1.1 protocol/tls1-1)

;; Aliases.
(define credentials/anonymous   credentials/anon)
(define cipher/rijndael-256-cbc cipher/aes-256-cbc)
(define cipher/rijndael-128-cbc cipher/aes-128-cbc)
(define cipher/rijndael-cbc     cipher/aes-128-cbc)
(define cipher/arcfour-128      cipher/arcfour)
(define certificate-verify/allow-any-x509-v1-ca-certificate
  certificate-verify/allow-any-x509-v1-ca-crt)
(define certificate-verify/allow-x509-v1-ca-certificate
  certificate-verify/allow-x509-v1-ca-crt)

;;; Local Variables:
;;; mode: scheme
;;; coding: latin-1
;;; End:

;;; arch-tag: 3394732c-d9fa-48dd-a093-9fba3a325b8b
