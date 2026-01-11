
# Dockerfile PARA YARN (Node 20 já tem Yarn)
# ============ STAGE 1: Build ============

FROM node:20-alpine AS builder
WORKDIR /app

# Copiar arquivos do Yarn
COPY package.json yarn.lock ./
COPY prisma ./prisma/

# Instalar dependências com YARN
RUN yarn install --frozen-lockfile  # Equivalente ao npm ci


# Copiar o resto e buildar
COPY . .
RUN npx prisma generate
RUN yarn build


# ============ STAGE 2: Production ============
FROM node:20-alpine AS production

WORKDIR /app

# Copiar apenas o necessário do builder
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./
COPY --from=builder /app/yarn.lock ./
COPY --from=builder /app/prisma ./prisma
COPY --from=builder /app/dist ./dist



EXPOSE 3000

CMD ["node", "dist/main"]