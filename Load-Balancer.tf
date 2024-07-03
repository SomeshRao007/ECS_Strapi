# resource "aws_lb" "HelloLB" {
#   name               = "hello-strapi-lb"
#   internal           = false
#   load_balancer_type = "application"
#   security_groups    = [aws_security_group.HelloSG.id]
#   subnets            = [aws_subnet.subnet1.id, aws_subnet.subnet2.id]
# }

# # resource "aws_lb_target_group" "HelloTG" {
# #   name     = "hello-strapi-tg"
# #   port     = 1337
# #   protocol = "HTTP"
# #   # vpc_id   = aws_vpc.main.id

# #   # health_check {
# #   #   path                = "/"
# #   #   interval            = 30
# #   #   timeout             = 5
# #   #   healthy_threshold   = 2
# #   #   unhealthy_threshold = 2
# #   # }
# # }

# resource "aws_lb_listener" "Listener" {
#   load_balancer_arn = aws_lb.HelloLB.arn
#   port              = "80"
#   protocol          = "HTTP"

#   default_action {
#     type             = "forward"
#     target_group_arn = aws_lb_target_group.HelloTG.arn
#   }
# }
