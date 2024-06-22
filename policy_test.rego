
package s3.access

test_st_access_role_allowed {
    allow with input as {
        "user": {
            "role": "st-access-role"
        },
        "action": "s3:GetObject",
        "resource": "arn:aws:s3:::my-secure-bucket/*"
    }
}

test_different_role_denied {
    not allow with input as {
        "user": {
            "role": "other-role"
        },
        "action": "s3:GetObject",
        "resource": "arn:aws:s3:::my-secure-bucket/*"
    }
}

test_st_access_role_wrong_action_denied {
    not allow with input as {
        "user": {
            "role": "st-access-role"
        },
        "action": "s3:PutObject",
        "resource": "arn:aws:s3:::my-secure-bucket/*"
    }
}
