# # ---------- BUILDER ----------
# FROM node:20-alpine AS builder

# WORKDIR /app

# # Dependências
# COPY package.json yarn.lock ./
# COPY prisma ./prisma/
# COPY prisma.config.ts ./

# RUN yarn install --frozen-lockfile

# # Código-fonte
# COPY tsconfig*.json ./
# COPY src ./src

# # Prisma
# RUN npx prisma generate

# # Build
# RUN yarn build


# # ---------- PRODUCTION ----------
# FROM node:20-alpine AS production

# WORKDIR /app

# COPY --from=builder /app/node_modules ./node_modules
# COPY --from=builder /app/package.json ./
# COPY --from=builder /app/prisma ./prisma
# COPY --from=builder /app/prisma.config.ts ./prisma.config.ts
# COPY --from=builder /app/dist ./dist

# EXPOSE 3000
# CMD ["node", "dist/main.js"]
# ---------- BUILDER ----------
FROM node:20-alpine AS builder

WORKDIR /app

# Copia TUDO (exceto o que está no .dockerignore)
COPY . .

# Instala dependências (node_modules NÃO foi copiado do host)
RUN yarn install --frozen-lockfile

# Prisma
RUN npx prisma generate

# Build
RUN yarn build


# ---------- PRODUCTION ----------
FROM node:20-alpine AS production

WORKDIR /app

# Copia APENAS o necessário do builder
COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./
COPY --from=builder /app/prisma ./prisma
COPY --from=builder /app/prisma.config.ts ./prisma.config.ts
COPY --from=builder /app/dist ./dist

EXPOSE 3000
CMD ["node", "dist/src/main.js"]
