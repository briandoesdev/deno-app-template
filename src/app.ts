import { Application } from "https://deno.land/x/oak@v10.4.0/mod.ts";

const app = new Application();
const PORT = 8080;

app.use((ctx) => {
  ctx.response.body = 'Hello from your first oak server'
});

console.log(`🌳 oak server running at http://localhost:${PORT}/ 🌳`);
await app.listen({ port: PORT });