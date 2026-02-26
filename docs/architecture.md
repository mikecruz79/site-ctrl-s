# Arquitetura Ctrl+S

## Visão Geral
O Ctrl+S é um site estático otimizado para performance, hospedado na Netlify. Todo o conteúdo vive em `index.html` e ativos em `assets/`, o que reduz complexidade operacional e facilita deploys rápidos.

```
Figma → Tailwind (input.css) → Build PurgeCSS → assets/css/tailwind-optimized.css → Deploy Netlify
```

## Pipeline de Build
1. **Fonte**: `assets/css/input.css` contém tokens e utilitários Tailwind.
2. **Tailwind CLI**: gera `assets/css/tailwind.css` para desenvolvimento.
3. **Purge e minificação**: `npm run build:css` remove classes não utilizadas e gera `assets/css/tailwind-optimized.css` (≈7KB).
4. **Tipografia**: `typography-refinements.css` adiciona micro-interações e ajustes finos.
5. **Bundle final**: `index.html` referencia apenas os CSS otimizados.

## Deploy
- **Plataforma**: Netlify (deploy contínuo conectado ao `master`).
- **Processo**: build zero (apenas upload) pois os arquivos já estão otimizados no repositório.
- **Ambiente**: HTTPS automático, HTTP/2 e CDN global da Netlify.

## Observabilidade
- **Netlify Analytics** para métricas de tráfego e Core Web Vitals.
- **UptimeRobot** configurado para monitorar disponibilidade.

## Governança Técnica
- Branch `master` protegida; merges somente via PR com CI verde.
- Pipelines GitHub Actions garantem lint + build antes do deploy.
- Documentos de suporte: `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`, `SECURITY.md` e `CHANGELOG.md`.
