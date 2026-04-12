# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_sqs_queue" "dlq" {

  tags = {
    Name    = "lks-url-click-events-dlq"
    Project = "lks-url"
  }
}

resource "aws_sqs_queue" "click_events" {

  tags = {
    Name    = "lks-url-click-events"
    Project = "lks-url"
  }
}
