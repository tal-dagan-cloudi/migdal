


# Stracture
.
├── terraform/
│   ├── main.tf
│   ├── variables.tf
│   ├── outputs.tf
│   ├── provider.tf
│   ├── vpc.tf
│   ├── eks.tf
│   ├── argocd.tf
│   └── alb.tf
├── kubernetes/
│   ├── hello-world/
│   │   ├── deployment.yaml
│   │   └── service.yaml
│   └── argocd/
│       └── application.yaml
└── .github/
    └── workflows/
        └── ci-cd.yaml
