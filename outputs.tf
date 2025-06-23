# Outputs

# EKS Cluster Information
output "eks_cluster_name" {
  description = "EKS Cluster Name"
  value       = aws_eks_cluster.main.name
}

output "eks_cluster_endpoint" {
  description = "EKS Cluster Endpoint"
  value       = aws_eks_cluster.main.endpoint
}

output "eks_cluster_arn" {
  description = "EKS Cluster ARN"
  value       = aws_eks_cluster.main.arn
}

# ECR Repository URLs
output "frontend_ecr_repository_uri" {
  description = "Frontend ECR Repository URI"
  value       = aws_ecr_repository.frontend.repository_url
}

output "backend_ecr_repository_uri" {
  description = "Backend ECR Repository URI"
  value       = aws_ecr_repository.backend.repository_url
}

# RDS Information
output "rds_endpoint" {
  description = "RDS MySQL Endpoint"
  value       = aws_db_instance.main.endpoint
}

output "rds_port" {
  description = "RDS MySQL Port"
  value       = aws_db_instance.main.port
}

output "rds_username" {
  description = "RDS MySQL Master Username"
  value       = aws_db_instance.main.username
  sensitive   = true
}

output "rds_database_name" {
  description = "RDS MySQL Database Name"
  value       = aws_db_instance.main.db_name
}

# SonarQube Information
output "sonarqube_public_ip" {
  description = "SonarQube Instance Public IP"
  value       = aws_instance.sonarqube.public_ip
}

output "sonarqube_url" {
  description = "SonarQube Web Interface URL"
  value       = "http://${aws_instance.sonarqube.public_ip}:9000"
}

output "sonarqube_instance_id" {
  description = "SonarQube EC2 Instance ID"
  value       = aws_instance.sonarqube.id
}

# VPC Information
output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.main.id
}

output "public_subnet_1_id" {
  description = "Public Subnet 1 ID"
  value       = aws_subnet.public_1.id
}

output "public_subnet_2_id" {
  description = "Public Subnet 2 ID"
  value       = aws_subnet.public_2.id
}

output "private_subnet_1_id" {
  description = "Private Subnet 1 ID"
  value       = aws_subnet.private_1.id
}

output "private_subnet_2_id" {
  description = "Private Subnet 2 ID"
  value       = aws_subnet.private_2.id
}

# Security Group IDs
output "eks_cluster_security_group_id" {
  description = "EKS Cluster Security Group ID"
  value       = aws_security_group.eks_cluster.id
}

output "eks_nodes_security_group_id" {
  description = "EKS Nodes Security Group ID"
  value       = aws_security_group.eks_nodes.id
}

# IAM Role ARNs
output "eks_cluster_role_arn" {
  description = "EKS Cluster IAM Role ARN"
  value       = aws_iam_role.eks_cluster.arn
}

output "eks_nodegroup_role_arn" {
  description = "EKS Node Group IAM Role ARN"
  value       = aws_iam_role.eks_nodegroup.arn
}
