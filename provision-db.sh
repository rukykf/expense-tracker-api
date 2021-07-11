docker run --name expense-postgres -e POSTGRES_PASSWORD=password -d postgres:12.6
docker cp expensetracker_db.sql expense-postgres:/
docker container exec -it expense-postgres bash
psql -U postgres --file expensetracker_db.sql
  