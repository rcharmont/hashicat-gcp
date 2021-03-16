module "network" {
  source  = "app.terraform.io/rcharmont-training/network/google"
  version = "2.5.0"
  network_name = "rcharmont-network"
  project_id = var.project
  # insert required variables here
  subnets = [
    {
      subnet_name   = "rcharmont-subnet"
      subnet_ip     = "10.100.10.0/24"
      subnet_region = var.region
    }
  ]
}