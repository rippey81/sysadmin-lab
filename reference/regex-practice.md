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
