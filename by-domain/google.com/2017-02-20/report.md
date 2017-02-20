---
email:
  used: opws.test.2017.02.20@gmail.com
fallback email:
  unmasked: burfgmib@sharklasers.com
  used: 6li2ig+15qlzgj8vdw5s@sharklasers.com
birthdate: 1970-01-01
passwords: # in order of use
- a1a1a1a1
- 1a1a1a1a
- nnnnnnnn

specimens:
- filename: add-email.eml
  description: Confirmation for linked email address
- filename: notify-creation.eml
  description: Notifying creation
- filename: password-reset.eml
  description: Password reset response

---

## Registration

`perfunctory` is gauged as a "strong" password, wtf?

Gender accepts "Female", "Male", "Other", and "Rather not say"

"Location" tooltipped as "Your country or territory of residence."

Stub address: https://accounts.google.com/SignUpDone?continue=https%3A%2F%2Faccounts.google.com%2FManageAccount&fvi=ogt0ab8yleEcFJZF3lO039tv6IuytAI&dsh=-7150238152944847725

Logged in after registering, unsurprisingly

The "Verify added address" email came before the "Your Gmail address has been created" email

## Resetting password

Seems to have an "Enter the last password you remember" recovery method, which... still lets you pick an email address? Maybe this way you can send it to *any* email? Didn't test

It's probably a mechanism to let the user pick any email tied to the account, rather than having Google pick it

going through the "login trouble" path twice sends two emails, but both will have the same code

lol look how much less boilerplate the plaintext email has

## Changing password via settings

The new password and new password confirmation when changing password are independently toggleable
