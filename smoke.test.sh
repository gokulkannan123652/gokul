#!/bin/bash
set -e
BASE=http://localhost:5000
curl -s $BASE/api/health
curl -s $BASE/api/stocks
curl -s -X POST -H "Content-Type: application/json" -d '{"email":"user@example.com","password":"UserPass123!"}' $BASE/api/auth/login
