# Datenschutzerklärung – Keybics

Stand: 27. Oktober 2026

## 1. Verantwortlicher

etonec Digital Services GmbH
Kurfürstendamm 195, 10707 Berlin, Germany
E-Mail: info@etonec-ds.com

## 2. Kurzfassung

Keybics ist eine lokale macOS-App. Wir erheben, speichern und empfangen **keine** personenbezogenen Daten über Sie. Es gibt keine Benutzerkonten, keine Analyse- oder Tracking-Dienste, keine Werbung und keine Server des Herstellers, mit denen die App kommuniziert. Alle Daten bleiben auf Ihrem Mac. Die App sendet Daten ausschließlich an die EBICS-Adresse Ihrer Bank, die Sie selbst eintragen.

## 3. Welche Daten die App auf Ihrem Mac verarbeitet

Die App verarbeitet die Daten, die Sie eingeben oder die bei der Einrichtung entstehen:

- **Verbindungsdaten:** Name der Verbindung, Bankname, EBICS-URL, Host-ID, Partner-ID, User-ID, optional Firmenname, Briefsprache.
- **Kryptografische Schlüssel und Zertifikate:** Signatur-, Authentifizierungs- und Verschlüsselungsschlüssel (privater und öffentlicher Teil) sowie die von der Bank abgeholten öffentlichen Bankschlüssel.
- **Passphrase:** Ihre selbst gewählte Passphrase für die Schlüsseldatei.
- **Initialisierungsbrief** als PDF.
- **Aktivitätsprotokoll:** Zeitpunkt und Art gesendeter Aufträge sowie Antworten der Bank. Es enthält weder Schlüssel noch Passphrase.

**Speicherort:** `~/Library/Application Support/EbicsStart/` auf Ihrem Mac (in der Version aus dem Mac App Store im App-Container `~/Library/Containers/com.etonec.keybics/Data/Library/Application Support/EbicsStart/`). Die Schlüsseldatei ist mit Ihrer Passphrase verschlüsselt (AES-256). Die Passphrase liegt im macOS-Schlüsselbund. Die Dateien sind nur für Ihr Benutzerkonto lesbar.

Diese Daten verlassen Ihren Mac nur in den unter Ziffer 4 und 5 beschriebenen Fällen. Wir haben darauf keinen Zugriff.

## 4. Übermittlung an Ihre Bank

Wenn Sie in der App eine Aktion auslösen („Check server“, „Send INI and HIA“, „Check Activation“, „Fetch Bank Keys Again“), sendet die App eine EBICS-Nachricht an die **EBICS-URL, die Sie eingetragen haben**. Je nach Aktion enthält sie:

- Host-ID, Partner-ID, User-ID,
- Ihre **öffentlichen** Schlüssel und Zertifikate (INI, HIA),
- eine mit Ihrem privaten Schlüssel erzeugte Signatur (HPB).

Private Schlüssel und die Passphrase werden nicht übertragen. Empfänger ist ausschließlich Ihre Bank, die dafür selbst verantwortlich ist. Es gilt deren Datenschutzerklärung. Die Übermittlung erfolgt über die von der Bank bereitgestellte Verbindung (HTTPS). Rechtsgrundlage ist die Durchführung der von Ihnen veranlassten Einrichtung (Art. 6 Abs. 1 lit. b DSGVO, soweit wir überhaupt verantwortlich wären, was wir mangels eigener Datenverarbeitung nicht sind).

## 5. Export

Mit „Export JSON…“ schreiben Sie die Verbindung in eine Datei an einem Ort Ihrer Wahl. Vergeben Sie ein Export-Passwort, sind die privaten Schlüssel in der Datei damit verschlüsselt (verschlüsseltes PKCS#8, AES-256). Das Passwort wird nirgends gespeichert. **Ohne Passwort enthält die Datei Ihre privaten Schlüssel unverschlüsselt.** Was Sie mit der Datei tun, entscheiden allein Sie. Übertragen Sie sie nur auf sicherem Weg und löschen Sie nicht mehr benötigte Kopien.

## 6. Was wir nicht tun

- Keine Erhebung von Nutzungs- oder Diagnosedaten, keine Absturzberichte durch uns.
- Keine Analyse-, Werbe- oder Tracking-SDKs.
- Keine Weitergabe von Daten an Dritte, kein Verkauf von Daten.
- Kein Zugriff auf Kontakte, Standort, Kamera, Mikrofon oder Fotos.

Hinweis: Wenn Sie in macOS die Weitergabe von Diagnosedaten an Apple aktiviert haben, kann Apple nach eigenen Regeln Absturzberichte erhalten. Darauf haben wir keinen Einfluss.

## 7. App Store

Beim Bezug der App über den Mac App Store verarbeitet Apple Daten (z. B. Apple-ID, Kaufdaten) in eigener Verantwortung. Wir erhalten davon keine personenbezogenen Daten. Es gilt die Datenschutzerklärung von Apple.

## 8. Speicherdauer und Löschung

Die Daten bleiben, bis Sie sie löschen. In der App entfernen Sie eine Verbindung per Rechtsklick auf „Delete Connection…“. Dabei werden Schlüsseldatei, Brief und gespeicherte Passphrase von diesem Mac gelöscht. Beim Löschen der App selbst bleibt der Datenordner bestehen (in der Mac-App-Store-Version der Container `~/Library/Containers/com.etonec.keybics/`) und kann von Ihnen manuell entfernt werden. Den Schlüsselbund-Eintrag „Keybics key passphrase“ (bei älteren Versionen „Keybics key passphrase“) löschen Sie in der Schlüsselbundverwaltung. Bereits exportierte Dateien und bei der Bank gespeicherte Daten löschen Sie bzw. Ihre Bank gesondert.

## 9. Ihre Rechte

Da wir keine personenbezogenen Daten von Ihnen verarbeiten, können wir Auskunft, Berichtigung oder Löschung nicht aus eigenem Bestand erfüllen. Gegenüber Ihrer Bank haben Sie die Rechte nach der DSGVO (Auskunft, Berichtigung, Löschung, Einschränkung, Datenübertragbarkeit, Widerspruch). Sie haben zudem das Recht, sich bei einer Datenschutz-Aufsichtsbehörde zu beschweren.

Bei Fragen erreichen Sie uns unter info@etonec-ds.com. Wenn Sie uns schreiben, verarbeiten wir Ihre E-Mail-Adresse und Ihre Nachricht nur, um Ihre Anfrage zu beantworten (Art. 6 Abs. 1 lit. f DSGVO).

## 10. Änderungen

Wir passen diese Erklärung an, wenn sich die App oder die Rechtslage ändert. Es gilt die jeweils veröffentlichte Fassung.
