# backend/Dockerfile
# ============ STAGE 1: Build ============
FROM node:18-alpine AS builder

WORKDIR /app

# Copiar apenas o necessário para instalar dependências
COPY package*.json ./
COPY prisma ./prisma/

# Instalar dependências
RUN npm ci --only=production

# Copiar o resto e buildar
COPY . .
RUN npx prisma generate
RUN npm run build

# ============ STAGE 2: Production ============
FROM node:18-alpine AS production

WORKDIR /app

# Copiar apenas o necessário do builder
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package*.json ./
COPY --from=builder /app/prisma ./prisma
COPY --from=builder /app/dist ./dist

# Usuário não-root
RUN addgroup -g 1001 -S nodejs && \
    adduser -S nodejs -u 1001 && \
    chown -R nodejs:nodejs /app

USER nodejs

EXPOSE 3000

CMD ["node", "dist/main"]