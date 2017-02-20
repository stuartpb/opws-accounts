---
email:
  unmasked: soeprsib@sharklasers.com
  used: 6lgj7q+hwde0de9y28k@sharklasers.com
username: aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
first name: Testfirst
last name: Testlast
display name: OPWS test 2017-02-20
passwords: # in order of use
- abcd1234
- aaaaaaa1
- a1111111
- asdf1234

specimens:
- filename: registration-confirmation.eml
  description: Post-registration confirmation email
- filename: password-reset.eml
  description: Password reset response
- filename: change-confirmation.eml
  description: Notification of password change via settings
- filename: password-reset2.eml
  description: Second password reset response

---

there's also https://www.mashery.com/trial-signup but I didn't bother trying to see if that's a separate accounts base. it might be, in which case this profile needs to become developer.mashery.com, but right now I don't feel like figuring it out

on "display name" (here documented as "fullname"):

> Please use only letters (A-Z and a-z), numbers (0-9), hypens (-), underscores (_), apostrophes ('), commas (,) and spaces

overlong username just says "Please enter a shorter string", no indication about what's accepted as "shorter" - I jumped from 260 to 250 and it worked, so I'm not sure what the max length is but it's somewhere between those two, and trying 257 "a"s yields a "that username is not available" now

trying to login before clicking the registration confirmation link prompts you to resend the confirmation email because you have to click the link within

resetting the password led to a stub that led to... a form telling me I have to click the confirmation link?

trying the confirmation code link told me it was invalid, so something must have invalidated it

it's definitely in some kind of weird quasi-signed-in state, the "Sign In" link points to https://developer.mashery.com/login/mashery-id?r=https%3A%2F%2Fdeveloper.mashery.com%2Fdashboard%2Fdashboard&h=f9f87a2e3b4cdaee393712678336e9df

http://developer.mashery.com/member/resend-confirmation is telling me "account already activated, no confirmation email sent"

https://secure.mashery.com/member/edit seems to see the account as signed in just fine... not sure what did that

changing password doesn't sign out or anything, but it does mention that "other portals" will use the new password

not sure if submitting a rejected password doesn't sign you in or not when resetting, that might be worth testing some day (I would guess it wouldn't)

trying to change password again after the last reset:

> You may not change your password more than three times in a 24 hour period. Please try again later.

the same message comes up when trying to follow a password reset link, too. Bummer.