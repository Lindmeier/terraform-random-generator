terraform {
  required_providers {
    # Terraform Test Provider (mangels offizieller Sprachmittel)
    test = {
      source = "terraform.io/builtin/test"
    }
    
  }
}

module "main" {
  # das zu testende Module wird geladen
  source = "../.."
  type = "VMdfsklö"
}

# ------------------------------------------------------------------------------
# Assertions / Test-Definitionen
# ------------------------------------------------------------------------------


#lokale Variablen können zur Nachverarbeitung von Ergebnissen genutzt werden. 
#Wenn ausgeführte Funktionen fehlschlagen, schlägt auch der Testfall fehl.

locals {
  tmp = regex(
    "^VM.*$",
    module.main.official_name,
  )
}
/*

resource "test_assertions" "testfall1" {
  # eindeutiger Identifier für den Testfall
  component = "testfall1"

  # mit den equal und check Blöcken können die Assertions abgebildet werden

   equal "prefix_" {    
       description = "richtiger Prefix"    
       got         = module.main.prefix
       want        = "test2"  
    }

  check "zufallszahl_" {
    description = "richtiges Format der Zufallszahl"
    condition   = can(regex("^test2.*$", module.main.zufallszahl.b64_url))
  }
}

*/
