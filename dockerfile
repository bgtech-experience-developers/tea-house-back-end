# Dockerfile - ATUALIZADO
# ============ STAGE 1: Build ============
FROM node:20-alpine AS builder  

WORKDIR /app

# Copiar arquivos de dependências
COPY package*.json ./
COPY prisma ./prisma/

# Instalar dependências COMPLETAS para build
RUN npm ci  

# Copiar o resto e buildar
COPY . .
RUN npx prisma generate
RUN npm run build

# ============ STAGE 2: Production ============
FROM node:20-alpine AS production  

WORKDIR /app

# Copiar apenas o necessário do builder
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/prisma ./prisma
COPY --from=builder /app/dist ./dist

# Usuário não-root


EXPOSE 3000

CMD ["node", "dist/main"]