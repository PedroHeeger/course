import boto3

# Criar cliente SES
ses = boto3.client('ses')

# function to verify email address
def verify_email(email):
    response = ses.verify_email_address(EmailAddress=email)
    print(response)
    return response

verify_email("test@example.com")