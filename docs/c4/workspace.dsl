/*
 * Gerado por fernando-moretes/platform como ponto de partida. ESTE arquivo e
 * seu: o rollout so cria se nao existir, nunca sobrescreve.
 *
 * Modelo C4 de dot-setup-macos-developer. Renderize em https://c4.home.lab (Structurizr Lite)
 * ou cole em https://structurizr.com/dsl.
 */
workspace "dot-setup-macos-developer" "macOS developer workstation setup automation for repeatable engineering environments." {

    configuration {
        scope softwaresystem
    }

    model {
        usuario = person "Usuário"
        sistema = softwareSystem "dot-setup-macos-developer" "macOS developer workstation setup automation for repeatable engineering environments." {
            app = container "Aplicação" "Descreva o que roda aqui" "ci-generic.yml"
        }
        usuario -> sistema.app "Usa" "HTTPS"
    }

    views {
        systemContext sistema "contexto" {
            include *
            autoLayout lr
        }
        container sistema "containers" {
            include *
            autoLayout lr
        }
        styles {
            element "Person" {
                shape person
                background #08427b
                color #ffffff
            }
            element "Software System" {
                background #1168bd
                color #ffffff
            }
            element "Container" {
                background #438dd5
                color #ffffff
            }
        }
    }
}
