resource "aws_route53_record" "strapi" {
  zone_id = "Z06607023RJWXGXD2ZL6M"
  name    = "somesh.contentecho.in"
  type    = "A"

  alias {

    name                   = aws_lb.HelloLB.dns_name
    zone_id                = aws_lb.HelloLB.zone_id
    evaluate_target_health = true
  }
}
