# Privacy Policy – Keybics

Last updated: 27 October 2026

## 1. Controller

etonec Digital Services GmbH
Kurfürstendamm 195, 10707 Berlin, Germany
Email: info@etonec-ds.com

## 2. Summary

Keybics is a local macOS app. We do **not** collect, store or receive any personal data about you. There are no user accounts, no analytics or tracking services, no advertising, and no servers operated by us that the app talks to. All data stays on your Mac. The app sends data only to the EBICS address of your bank, which you enter yourself.

## 3. Data the app processes on your Mac

The app processes data you enter or that is created during setup:

- **Connection details:** connection name, bank name, EBICS URL, Host ID, Partner ID, User ID, optionally company name, letter language.
- **Cryptographic keys and certificates:** signature, authentication and encryption keys (private and public parts) and the public bank keys fetched from the bank.
- **Passphrase:** the passphrase you choose for the key file.
- **Initialisation letter** as PDF.
- **Activity log:** time and type of orders sent and the bank's responses. It contains neither keys nor passphrase.

**Location:** `~/Library/Application Support/EbicsStart/` on your Mac (in the Mac App Store version inside the app's container, `~/Library/Containers/com.etonec.keybics/Data/Library/Application Support/EbicsStart/`). The key file is encrypted with your passphrase (AES-256). The passphrase is stored in the macOS Keychain. Files are readable only by your user account.

This data leaves your Mac only in the cases described in sections 4 and 5. We have no access to it.

## 4. Transmission to your bank

When you trigger an action in the app ("Check server", "Send INI and HIA", "Check Activation", "Fetch Bank Keys Again"), the app sends an EBICS message to the **EBICS URL you entered**. Depending on the action, it contains:

- Host ID, Partner ID, User ID,
- your **public** keys and certificates (INI, HIA),
- a signature created with your private key (HPB).

Private keys and the passphrase are not transmitted. The only recipient is your bank, which is responsible for its own processing; its privacy policy applies. Transmission uses the connection provided by the bank (HTTPS). Legal basis is carrying out the setup you requested (Art. 6(1)(b) GDPR, to the extent we were a controller at all, which we are not, since we do not process the data ourselves).

## 5. Export

"Export JSON…" writes the connection to a file in a location of your choice. If you set an export password, the private keys in the file are encrypted with it (encrypted PKCS#8, AES-256); the password is not stored anywhere. **Without a password, the file contains your private keys unencrypted.** What you do with it is entirely up to you. Transfer it only through a secure channel and delete copies you no longer need.

## 6. What we do not do

- No collection of usage or diagnostic data, no crash reports sent to us.
- No analytics, advertising or tracking SDKs.
- No sharing of data with third parties, no sale of data.
- No access to contacts, location, camera, microphone or photos.

Note: if you have enabled sharing of diagnostics with Apple in macOS, Apple may receive crash reports under its own terms. We have no influence over this.

## 7. App Store

When you obtain the app through the Mac App Store, Apple processes data (e.g. Apple ID, purchase data) as a separate controller. We receive no personal data from this. Apple's privacy policy applies.

## 8. Retention and deletion

Data stays until you delete it. In the app, right-click a connection and choose "Delete Connection…", which removes the key file, letter and stored passphrase from this Mac. Deleting the app itself leaves the data folder in place (in the Mac App Store version the container `~/Library/Containers/com.etonec.keybics/`); you can remove it manually. Delete the Keychain item "Keybics key passphrase" (older versions: "Keybics key passphrase") in Keychain Access. Previously exported files, and data held by your bank, must be deleted separately.

## 9. Your rights

Because we do not process personal data about you, we cannot provide access, rectification or erasure from our own records. Towards your bank you have the rights under the GDPR (access, rectification, erasure, restriction, portability, objection). You also have the right to lodge a complaint with a data protection supervisory authority.

For questions, contact us at info@etonec-ds.com. If you write to us, we process your email address and message only to answer your request (Art. 6(1)(f) GDPR).

## 10. Changes

We will update this policy if the app or the law changes. The version currently published applies.
