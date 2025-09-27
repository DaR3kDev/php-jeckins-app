# 🚀 Jenkins con Docker Compose 

Este proyecto levanta un servidor Jenkins LTS en contenedor Docker usando docker-compose, junto con una aplicación PHP de ejemplo.
La imagen de Jenkins está personalizada para incluir el Docker CLI y crear automáticamente un usuario administrador.
---

## 📂 Estructura de archivos


```markdown
├─ jenkins/
│  ├─ Dockerfile            # Imagen personalizada de Jenkins con Docker CLI
│  ├─ default-user.groovy   # Script Groovy para crear usuario admin automáticamente
│  └─ Jenkinsfile           # Pipeline declarativo para construir y desplegar la app
│
├─ app/
│  ├─ Dockerfile            # Imagen de la aplicación PHP
│  └─ index.php             # Código PHP de ejemplo
│
├─ docker-compose.yml       # Orquestación de Jenkins + App
└─ README.md                # Documentación
````

## ▶️ Uso

1. **Construir la imagen personalizada**:
   
```bash
   docker-compose up -d --build
````

3. **Acceder a Jenkins**:
   
   * URL: [[http://localhost:8080](http://localhost:8080/login?from=%2F)]
   * Usuario: `admin`
   * Contraseña: `admin123`
---


<img width="1919" height="987" alt="image" src="https://github.com/user-attachments/assets/15c638ec-ffcf-4b22-9a19-35aa181879a2" />
<img width="1916" height="976" alt="image" src="https://github.com/user-attachments/assets/3224cf47-3bba-4733-aebb-5ad3f80e230a" />
<img width="1908" height="989" alt="image" src="https://github.com/user-attachments/assets/0886abd5-64d1-4ffa-8b4a-e0b2e6d048ff" />
<img width="1919" height="1027" alt="image" src="https://github.com/user-attachments/assets/d6ec7524-1366-4d08-8edf-581ab96e4ac3" />
<img width="1919" height="1028" alt="image" src="https://github.com/user-attachments/assets/793158ab-7c45-4988-b58f-3e2a8b5f9b40" />
---

## ✨ Personalización

* Para cambiar usuario/contraseña por defecto, edita el archivo:

  * [`default-user.groovy`](./default-user.groovy)

```groovy
hudsonRealm.createAccount("admin", "admin123")
```
* Reemplaza `"admin"` y `"admin123"` por los valores que desees.
---
