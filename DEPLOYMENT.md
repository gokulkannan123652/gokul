# Deployment Guide

Frontend (Vercel):
- Push the `client` folder to a GitHub repo and connect to Vercel.
- Set build command: `npm run build` and output directory: `dist`.
- Configure environment variables if backend is hosted at a custom domain.

Backend (Render):
- Push `server` to GitHub.
- Create a Web Service on Render with start command: `node server.js`.
- Set `PORT` and `MONGO_URI` in Render environment settings.

MongoDB Atlas:
- Create a cluster, whitelist your IP or allow access, and create a DB user.
- Set `MONGO_URI` in server environment variables.

CI/CD:
- Create GitHub Actions to build and deploy client and server on push to `main`.
