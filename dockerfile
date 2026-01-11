
FROM node:20-alpine AS builder
WORKDIR /app

# Copiar apenas o necessário primeiro (cache)
COPY package.json yarn.lock ./
COPY prisma ./prisma/
COPY prisma.config.ts ./


RUN yarn install --frozen-lockfile

# Prisma generate usa o config correto (TS, não transpilado)
RUN npx prisma generate

# Agora copia o resto (sem o config)
COPY src ./src
COPY tsconfig*.json ./

RUN yarn build

FROM node:20-alpine AS production

WORKDIR /app

COPY --from=builder /app/node_modules ./node_modules
COPY --from=builder /app/package.json ./
COPY --from=builder /app/prisma ./prisma
COPY --from=builder /app/prisma.config.ts ./prisma.config.ts
COPY --from=builder /app/dist ./dist

EXPOSE 3000
CMD ["node", "dist/src/main.js"]