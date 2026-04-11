# TODO: ADD MISSING SECRETS
locals {
  api_cache_secrets = [
    {
      name      = ""
      valueFrom = 
    },
    ...
  ]


  # api service
  api_base_secrets = [
    ...
  ]

  api_secrets = concat(local.api_base_secrets, local.api_cache_secrets)

  # analytics service
  analytics_secrets = [
    ...
  ]
}

# ECS Cluster
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_ecs_cluster" "main" {

  tags = {
    Name    = var.cluster_name
    Project = "lks-url"
  }
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_ecs_task_definition" "api" {
  family                   = 
  network_mode             = 
  requires_compatibilities = 
  cpu                      = 
  memory                   = 
  execution_role_arn       = 
  task_role_arn            = 

  container_definitions = jsonencode([
    {
      name      = 
      image     = 
      essential = 

      # TODO: SET PROPER PORT
      portMappings = [
        {
          ...
        }
      ]

      secrets = local.api_secrets

      # TODO: SET PROPER ENVIRONMENT
      environment = [
        {
          ...
        }
      ]

      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = var.log_group_api
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name    = "lks-url-api-td"
    Project = "lks-url"
  }
}

# api service
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_ecs_service" "api" {
  name            = 
  cluster         = 
  task_definition = 
  desired_count   = 
  launch_type     = 

  network_configuration {
    subnets          = 
    security_groups  = []
    assign_public_ip = 
  }

  load_balancer {
    target_group_arn = 
    container_name   = 
    container_port   = 
  }

  tags = {
    Name    = "lks-url-api-svc"
    Project = "lks-url"
  }
}

# analytics service
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_ecs_task_definition" "analytics" {
  family                   = 
  network_mode             = 
  requires_compatibilities = 
  cpu                      = 
  memory                   = 
  execution_role_arn       = 
  task_role_arn            = 

  container_definitions = jsonencode([
    {
      name      = 
      image     = 
      essential = 

      # TODO: SET PROPER PORT
      portMappings = [
        {
          ...
        }
      ]

      secrets = local.analytics_secrets

      # TODO: SET PROPER ENV
      environment = [
        {
          ...
        }
      ]

      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = var.log_group_analytics
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name    = "lks-url-analytics-td"
    Project = "lks-url"
  }
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_ecs_service" "analytics" {
  name            = 
  cluster         = 
  task_definition = 
  desired_count   = 
  launch_type     = 

  network_configuration {
    subnets          = 
    security_groups  = []
    assign_public_ip =
  }

  load_balancer {
    target_group_arn = 
    container_name   = 
    container_port   = 
  }

  tags = {
    Name    = "lks-url-analytics-svc"
    Project = "lks-url"
  }
}

# frontend service
# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_ecs_task_definition" "frontend" {
  family                   = 
  network_mode             = 
  requires_compatibilities = 
  cpu                      = 
  memory                   = 
  execution_role_arn       = 
  task_role_arn            = 

  container_definitions = jsonencode([
    {
      name      = 
      image     = 
      essential = 

      # TODO: SET PROPER PORT
      portMappings = [
        {
          ...
        }
      ]

      secrets     = []
      environment = []

      logConfiguration = {
        logDriver = "awslogs"
        options = {
          "awslogs-group"         = var.log_group_frontend
          "awslogs-region"        = var.aws_region
          "awslogs-stream-prefix" = "ecs"
        }
      }
    }
  ])

  tags = {
    Name    = "lks-url-frontend-td"
    Project = "lks-url"
  }
}

# TODO: ADD MISSING KEYS AND VALUES TO RESOURCE BELOW
resource "aws_ecs_service" "frontend" {
  name            = 
  cluster         = 
  task_definition = 
  desired_count   = 
  launch_type     = 

  network_configuration {
    subnets          = 
    security_groups  = []
    assign_public_ip = 
  }

  load_balancer {
    target_group_arn = 
    container_name   = 
    container_port   = 
  }

  tags = {
    Name    = "lks-url-frontend-svc"
    Project = "lks-url"
  }
}
