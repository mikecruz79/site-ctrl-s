# Política de Segurança

Obrigado por ajudar a manter o Ctrl+S seguro.

## Como reportar
- Envie e-mail para [security@apertacontrols.netlify.app](mailto:security@apertacontrols.netlify.app) ou abra uma Issue marcada como `security` (template opcional) descrevendo o problema.
- Inclua detalhes suficientes para reproduzir o problema (passos, evidências, impacto).
- Evite divulgar publicamente antes de receber nossa confirmação.

## SLA de resposta
- **Acknowledgment:** até 48h úteis.
- **Correção inicial:** até 7 dias corridos, dependendo da gravidade.
- **Divulgação:** combinada com o pesquisador após a correção.

## Escopo
- Código presente neste repositório (site estático e assets).
- Automatizações de deploy Netlify e workflows GitHub Actions.

## Recomendações
- Nunca compartilhe dados sensíveis nos arquivos do projeto.
- Utilize variáveis de ambiente para tokens (Netlify, GitHub).
- Antes de abrir PR, rode `npm run lint:html` e `npx lhci autorun` para garantir que não há regressões graves de performance/acessibilidade.

Obrigado por tornar o Ctrl+S mais seguro! 🙌
