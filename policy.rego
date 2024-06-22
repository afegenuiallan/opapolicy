package s3.access

default allow = false

# Define the policy rule
allow {
    input.user.role == "st-access-role"
    input.action == "s3:GetObject"  # Define allowed actions
    input.resource == "arn:aws:s3:::my-secure-bucket/*"  # Specify the S3 bucket ARN
}
