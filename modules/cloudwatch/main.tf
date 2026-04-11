# TODO: ADD MISSING VALUES TO RESOURCES BELOW

resource "aws_cloudwatch_log_group" "api" {
  name              = ""
  retention_in_days =

  tags = {
    Name    = "/ecs/lks-url-shortener-api"
    Project = "lks-url"
  }
}

resource "aws_cloudwatch_log_group" "analytics" {
  name              = ""
  retention_in_days =

  tags = {
    Name    = "/ecs/lks-url-analytics"
    Project = "lks-url"
  }
}

resource "aws_cloudwatch_log_group" "frontend" {
  name              = ""
  retention_in_days =

  tags = {
    Name    = "/ecs/lks-url-frontend"
    Project = "lks-url"
  }
}
