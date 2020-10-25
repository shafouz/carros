# Base de Carros

Clone the repo and run `bundle install` after that `rails server`

### API endpoints
+ GET /veiculos, returns all vehicles in db
+ POST /veiculos, creates a new vehicle
+ GET /veiculos/:id, return a vehicle
+ PATCH or PUT /veiculos/:id, update a vehicle
+ DELETE /veiculos/:id, delete a vehicle

### Request Format
body: { veiculo: { params } }

### Params
marca: string, veiculo: string, ano: integer, descricao: text, vendido: boolean
