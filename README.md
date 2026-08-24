Modified Jibo Be A Maker app for after server shutdown.
*DISCLAIMER:* this is made by claude ai.:

Modified Jibo "Be a Maker" App

A patched build of Jibo's official Be a Maker companion app (com.everis.jibo.app.beamaker), modified to skip the cloud-based sign-in flow that Jibo's original servers required. Jibo Inc.'s cloud backend was shut down in 2019, which permanently broke sign-in for the stock app — this patch lets the app boot straight into local pairing instead of hanging at a dead login screen.

Status

⚠️ Work in progress. Login/auth bypass works. Local robot discovery and connection are still being figured out — see Known Issues below.

What was changed

The patch targets GettingJibosRepositoryImpl.getJibos(), which originally always called Jibo's (now-dead) cloud sign-in SDK (JiboRemoteControl.signIn()). The patched version skips that call and instead immediately fires the app's own built-in "no Jibo account" success path (onGettingJibosTransactionSuccessWithoutJibo()), which the original app already used for users with no linked robot. This routes straight to PairingActivity instead of the dead login WebView.

See smali/ for the modified bytecode, and original/ for reference against the unmodified decompile.

Known Issues
Since getJibos() now returns an empty robot list, PairingActivity currently shows "We couldn't find a Jibo to connect to" — the list needs to be populated with a real Robot(id, name, robotName) object for pairing to proceed.
Whether the underlying JiboRemoteControl.connect() call (a closed, obfuscated class in the bundled apptoolkit SDK) can complete locally against a robot — especially one running the community JiboOS — is still unconfirmed. This may require further reverse-engineering or coordination with the Jibo Revival Group.
Building
bash
apktool b <decompiled_dir> -o beamaker_patched.apk
apksigner sign --ks debug.jks --ks-pass pass:android beamaker_patched.apk
Credit / Disclaimer

The smali patching and analysis in this repo were done in collaboration with Claude (Anthropic) — the person maintaining this repo did the actual decompiling, device testing, and patch application locally; Claude helped identify the relevant code paths and write the patches based on smali the maintainer provided.

This project is for personal preservation of hardware the maintainer owns, made necessary by the shutdown of Jibo Inc.'s servers. Not affiliated with Jibo Inc., NTT Disruption, or the Jibo Revival Group.
