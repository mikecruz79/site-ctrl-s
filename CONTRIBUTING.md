# Guia de Contribuição – Ctrl+S

Obrigado por apoiar o Ctrl+S! Este guia define o fluxo recomendado para propor melhorias com qualidade e previsibilidade.

## 1. Princípios
- **Transparência**: toda mudança relevante deve passar por Issue + Pull Request.
- **Foco no cliente**: priorize melhorias que reduzam atrito do usuário final ou otimizem conversão.
- **Performance e acessibilidade**: mantenha Core Web Vitals aprovados e siga WCAG AA.

## 2. Fluxo sugerido
1. **Abra uma Issue** descrevendo contexto, motivação e critérios de aceite (use templates).  
2. **Crie uma branch** a partir de `master` usando o padrão `tipo/descricao-curta` (ex.: `feat/sticky-navbar`).
3. **Implemente** seguindo padrões de código existentes, escrevendo commits descritivos (imperativo curto).
4. **Execute os testes locais**:
   ```bash
   npm ci
   npm run build:css
   npm run lint:html
   ```
5. **Abra um Pull Request** preenchendo o template, ligando à Issue e anexando evidências (prints, Lighthouse, etc.).
6. Aguarde revisão (mesmo em projeto solo, use PR para manter histórico e permitir revisões futuras).

## 3. Convenções de commits e PRs
- Commits no formato `<tipo>: descrição curta` (ex.: `feat: adicionar seção de roadmap`).
- Utilize os seguintes tipos: `feat`, `fix`, `docs`, `chore`, `refactor`, `perf`, `ci`.
- Revise ortografia/gramática do PR e inclua checklist de testes executados.

## 4. Branch protection e releases
- `master` é protegida: exige PR aprovado, checks do CI verdes e merge squash.
- Releases são marcados com tags semânticas (`v1.1.0`) e registrados no `CHANGELOG.md`.
- Hotfixes seguem branch `hotfix/<descricao>` e PR com prioridade alta.

## 5. Ferramentas locais
- **Node.js 18+** (recomendado usar `nvm`).
- `npm run build:css`: recompila Tailwind minificado.
- `npm run lint:html`: valida marcação do `index.html`.

## 6. Dúvidas e contato
- Abra uma Issue com o tipo "Pergunta" ou envie e-mail para [contato@apertacontrols.netlify.app](mailto:contato@apertacontrols.netlify.app).

Obrigado por ajudar a manter o Ctrl+S profissional e confiável! 🚀
