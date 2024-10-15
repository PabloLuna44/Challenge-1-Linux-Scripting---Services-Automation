# Challenge 1: Linux Scripting & Services Automation


## 📄Requisitos
Crear un script en linux para automatizar la creación y configuración  de una Máquina Virtual a través de los comandos que ofrece la herramienta VBoxManage de Virtual Box.
Al ejecutarse, el script debe recibir -desde la línea de comandos,  los siguientes argumentos:

- Nombre de la máquina virtual y tipo de sistema operativo que soportará; Linux en este ocasión. A partir de esta info, el script se encargará de crear y configurar la MV.
- Número de CPUS y tamaños de Memoria (GB) ram, vram. A partir de esta info, el script se encargará de crear y configurar dichos componentes.
- Tamaño de disco duro virtual. A partir de esta info, el script se encargará de crear y configurar un virtual hard disk para la VM.
- Nombre de un controlador SATA, el cual debe ser creado, configurado  y asociado a la MV a través del Script.  El script debe asociar este controlador al Virtual Hard Disk.
- El nombre de un controlador IDE,  el cual debe ser creado , configurado y asociado a la MV a través del Script para contar con CD/DVD.
- Finalmente, una vez creado el IDE Controller, el script debe imprimir todos los componentes (configuración) creados y configurados hasta el inciso (e).



## ⚙️ Implementacion

Primeramente, se actualizan los paquetes con 

```bash
sudo apt update
```

Y luego se instala virtual box con el siguiente comando 

```bash
sudo apt install virtualbox
```


Después abrimos el siguiente archivo de configuración para establecer el comando para ejecutar nuestro Script

![image](https://github.com/user-attachments/assets/f79c05ba-73f1-4952-a13f-19d268b56a85)

Después declaramos el comando y agregamos el script a ejecutar con ese comando 

![image](https://github.com/user-attachments/assets/8e280ee8-908d-4696-8baa-c196c1f3be0d)

Usamos source ~/bashrc para aplicar los cambios 

![image](https://github.com/user-attachments/assets/f10deb1b-919b-49bc-8813-42f3824242ff)

##  🖥️ Resultados 

Ejecutamos el comando con los siguientes parámetros para la creación de la maquina virtual 
- Nombre de la máquina virtual y tipo de sistema operativo que soportará; Linux en esta ocasión. A partir de esta info, el script se encargará de crear y configurar la MV.
- Número de CPUS y tamaños de Memoria (GB) ram, vram. A partir de esta info, el script se encargará de crear y configurar dichos componentes.
- Tamaño de disco duro virtual. A partir de esta info, el script se encargará de crear y configurar un virtual hard disk para la VM.
- Nombre de un controlador SATA, el cual debe ser creado, configurado y asociado a la MV a través del Script.  El script debe asociar este controlador al Virtual Hard Disk.
- El nombre de un controlador IDE, el cual debe ser creado, configurado y asociado a la MV a través del Script para contar con CD/DVD.


![image](https://github.com/user-attachments/assets/8ae5a388-b5d0-4847-a1a6-7a1a8846c72f)

Una vez ejecutado el script creara la maquina virtual y mostrara la configuración de la maquina virtual 

![image](https://github.com/user-attachments/assets/b3534dae-d3ef-4dbf-b63f-ed959c21f79f)

![image](https://github.com/user-attachments/assets/9fd871dc-a679-470f-85c1-b06f392e83c9)

![image](https://github.com/user-attachments/assets/02e884ee-873c-45a5-98e4-5064ef3ff491)

![image](https://github.com/user-attachments/assets/191d2ce2-b24d-4ebb-a659-65122a5fb08f)

![image](https://github.com/user-attachments/assets/9f682e94-dc9e-495c-89db-80c29df5ec6d)

Al abrir mediante la interface VirtualBox podremos observar que la maquina virtual se ha creado correctamente en ese caso no se podrá ejecutar ya que no se cargo el sistema operativo pero las configuraciones fueron aplicadas correctamente 

![image](https://github.com/user-attachments/assets/1e859071-17ff-4c2d-bbec-44d4e5d55b5d)







