variable "users" {
  type = map(object({
    create_user = bool
    policy      = string
    # other attributes
  }))
}

users = {
  "user1" = {
    create_user = true
    policy      = "AmazonS3FullAccess"
  },
  "user2" = {
    create_user = true
    policy      = "AmazonEC2FullAccess"
  }
}
