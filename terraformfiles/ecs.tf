# Create ECS Cluster
resource "aws_ecs_cluster" "main" {
  name = "main-cluster"
}

# Define Task Definition for ECS
resource "aws_ecs_task_definition" "main" {
  family                   = "main-task"
  network_mode             = "awsvpc"
  requires_compatibilities = ["FARGATE"]

  execution_role_arn = aws_iam_role.execution.arn
  task_role_arn      = aws_iam_role.task.arn

  container_definitions = <<DEFINITION
  [
    {
      "name": "web",
      "image": "nginx",
      "cpu": 256,
      "memory": 512,
      "portMappings": [
        {
          "containerPort": 80,
          "hostPort": 80,
          "protocol": "tcp"
        }
      ],
      "logConfiguration": {
        "logDriver": "awslogs",
        "options": {
          "awslogs-group": "/ecs/main",
          "awslogs-region": "us-east-1",
          "awslogs-stream-prefix": "ecs"
        }
      }
    }
  ]
  DEFINITION
}
