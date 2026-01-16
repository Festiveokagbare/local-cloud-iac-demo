output "nginx_access_info" {
  value = "NGINX is available at http://localhost:8080 (served via Docker Compose)"
}

output "s3_bucket" {
  value = module.s3.bucket_name
}

output "nginx_security_group_id" {
  value = module.nginx.security_group_id
}

output "s3_console" {
  value = "LocalStack S3 running at http://localhost:4566"
}