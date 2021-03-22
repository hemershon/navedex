{
	"info": {
		"_postman_id": "5b2479fa-c7f1-484b-ac33-2b76a68b1f69",
		"name": "Novadex",
		"schema": "https://schema.getpostman.com/json/collection/v2.1.0/collection.json"
	},
	"item": [
		{
			"name": "Session",
			"item": [
				{
					"name": "Singn up",
					"request": {
						"method": "POST",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json",
								"type": "text"
							},
							{
								"key": "x-api",
								"value": "{{X-Api-Key}}",
								"type": "text"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"user\": {\n        \"email\": \"hemershon@gmail.com\",\n        \"password\": 123456\n    }\n}",
							"options": {
								"raw": {
									"language": "json"
								}
							}
						},
						"url": {
							"raw": "http://localhost:3000/signup",
							"protocol": "http",
							"host": [
								"localhost"
							],
							"port": "3000",
							"path": [
								"signup"
							]
						}
					},
					"response": []
				},
				{
					"name": "Log in",
					"request": {
						"method": "POST",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json",
								"type": "text"
							},
							{
								"key": "x-api-key",
								"value": "{{X-Api-Key}}",
								"type": "text"
							},
							{
								"key": "Authorization",
								"value": "Bearer {{jwt}}",
								"type": "text"
							}
						],
						"body": {
							"mode": "raw",
							"raw": "{\n    \"email\": \"hemershon@gmail.com\",\n    \"password\": 123456\n}"
						},
						"url": {
							"raw": "localhost:3000/login",
							"host": [
								"localhost"
							],
							"port": "3000",
							"path": [
								"login"
							]
						}
					},
					"response": []
				}
			]
		},
		{
			"name": "Navers",
			"item": [
				{
					"name": "Index",
					"protocolProfileBehavior": {
						"disableBodyPruning": true
					},
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json",
								"type": "text"
							},
							{
								"key": "X-Api-Key",
								"value": "{{X-Api-Key}}",
								"type": "text"
							},
							{
								"key": "Authorization",
								"value": "Bearer {{jwt}}",
								"type": "text"
							}
						],
						"body": {
							"mode": "raw",
							"raw": ""
						},
						"url": {
							"raw": "localhost:3000/naver/index",
							"host": [
								"localhost"
							],
							"port": "3000",
							"path": [
								"naver",
								"index"
							],
							"query": [
								{
									"key": "name",
									"value": null,
									"disabled": true
								},
								{
									"key": "job_role",
									"value": null,
									"disabled": true
								},
								{
									"key": "admission_date",
									"value": null,
									"disabled": true
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Show",
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json",
								"type": "text"
							},
							{
								"key": "X-Api-Key",
								"value": "{{X-Api-Key}}",
								"type": "text"
							},
							{
								"key": "Authorization",
								"value": "Bearer {{jwt}}",
								"type": "text"
							}
						],
						"url": {
							"raw": "localhost:3000/naver/:id/show",
							"host": [
								"localhost"
							],
							"port": "3000",
							"path": [
								"naver",
								":id",
								"show"
							],
							"variable": [
								{
									"key": "id",
									"value": "1"
								}
							]
						}
					},
					"response": []
				},
				{
					"name": "Store",
					"request": {
						"method": "GET",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json",
								"type": "text"
							},
							{
								"key": "X-Api-Key",
								"value": "{{X-Api-Key}}",
								"type": "text"
							},
							{
								"key": "Authorization",
								"value": "Bearer {{jwt}}",
								"type": "text"
							}
						],
						"url": {
							"raw": "localhost:3000/naver/store",
							"host": [
								"localhost"
							],
							"port": "3000",
							"path": [
								"naver",
								"store"
							]
						}
					},
					"response": []
				},
				{
					"name": "Update",
					"request": {
						"method": "PATCH",
						"header": [
							{
								"key": "Content-Type",
								"value": "application/json",
								"type": "text"
							},
							{
								"key": "X-Api-Key",
								"value": "{{X-Api-Key}}",
								"type": "text",
								"disabled": true
							},
							{
								"key": "Authorization",
								"value": "Bearer {{jwt}}",
								"type": "text",
								"disabled": true
							}
						],
						"body": {
							"mode": "raw",
							"raw": "\t{\n\n        \"id\": 1,\n        \"name\": \"Graham Harvey Berge\",\n        \"birthdate\": \"1962-06-13\",\n        \"job_role\": \"Analyst\",\n        \"project\": [10]\n\t}"
						},
						"url": {
							"raw": "localhost:3000/naver/update",
							"host": [
								"localhost"
							],
							"port": "3000",
							"path": [
								"naver",
								"update"
							]
						}
					},
					"response": []
				}
			]
		},
		{
			"name": "Projects",
			"item": [
				{
					"name": "Index",
					"request": {
						"method": "GET",
						"header": [],
						"url": null
					},
					"response": []
				},
				{
					"name": "Show",
					"request": {
						"method": "GET",
						"header": [],
						"url": null
					},
					"response": []
				},
				{
					"name": "Store",
					"request": {
						"method": "GET",
						"header": [],
						"url": null
					},
					"response": []
				},
				{
					"name": "Update",
					"request": {
						"method": "GET",
						"header": [],
						"url": null
					},
					"response": []
				},
				{
					"name": "Delete",
					"request": {
						"method": "GET",
						"header": [],
						"url": null
					},
					"response": []
				}
			]
		}
	]
}