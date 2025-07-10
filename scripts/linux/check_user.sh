#!/bin/bash

echo "Enter a username to check:"
read user

if id "$user" &>/dev/null; then
  echo "✅ User '$user' exists."
else
  echo "❌ User '$user' does not exist."
fi
