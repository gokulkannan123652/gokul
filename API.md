# API Documentation

Base URL: `/api`

Auth
- POST /auth/register
  - Body: { name, email, password }
  - Response: { token, user }
- POST /auth/login
  - Body: { email, password }
  - Response: { token, user }
- GET /auth/me (protected)
  - Headers: Authorization: Bearer <token>

Stocks
- GET /stocks
  - Returns list of available stocks (uses in-memory fallback if no DB)
- POST /stocks/seed
  - Seeds sample stocks (in-memory or DB)

Portfolio
- GET /portfolio (protected)
  - Returns portfolio summary and holdings
- POST /portfolio/trade (protected)
  - Body: { symbol, type: 'buy'|'sell', quantity, price }
  - Returns created transaction and updated balance

Admin
- GET /admin/analytics (admin only)
- GET /admin/users (admin only)

Authentication: JWT in `Authorization` header.

Demo credentials (local fallback):
- Admin: admin@example.com / AdminPass123!
- User: user@example.com / UserPass123!
