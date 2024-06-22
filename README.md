# OPA Policy for AWS S3 Bucket Access

## Overview
This repository contains a REGO policy for enforcing access control to an AWS S3 bucket using Open Policy Agent (OPA). The policy ensures that only users with a specific IAM role, `st-access-role`, are allowed to access the bucket.

## Policy Details
- **Policy File**: `policy.rego`
- **Test File**: `policy_test.rego`
- **Policy Enforcement**: Only users with the `st-access-role` are allowed to perform `s3:GetObject` on the `my-secure-bucket`.

## Assumptions
- The role to be allowed is `st-access-role`.
- Only `s3:GetObject` action is permitted for the specified bucket.

## Edge Cases
- Users with roles other than `st-access-role` should be denied.
- Any action other than `s3:GetObject` should be denied, even for users with `st-access-role`.

## Logging and Monitoring
- Implement logging in AWS CloudTrail to track access requests and policy enforcement.
- Use AWS CloudWatch for monitoring policy decisions and generating alerts for unauthorized access attempts.

## How to Test
1. Clone the repository.
2. Install OPA if not already installed.
3. Run the tests using `opa test policy.rego policy_test.rego`.

## Git Repository


## Test Results


## Contact

