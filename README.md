# 🎓 API de Gestão Escolar com FastAPI & Docker Compose

API RESTful completa desenvolvida em **FastAPI** para gestão acadêmica (alunos, cursos e matrículas), utilizando **SQLAlchemy** e **SQLite**, com documentação interativa automática (**Swagger / OpenAPI**), containerizada com **Docker** e orquestrada via **Docker Compose**.

---

## 🚀 Funcionalidades

- **CRUD Completo:**
  - 👨‍🎓 **Alunos:** Cadastro, listagem, busca por ID, atualização e remoção.
  - 📚 **Cursos:** Criação, listagem e detalhamento de cursos ofertados.
  - 📝 **Matrículas:** Vinculação de alunos a cursos com controle de status.
- **Validação Automática de Dados:** Schemas robustos utilizando **Pydantic** para validação de tipos e dados de entrada/saída.
- **Persistência de Dados:** Integração com **SQLAlchemy ORM** e banco de dados SQLite.
- **Documentação Interativa Integrada:** Interface interativa Swagger UI e ReDoc disponíveis automaticamente.
- **Containerização Eficiente:** Imagem Docker otimizada baseada em `python:3.13-alpine` expondo a porta `9000`.
- **Orquestração:** Configuração pronta com **Docker Compose** e volume mapeado para live-reload em desenvolvimento.
- **CI/CD:** Pipeline automatizado com GitHub Actions para validação e build da imagem Docker.

---

## 🛠️ Tecnologias Utilizadas

- **Framework Web:** [FastAPI](https://fastapi.tiangolo.com/)
- **Servidor ASGI:** [Uvicorn](https://www.uvicorn.org/)
- **ORM & Banco de Dados:** SQLAlchemy & SQLite
- **Validação de Schemas:** Pydantic
- **Containerização:** Docker (Alpine Linux) & Docker Compose
- **Integração Contínua:** GitHub Actions

---

## 📂 Estrutura do Repositório

```text
api-alunos-docker-compose/
├── .github/
│   └── workflows/
│       └── docker-image.yml  # Pipeline CI para build da imagem Docker
├── routers/
│   ├── alunos.py             # Rotas e controladores para entidade Alunos
│   ├── cursos.py             # Rotas e controladores para entidade Cursos
│   └── matriculas.py         # Rotas e controladores para Matrículas
├── app.py                    # Inicialização e inclusão dos roteadores da FastAPI
├── database.py               # Configuração da engine do SQLAlchemy e sessão
├── models.py                 # Definição dos modelos ORM do banco de dados
├── schemas.py                # Schemas de validação e serialização Pydantic
├── Dockerfile                # Dockerfile multi-stage/leve baseado em Alpine
├── docker-compose.yml        # Orquestração do serviço com porta 9000
├── requirements.txt          # Dependências do projeto (FastAPI, SQLAlchemy, Uvicorn)
├── .gitignore                # Arquivos ignorados pelo Git
└── README.md                 # Documentação do projeto
```

---

## ⚙️ Como Executar

### Pré-requisitos
- [Git](https://git-scm.com/)
- [Docker & Docker Compose](https://www.docker.com/) (recomendado) **ou** [Python 3.10+](https://www.python.org/)

---

### Opção 1: Executando via Docker Compose (Recomendado)

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/igorpaiva26/api-alunos-docker-compose.git
   cd api-alunos-docker-compose
   ```

2. **Suba o container com build automático:**
   ```bash
   docker compose up -d --build
   ```

3. **Verifique os logs da aplicação:**
   ```bash
   docker compose logs -f escola-api
   ```

A aplicação estará pronta e respondendo na porta **`9000`**.

---

### Opção 2: Executando Localmente (Ambiente Virtual)

1. **Clone o repositório:**
   ```bash
   git clone https://github.com/igorpaiva26/api-alunos-docker-compose.git
   cd api-alunos-docker-compose
   ```

2. **Crie e ative um ambiente virtual:**
   ```bash
   python -m venv venv
   # No Linux/macOS:
   source venv/bin/activate
   # No Windows (PowerShell):
   .\venv\Scripts\Activate.ps1
   ```

3. **Instale as dependências:**
   ```bash
   pip install -r requirements.txt
   ```

4. **Inicie o servidor de desenvolvimento:**
   ```bash
   uvicorn app:app --host 0.0.0.0 --port 9000 --reload
   ```

---

## 📖 Documentação Interativa da API (Swagger UI)

Com a aplicação em execução, acesse pelo navegador:

- **Swagger UI:** [http://localhost:9000/docs](http://localhost:9000/docs) (permite testar todos os endpoints interativamente)
- **ReDoc:** [http://localhost:9000/redoc](http://localhost:9000/redoc)

---

## 🔌 Principais Endpoints

| Método | Rota | Descrição |
|---|---|---|
| `GET` | `/alunos` | Listagem paginada de todos os alunos cadastrados |
| `POST` | `/alunos` | Cadastro de um novo aluno |
| `GET` | `/alunos/{id}` | Consulta detalhada de um aluno por ID |
| `PUT` | `/alunos/{id}` | Atualização cadastral de um aluno |
| `DELETE` | `/alunos/{id}` | Remoção de aluno do sistema |
| `GET` | `/cursos` | Listagem de todos os cursos ofertados |
| `POST` | `/cursos` | Cadastro de um novo curso |
| `GET` | `/matriculas` | Listagem de todas as matrículas ativas |
| `POST` | `/matriculas` | Criação de vínculo de matrícula entre aluno e curso |

---

## 👤 Autor

Desenvolvido por **[Igor Paiva](https://github.com/igorpaiva26)**.
