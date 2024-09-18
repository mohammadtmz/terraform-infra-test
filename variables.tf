variable "users" {
    description = "map of users to create. keys are the username, values are a map containing whether to create the user and the user's policy."
    type = map(object({
        create_user = bool
        policy      = string
    }))
    default = {
        "user1" = {
            create_user = true
            policy      = "AdminAccess"
        },
        "user2" = {
            create_user = false
            policy      = "ReadOnlyAccess"
        },
        "user3" = {
            create_user = true
            policy      = "PowerUserAccess"
        }
    }
}