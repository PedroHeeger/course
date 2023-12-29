import re
# write function to verify email address
def verify_email(email):
    # regular expression to match email address
    regex = '^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\\.[a-zA-Z0-9-.]+$'
    # check if email matches regex
    if re.match(regex, email):
        return True
    else:
        return False

print(verify_email("test@example.com"))