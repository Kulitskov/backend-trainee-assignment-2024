# Инструкция по запуску
1. `git clone https://github.com/Kulitskov/backend-trainee-assignment-2024.git`
2. `cd .\deploy\`
3. `docker compose up --build`

# Тестирование RPS
`bombardier -c 100 -n 50000 "http://127.0.0.8080/user_banner?tag_id=1&feature_id=1&use_last_revision=1" -H "tokcen:user"`
