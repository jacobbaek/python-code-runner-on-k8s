project = "jacobbaek-py"

app "k8spysample" {
  labels = {
    "service" = "k8spysample",
    "env" = "dev"
  }

  build {
    use "docker" {}
    registry {
      use "docker" {
        image = "dubaek/k8spysample"
        tag = "0.2"
      }
    }
  }
  deploy {
    use "kubernetes" {
      probe_path = "/"
      service_port = 5000
    }
  }

  release {
    use "kubernetes" {
    }
  }
}

