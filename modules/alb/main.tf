# TODO: ADD MISSING VALUES TO RESOURCES BELOW
resource "aws_lb" "main" {
  name               = 
  internal           = 
  load_balancer_type = 
  security_groups    = []
  subnets            = 

  tags = {
    Name    = "lks-url-alb"
    Project = "lks-url"
  }
}

# Target group: frontend
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_lb_target_group" "frontend" {

  tags = {
    Name    = "lks-url-tg-frontend"
    Project = "lks-url"
  }
}

# Target group: api-service
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_lb_target_group" "api" {

  tags = {
    Name    = "lks-url-tg-api"
    Project = "lks-url"
  }
}

# Target group: analytics-service
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_lb_target_group" "analytics" {

  tags = {
    Name    = "lks-url-tg-analytics"
    Project = "lks-url"
  }
}

# HTTP listener
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCES BELOW
resource "aws_lb_listener" "http" {

}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCES BELOW
resource "aws_lb_listener_rule" "analytics" {

  condition {
    path_pattern {
      values = ["/api/stats*"]
    }
  }
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCES BELOW
resource "aws_lb_listener_rule" "api" {

  condition {
    path_pattern {
      values = ["/api/*"]
    }
  }
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCES BELOW
resource "aws_lb_listener_rule" "redirect" {

  condition {
    path_pattern {
      values = ["/s/*"]
    }
  }
}
