# 📘 Regex Practice Guide for Beginners

Welcome to your beginner-friendly practice guide for learning regular expressions (regex). Each section includes examples you can try on [regex101.com](https://regex101.com) to build muscle memory and pattern recognition.

---

## 🔢 1. Numbers and Digit Matching

### Match Any 5-Digit Zip Code

```regex
\b\d{5}\b
```

Test string:

```
Columbus, OH 43215
New York, NY 10001
Los Angeles, CA 90210-1234
```

---

### Match Any 3-Digit Number

```regex
\b\d{3}\b
```

Variation: Match 1 to 3 digits

```regex
\b\d{1,3}\b
```

---

## 🔤 2. Letters and Words

### Match All Words Starting with "re"

```regex
\b(re\w+)\b
```

Test string:

```
regex, replay, return, redo, refine, reject, real, reach
```

### Match All Capitalized Words

```regex
\b[A-Z][a-z]+\b
```

Test string:

```
My name is Robert. I live in Columbus, Ohio.
```

---

## 📧 3. Email and Website Matching

### Match Simple Emails

```regex
[\w\.-]+@[\w\.-]+\.\w+
```

### Match URLs (http or https)

```regex
https?:\/\/[\w\.-]+
```

Test string:

```
Visit https://chat.openai.com or http://google.com
```

---

## 📅 4. Dates and Time

### Match MM/DD/YYYY Format

```regex
\b\d{2}\/\d{2}\/\d{4}\b
```

Test string:

```
Today is 08/20/2025 and tomorrow is 08/21/2025
```

---

## 🧼 5. Clean-Up Patterns

### Match Extra Spaces (2 or more)

```regex
\s{2,}
```

Use the Substitution box on regex101 to replace with a single space (` `).

---

## 🔖 6. HTML Tag Matching (with Capture Groups)

### Match Basic HTML Tags

```regex
<(\w+)>.*?<\/\1>
```

Test string:

```html
<p>This is a paragraph.</p>
<div>Some div content</div>
<b>Bold text</b>
```

---

## 🕵️‍♂️ 7. Log File and Tech Usage

### Match IPv4 Address

```regex
\b\d{1,3}(\.\d{1,3}){3}\b
```

### Match Apache Log Line (Basic)

```regex
^\d{1,3}(\.\d{1,3}){3} - - \[.*?\] "GET .*? HTTP.*?" \d{3} \d+
```

Test string:

```
127.0.0.1 - - [10/Oct/2023:13:55:36 -0700] "GET /index.html HTTP/1.1" 200 2326
```

---

## 🧩 8. Challenges

### Match Passwords with 8+ Characters

```regex
\b\w{8,}\b
```

Test string:

```
pass1234 hunter2 letmein1234 password abc12345678
```

---

## ✅ Tips for Practicing on regex101

* Paste sample text in the **Test String** box.
* Type the regex pattern in the **Regular Expression** field.
* Use the **Explanation** tab to see what each part does.
* Use the **Substitution** tab to test replacements.

Let me know if you'd like to add more sections (e.g. phone numbers, lookaheads, greedy vs lazy matches) or expand into scripting usage with `grep`, `sed`, or `awk` next!

---

## Reference: Regular Expressions Practice

This document provides beginner-friendly examples and exercises for practicing regular expressions (regex). You can test these patterns using [Regex101.com](https://regex101.com/) — an excellent sandbox environment to get comfortable with regex syntax.

---

### ✅ Step 1: Choose a Flavor

On Regex101, choose the **ECMAScript (JavaScript)** flavor for best compatibility with general scripting use cases.

---

### ✅ Step 2: Paste This Sample Text into the “Test String” Area

```
My email is robert.rippey@gmail.com
Contact support@example.org or info@company.net
Failed login for user root from 192.168.1.45
ERROR: Disk full on /dev/sda1
Phone: 614-555-1234 [](http://voice.google.com/calls?a=nc,%2B16145551234 "Call +1 614-555-1234 via Google Voice")
```

---

### ✅ Step 3: Try These Beginner Patterns One by One

#### 🔹 1. Match all email addresses

```
\w+@\w+\.\w+
```

This will match:

* `support@example.org`
* `info@company.net`

It **won’t match `robert.rippey@gmail.com`** because of the `.` in the username. Try this improved version:

```
[\w\.-]+@[\w\.-]+\.\w+
```

That version matches all three email addresses.

---

#### 🔹 2. Match IP addresses

```
\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}
```

Matches:

* `192.168.1.45`

Shows how the dot `.` must be escaped with `\.` and `{1,3}` limits each segment to 1–3 digits.

---

#### 🔹 3. Match phone numbers

```
\d{3}-\d{3}-\d{4}
```

Matches:

* `614-555-1234`

---

#### 🔹 4. Match error lines

```
^ERROR.*
```

Matches any line that **starts** with the word `ERROR`.

---

#### 🔹 5. Match words starting with a capital letter

```
\b[A-Z][a-z]+
```

Matches:

* `My`, `Robert`, `Contact`, etc.

---

#### 🔹 6. Match words that contain numbers

```
\b\w*\d+\w*\b
```

Matches:

* `Voice123`, `A9z`, `6145551234`

---

#### 🔹 7. Match file paths like /dev/sda1

```
\/[^\s]+
```

Matches:

* `/dev/sda1`

You can refine this later depending on how strict you want to be.

---

#### 🔹 8. Match URLs

```
https?:\/\/[^\s"\)]+
```

Matches:

* `http://voice.google.com/calls?a=nc,%2B16145551234`

This simple pattern grabs http and https links up to the first space or closing parenthesis/quote.

---

#### 🔹 9. Match usernames that follow the word "user"

```
user\s+(\w+)
```

Matches:

* `user root`

  * Capture group will return `root`

---

### 🚀 Pro Tip: Test Variations

Change small parts of the regex and test how they behave:

* Change `+` to `*`
* Add or remove `\b` word boundaries
* Try character classes like `[A-Za-z]` or `[^a-z]`

---

### 📌 Useful Meta Characters and Syntax Cheatsheet

| Symbol | Meaning                            | Example                           |
| ------ | ---------------------------------- | --------------------------------- |
| `\d`   | Digit (0–9)                        | `\d+`                             |
| `\w`   | Word character (a-z, A-Z, 0–9, \_) | `\w+`                             |
| `\s`   | Whitespace (spaces, tabs)          | `\s+`                             |
| `.`    | Any character (except newline)     | `a.c` matches abc, a1c            |
| `*`    | Zero or more                       | `a*` matches empty, a, aa         |
| `+`    | One or more                        | `a+` matches a, aa                |
| `?`    | Optional (0 or 1)                  | `colou?r` matches color or colour |
| `[]`   | Character class                    | `[abc]` matches a, b, or c        |
| `()`   | Capturing group                    | `(\d{3})`                         |
| `^`    | Start of line                      | `^ERROR`                          |
| `$`    | End of line                        | `done$`                           |

---

### ✅ Practice Tips

* Stick to simple matches at first.
* Test just 1-2 lines at a time.
* Use the Explanation tab in Regex101 to see how it works.
* Don’t worry about perfection. Just get used to pattern-matching!

### 🧠 Tips to Build Your Skill

* Type different strings into the test area and see what matches.

* Hover over parts of the regex to see explanations.

* Read the “Explanation” box to understand what each token means.

* Try editing each regex and watch what happens in real-time.

* Use the “Substitution” box to test replacing values (e.g., replace all emails with [REDACTED]).

