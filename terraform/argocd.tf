resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = "argocd"
  version    = "3.35.4"

  create_namespace = true

  values = [
    <<-EOT
    server:
      service:
        type: LoadBalancer
      ingress:
        enabled: true
        annotations:
          kubernetes.io/ingress.class: alb
    EOT
  ]

  depends_on = [
    aws_eks_node_group.main
  ]
}