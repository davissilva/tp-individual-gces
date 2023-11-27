// Exemplo de código JavaScript para inicializar o banco de dados

use lappis;

db.createUser({
    user: "lappis",
    pwd: "lappis",
    roles: [
      { role: "readWrite", db: "meubanco" }
    ]
  })
  
print("Usuario inserido com sucesso!");
