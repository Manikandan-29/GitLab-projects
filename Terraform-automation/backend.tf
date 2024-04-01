terraform {
    backend "s3" {
        bucket = "terraformbucketmani"
        key ="state"
        region ="us-east-1"
        dynamodb_table ="newtable"
    }
}