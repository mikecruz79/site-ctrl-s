# Ctrl+S - Manutenção de Computadores

![Deployed on Netlify](https://img.shields.io/badge/Deployed%20on-Netlify-00C7B7?logo=netlify&style=for-the-badge)
![GitHub last commit](https://img.shields.io/github/last-commit/mikecruz79/site-ctrl-s?logo=github&style=for-the-badge)
![GitHub repo size](https://img.shields.io/github/repo-size/mikecruz79/site-ctrl-s?logo=github&style=for-the-badge)
![GitHub](https://img.shields.io/github/license/mikecruz79/site-ctrl-s?style=for-the-badge)

Site institucional responsivo para o serviço **Ctrl+S**, uma empresa de manutenção de computadores localizada em Gravataí/RS. O site apresenta os serviços oferecidos, processo de atendimento, depoimentos de clientes e call-to-action para contato via WhatsApp.

**🚀 Site ao vivo:** [https://apertacontrols.netlify.app/](https://apertacontrols.netlify.app/)

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

---

## 🛠 Tecnologias utilizadas

| Tecnologia               | Finalidade                                              |
| ------------------------ | ------------------------------------------------------- |
| **HTML5**                | Estrutura semântica do conteúdo                         |
| **Tailwind CSS**         | Framework CSS utility-first para estilização responsiva |
| **JavaScript (Vanilla)** | Interatividade (animações, scroll suave)                |
| **Netlify**              | Hospedagem e deploy contínuo                            |
| **Git & GitHub**         | Controle de versão e colaboração                        |
| **Figma** (referência)   | Design system e protótipo                               |

### Dependências de desenvolvimento

- `tailwindcss` (^3.4.19)
- `autoprefixer` (^10.4.23)
- `postcss` (^8.5.6)

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

2. **Instale as dependências** (apenas para rebuild do CSS)

   ```bash
   npm install
   ```

3. **Gere o CSS otimizado** (opcional)

   ```bash
   npm run build:css
   ```

   Isso processará `assets/css/input.css` e gerará `assets/css/tailwind.css` (já minificado).

4. **Abra o arquivo `index.html`** diretamente no navegador ou utilize um servidor local:
   ```bash
   npx serve .
   ```

> **Nota:** O arquivo `assets/css/tailwind.min.css` já está incluído no repositório, então não é obrigatório rodar o build para visualizar o site.

---

## 📁 Estrutura de pastas

```
site-ctrl-s/
├── index.html                 # Página principal
├── design.md                  # Documentação do design system
├── tailwind.config.js         # Configuração do Tailwind
├── package.json               # Dependências e scripts
├── assets/
│   ├── css/
│   │   ├── input.css          # CSS de entrada (custom + directives Tailwind)
│   │   ├── tailwind.css       # CSS gerado (desenvolvimento)
│   │   └── tailwind.min.css   # CSS minificado (produção)
│   └── (imagens webp)
├── hero-image.webp            # Imagem do herói
├── service-*.webp             # Ícones dos serviços
└── favicon.ico                # Ícone da aba
```

---

## 📜 Scripts disponíveis

No `package.json`:

| Comando             | Descrição                              |
| ------------------- | -------------------------------------- |
| `npm run build:css` | Compila o CSS do Tailwind (minificado) |

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
