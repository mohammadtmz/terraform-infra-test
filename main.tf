provider "aws" {
    region = "us-east-1"
}

resource "aws_iam_user" "example" {
    for_each = { for username, user in var.users : username => user if user.create_user }

    name = each.key
}

resource "aws_iam_user_policy_attachment" "example" {
    for_each    = aws_iam_user.example
    user        = each.key
    policy_arn  = "arn:aws:iam::aws:policy/${var.users[each.key].policy}"
}