# TODO: ADD MISSING VALUES TO RESOURCES BELOW

locals {
  tags = { Project = "lks-url" }
}

resource "aws_db_subnet_group" "main" {
  name       = 
  subnet_ids = 

  tags = merge(local.tags, { Name = "lks-url-db-subnet-group" })
}

# TODO: ADD PROPER KEYS AND VALUES TO RESOURCE BELOW
resource "aws_db_instance" "main" {

  tags = merge(local.tags, { Name = "lks-url-db" })
}
