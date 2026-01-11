# Dockerfile PARA YARN
# ============ STAGE 1: Build ============
FROM node:20-alpine AS builder

# Instalar Yarn globalmente (se não vier no node:20)
RUN npm install -g yarn

WORKDIR /app

# Copiar arquivos do Yarn
COPY package.json yarn.lock ./
COPY prisma ./prisma/

# Instalar dependências com YARN
RUN yarn install --frozen-lockfile  # Equivalente ao npm ci

# Copiar o resto e buildar
COPY . .
RUN npx prisma generate
RUN yarn build  # Usa yarn, não npm run build

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