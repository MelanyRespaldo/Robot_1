import json

val = '{"id":1,"first_name":"Jud","last_name":"Houldcroft","email":"jhouldcroft0@booking.com","gender":"Male","ip_address":"204.72.229.62","street":"Ramsey"}'

json_resultados = json.loads(val)

print(json_resultados)