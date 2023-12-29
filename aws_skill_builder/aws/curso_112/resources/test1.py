# verify email address
import re

email = input("Enter your email address: ")

if re.search("^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$", email):
    print("Valid email address")
    print(email)
    print(re.search("^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$", email))
else:
    print("Invalid email address")
    print(email)
    print(re.search("^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$", email))