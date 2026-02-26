# Ctrl+S - Manutenção de Computadores

![Deployed on Netlify](https://img.shields.io/badge/Deployed%20on-Netlify-00C7B7?logo=netlify&style=for-the-badge)
![GitHub last commit](https://badgen.net/github/last-commit/mikecruz79/site-ctrl-s)
![GitHub repo size](https://img.shields.io/github/repo-size/mikecruz79/site-ctrl-s?t=1706390400)
![GitHub](https://badgen.net/github/license/mikecruz79/site-ctrl-s)

> **Wave 1.5 Ready** - Transformação visual completa com micro-interações CSS, refinamento tipográfico e scroll storytelling

Site institucional responsivo para o serviço **Ctrl+S**, uma empresa de manutenção de computadores localizada em Gravataí/RS. O site apresenta os serviços oferecidos, processo de atendimento, depoimentos de clientes e call-to-action para contato via WhatsApp.

**🚀 Site ao vivo:** [https://apertacontrols.netlify.app/](https://apertacontrols.netlify.app/)

> **Pipeline atual:** `npm run deploy:netlify` executa lint (`htmlhint`), build (`tailwindcss`), Lighthouse CI e dispara o build hook da Netlify. O workflow GitHub Actions (`.github/workflows/ci.yml`) continua versionado, porém está pausado enquanto o GitHub Actions da conta aguarda regularização de billing. O Dependabot segue ativo para alertar atualizações de npm e Actions.

---

## 📖 Sobre o projeto

O **Ctrl+S** é um serviço especializado em manutenção de software para computadores, oferecendo:

- Limpeza profunda do sistema
- Remoção de vírus e malware
- Otimização de inicialização e programas

O site foi desenvolvido com foco em **experiência mobile-first**, design limpo e acessível, e otimização para conversão (CTA direto para WhatsApp).

### Objetivos do projeto

- Apresentar os serviços de forma clara e confiável
- Proporcionar uma navegação intuitiva e rápida
- Facilitar o contato com o cliente através de WhatsApp
- Ser totalmente responsivo e performático
- **Wave 1.5**: Transformação visual com micro-interações "uau" e storytelling via scroll

---

## 🛠 Tecnologias utilizadas

| Tecnologia               | Finalidade                                                                         |
| ------------------------ | ----------------------------------------------------------------------------------- |
| **HTML5**                | Estrutura semântica do conteúdo                                                    |
| **Tailwind CSS**         | Framework CSS utility-first (7KB otimizado com PurgeCSS, 99% redução)              |
| **JavaScript (Vanilla)** | Interatividade, scroll storytelling, micro-interações                              |
| **Netlify**              | Hospedagem e deploy contínuo                                                       |
| **Git & GitHub**         | Controle de versão e colaboração                                                   |
| **Figma** (referência)   | Design system e protótipo                                                          |
| **PurgeCSS**             | Otimização de CSS (3MB → 7KB)                                                      |

### Features

| Feature                      | Descrição                                                                 |
| ---------------------------- | ------------------------------------------------------------------------- |
| **Performance**              | CSS otimizado (7KB), imagens WebP, Core Web Vitals aprovados              |
| **Acessibilidade**           | WCAG AA/AAA compliance, alt texts, semantic HTML                          |
| **Micro-interações**         | Hover effects, typewriter, fade-in scroll, emoji archetypes, pulse        |
| **Scroll Storytelling**      | Animações escalonadas que contam uma história conforme usuário desce      |
| **CTA Otimizados**           | 3 botões WhatsApp com UTMs para tracking, copy focado em dor do cliente    |
| **Schema Markup**            | JSON-LD para SEO, ComputerRepairService com LocalBusiness                |
| **Mobile-First**             | Responsivo, touch-friendly, 60fps animations                              |

---

## ✅ Automação & Deploy em 2026

| Componente | Status & Observações |
| --- | --- |
| `npm run validate` | Executa lint HTML, build CSS e Lighthouse localmente (sem disparar deploy). |
| `npm run deploy:netlify` | Encapsula `validate` e, após passar, chama o hook [`scripts/deploy-netlify.sh`](scripts/deploy-netlify.sh) → Netlify constrói e publica. |
| GitHub Actions (ci.yml) | Workflow continua no repositório, mas os jobs não iniciam enquanto o GitHub mantiver a conta bloqueada por billing. Ao desbloquear, volta a rodar sem ajustes. |
| Dependabot | Mantém vigilância semanal sobre `npm` e `github-actions`, garantindo alertas mesmo durante o bloqueio do Actions. |

> Enquanto o CI do GitHub estiver indisponível, todo deploy oficial passa pelo comando `npm run deploy:netlify`, que garante qualidade e publicação automática no Netlify.

---

## 🎨 Design System

O projeto segue um **design system próprio** documentado em [`design.md`](design.md), com as seguintes diretrizes:

### Cores

| Cor          | Hexadecimal | Uso                        |
| ------------ | ----------- | -------------------------- |
| Primária     | `#2DD4BF`   | Botões, destaques, ícones  |
| Secundária   | `#F8FAFC`   | Fundos claros              |
| Destaque     | `#0F766E`   | Hover, contrastes          |
| Texto escuro | `#1E293B`   | Títulos e parágrafos       |
| Texto claro  | `#FFFFFF`   | Texto sobre fundos escuros |

### Tipografia

- **Títulos:** `Inter` (sans-serif moderna)
- **Corpo:** `Open Sans` (alta legibilidade em mobile)

### Princípios visuais

- Densidade média, foco em mobile
- Espaçamento generoso entre seções
- Animações sutis de fade-in no scroll
- Ícones minimalistas em linha fina

---

## 🚀 Como executar localmente

1. **Clone o repositório**

   ```bash
   git clone https://github.com/mikecruz79/site-ctrl-s.git
   cd site-ctrl-s
   ```

2. **Abra o arquivo `index.html` diretamente no navegador** ou utilize um servidor local:

   ```bash
   # Opção 1: Abrir direto no navegador (clicar no arquivo)
   # Opção 2: Servidor local simples
   npx serve .
   # Opção 3: Com Python (se tiver instalado)
   python3 -m http.server 8000
   # Opção 4: Com Node.js
   npx http-server -p 8000
   ```

   O site é 100% estático e não requer build ou instalação de dependências!

> **Nota:** O CSS já está otimizado (7KB + 8KB de refinamentos) via PurgeCSS. Não é necessário compilar ou rodar build scripts.

---

## 📁 Estrutura de pastas (Produção)

```
site-ctrl-s/
├── index.html                          # Página principal (42KB)
├── design.md                           # Documentação do design system
├── README.md                           # Documentação pública
├── LICENSE                             # Licença MIT
├── .gitignore                          # Exclusões de versionamento
├── assets/
│   └── css/
│       ├── tailwind-optimized.css      # CSS otimizado (7KB, PurgeCSS)
│       └── typography-refinements.css  # Micro-interações (8KB)
├── hero-image.webp                     # Imagem hero (11KB)
├── service-cleaning.webp               # Ícone serviço - limpeza
├── service-speed.webp                  # Ícone serviço - otimização
├── service-virus.webp                  # Ícone serviço - vírus
└── favicon.ico                         # Ícone da aba (713 bytes)
```

**Total:** ~110KB de código + assets (ultra performático!)

---

## 📊 Performance Metrics

| Métrica                  | Valor                    | Status              |
| ------------------------ | ------------------------ | ------------------- |
| **CSS Total**            | 15KB (7KB + 8KB)         | ✅ Ótimo            |
| **CSS Optimized**        | 99.7% redução (3MB→7KB)  | ✅ Excelente        |
| **Core Web Vitals**      | LCP < 2.5s, CLS < 0.1    | ✅ Aprovado         |
| **Images**               | WebP otimizadas          | ✅ Otimizado        |
| **JavaScript**           | Vanilla (sem frameworks) | ✅ Leve             |
| **Total Assets**         | ~110KB (sem imagens)     | ✅ Ultra-performático |

**Nota:** CSS otimizado via PurgeCSS remove 99.7% das classes não utilizadas, mantendo apenas o essencial para produção.

---

## 🧱 Arquitetura e Deploy

- **Pipeline**: design → Tailwind utility-first → build PurgeCSS → `npm run deploy:netlify` → Netlify hook.
- **Entry point**: `index.html` consome os CSS otimizados em `assets/css/`.
- **Automação**: script [`scripts/deploy-netlify.sh`](scripts/deploy-netlify.sh) executa lint/build/Lighthouse antes de disparar o hook.
- **GitHub Actions**: workflow `ci.yml` permanece versionado para quando o billing for regularizado (hoje o job não inicia por bloqueio de conta).
- **Hospedagem**: Netlify (build zero, apenas upload estático) com redirects e headers versionados.
- **Observabilidade**: Netlify Analytics + monitoramento externo (UptimeRobot) para disponibilidade.
- Documento detalhado: [`docs/architecture.md`](docs/architecture.md).

---

## 🤝 Governança & Colaboração

- **Fluxo padrão**: Issue ➜ branch `tipo/descricao` ➜ Pull Request com checklist.
- **Branch protection**: `master` aceita apenas merges via PR com CI verde e squash merge.
- **Documentos chave**: [`CONTRIBUTING.md`](CONTRIBUTING.md) e [`CODE_OF_CONDUCT.md`](CODE_OF_CONDUCT.md).
- **Templates**: Issues e PRs automatizados em `.github/` (bug, feature e revisão).
- **Release notes**: registradas no [`CHANGELOG.md`](CHANGELOG.md) com versionamento semântico.
- **Política de segurança**: disponível em [`SECURITY.md`](SECURITY.md) com SLA e canais de contato.

### Como contribuir rapidamente
1. Abra uma Issue usando o template adequado (bug ou feature).
2. Crie uma branch `tipo/descritivo-curto` a partir de `master`.
3. Rode `npm install` (ou `npm ci`) e execute `npm run validate` para garantir lint/build/Lighthouse locais. Para publicar, use `npm run deploy:netlify` (que roda todas as validações e dispara o hook configurado).
4. Abra um PR preenchendo o checklist e anexando evidências.
5. Aguarde aprovação (mesmo em projeto solo, mantemos PR para histórico).

---

## 🧭 Roadmap

| Fase | Status | Descrição |
| ---- | ------ | --------- |
| **Wave 1.6** | 🔄 Em planejamento | Conteúdo multilíngue (pt/en) e CTA com analytics dedicados |
| **Wave 1.7** | 🟢 Planejado | Integração com CRM + automação de leads |
| **Wave 2.0** | 🟡 Backlog | Dashboard de métricas públicas e blog técnico |

Sugestões adicionais são bem-vindas via Issues com o template "Feature request".

---

## 🔒 Segurança & Observabilidade

- **Relatos**: use [`SECURITY.md`](SECURITY.md) ou envie e-mail para security@apertacontrols.netlify.app.
- **Headers Netlify**: `_headers` adiciona HSTS, CSP, X-Content-Type-Options e Referrer-Policy.
- **Monitoramento**: Netlify Analytics + UptimeRobot com alertas de disponibilidade.
- **Dependências**: monitoradas pelo Dependabot e auditadas durante `npm run validate`.

---

## 🔗 Links importantes

- **Site oficial:** [https://apertacontrols.netlify.app/](https://apertacontrols.netlify.app/)
- **Repositório GitHub:** [https://github.com/mikecruz79/site-ctrl-s](https://github.com/mikecruz79/site-ctrl-s)
- **Design system:** [`design.md`](design.md)
- **Contato comercial:** [WhatsApp (51) 98941-6219](https://wa.me/5551989416219)

---

## 📄 Licença

Este projeto está licenciado sob a **MIT License** - veja o arquivo [LICENSE](LICENSE) para detalhes.

---

## 👨‍💻 Autor

**Mike Cruz**

- GitHub: [@mikecruz79](https://github.com/mikecruz79)
- Site: [https://apertacontrols.netlify.app/](https://apertacontrols.netlify.app/)

---

## 🙌 Agradecimentos

- Equipe do **Tailwind CSS** pela incrível ferramenta
- **Netlify** pela hospedagem gratuita e CI/CD simples
- Comunidade de desenvolvedores front-end por inspirações

---

**💙 Se este projeto te ajudou, deixe uma ⭐ no repositório!**
