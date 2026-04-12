# TODO: ADD PROPER KEYS AND VALUES TO RESOURCE BELOW

resource "aws_dynamodb_table" "cache" {
  tags = {
    Name    = "lks-url-cache-table"
    Project = "lks-url"
  }
}
