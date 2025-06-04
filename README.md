# Terraform Docker Projekt

## Beschreibung
Dieses Projekt demonstriert die Grundlagen von Infrastructure as Code (IaC) mit Terraform.
Es erstellt einen NGINX-Container mit Docker unter Verwendung von Terraform.

## Projektstruktur
```
terraform/
└── first-steps/
    ├── provider.tf  # Provider-Konfiguration
    └── main.tf      # Hauptkonfiguration
```

## Voraussetzungen
- Terraform (getestet mit Version 1.12.1)
- Docker Desktop für Windows


## Befehle
```bash
terraform init   # Initialisiert das Terraform-Projekt
terraform plan  # Zeigt geplante Änderungen
```

## Workflow
1. `terraform init` - Initialisierung
2. `terraform plan -var-file="test.tfvars"` - Planungsphase
3. `terraform apply -var-file="test.tfvars"` - Ausführung
4. `terraform destroy -var-file="test.tfvars"` - Aufräumen


## Variable Definitionen
Siehe `variables.tf` für verfügbare Variablen:
- container_name
- external_port
- nginx_html_content


## Neue Funktionen
- Variablen für flexible Konfiguration
- Outputs für Ressourceninformationen
- Provisioner für dynamische HTML-Inhalte
- Verschiedene Methoden der Variablenübergabe


## Screenshots

### Terraform Init
![Terraform Init](./screenshots/TerraFormInit.png)

### Terraform Plan
![Terraform Plan 1](./screenshots/First.png)
![Terraform Plan 2](./screenshots/Second.png)
![Terraform Plan 3](./screenshots/Third.png)
![Terraform Plan 4](./screenshots/Last.png)

### Terraform Plan with Variables
![Terraform Plan with Variables 1](./screenshots/TerraFormPlanVar1.png)
![Terraform Plan with Variables 2](./screenshots/TerraFormPlanVar2.png)

### Terraform Apply with Variables
![Terraform Apply with Variables 1](./screenshots/TerraformApply1.png)
![Terraform Apply with Variables 2](./screenshots/TerraformApply2.png)

### Terraform Destroy with Variables
![Terraform Destroy with Variables 1](./screenshots/TerraFormDestroy1.png)
![Terraform Destroy with Variables 2](./screenshots/TerraFormDestroy2.png)
![Terraform Destroy with Variables 3](./screenshots/TerraFormDestroy3.png)
___

## Beantwortung der Reflexionsfragen
Was ist die Rolle des provider Blocks?
Der Provider Block konfiguriert den spezifischen Infrastructure Provider (hier Docker)
Er stellt die Verbindung zwischen Terraform und der Zielplattform her

Was ist die Rolle des resource Blocks?
Resource Blocks definieren die tatsächlichen Infrastrukturkomponenten
Sie repräsentieren verwaltbare Einheiten (hier: Docker Image und Container)

Implizite Abhängigkeit
Erstellt durch image = docker_image.nginx_image.name
Terraform versteht dadurch, dass der Container das Image benötigt
Wichtig für die korrekte Reihenfolge der Ressourcenerstellung

terraform init
Lädt Provider-Plugins herunter
Initialisiert das Backend
Erstellt lokale Terraform-Arbeitsverzeichnisse

terraform plan
Zeigt geplante Infrastrukturänderungen
Prüft aktuelle gegen gewünschte Konfiguration
Erstellt einen Ausführungsplan (+create, -destroy, ~modify)