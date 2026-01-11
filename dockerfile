
# Dockerfile ATUALIZADO

FROM node:20-alpine AS builder

WORKDIR /app

# 1. Copiar TUDO que o Prisma precisa
COPY package.json yarn.lock ./
COPY prisma ./prisma/
COPY prisma.config.ts ./

# 2. Instalar dependências

RUN yarn install --frozen-lockfile

# 3. GERAR PRISMA CLIENT ANTES de copiar o resto
RUN npx prisma generate

# 4. Copiar código fonte
COPY . .

# 5. Build
RUN yarn build

FROM node:20-alpine AS production

WORKDIR /app

COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./
COPY --from=builder /app/yarn.lock ./
COPY --from=builder /app/prisma ./prisma
COPY --from=builder /app/dist ./dist



EXPOSE 3000

