# AuthCenter

Aplicação VCL responsável pela autenticação corporativa integrada ao AuthService utilizando LDAP + JWT.

---

# Objetivo

Centralizar autenticação corporativa das aplicações internas utilizando Active Directory.

A aplicação será responsável por:

- autenticação usuários
- consumo JWT
- gerenciamento usuários AD
- visualização logs
- gerenciamento configurações AuthService

---

# Tecnologias

- Delphi VCL
- RESTRequest4Delphi
- JWT
- Active Directory
- LDAP
- Horse API
- FireDAC

---

# Arquitetura

```text
src
│
├── forms
├── session
├── service
├── model
├── utils
└── dataModules
```

---

# Funcionalidades atuais

- Login integrado AuthService
- Autenticação LDAP
- Consumo JWT
- Sessão autenticada

---

# AuthService

A aplicação consome a API:

POST /login

Retorno:

```json
{
  "success": true,
  "user": "gluz",
  "token": "JWT"
}
```

---

# Roadmap

- [ ] Tela principal
- [ ] Middleware JWT
- [ ] Listagem usuários AD
- [ ] Logs autenticação
- [ ] Configuração sistema
- [ ] Dashboard monitoramento

---

# Autor

Jocelio Gomes da Silva