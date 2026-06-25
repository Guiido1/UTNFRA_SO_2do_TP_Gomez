#!/bin/bash                                                           

USUARIO_CLAVE=$1
ARCHIVO=$2

if [ -z "$USUARIO_CLAVE" ] || [ -z "$ARCHIVO" ]; then
	    echo "Uso: $0 <usuario_del_cual_copiar_clave> <path_lista_usuarios>"
	        exit 1
fi

if [ ! -f "$ARCHIVO" ]; then
	    echo "Error: no se encontro el archivo $ARCHIVO"
	        exit 1
fi

HASH_PASS=$(sudo getent shadow "$USUARIO_CLAVE" | cut -d: -f2)

if [ -z "$HASH_PASS" ]; then
	    echo "Error: no se pudo obtener la clave del usuario $USUARIO_CLAVE"
	        exit 1
fi

while IFS=',' read -r usuario grupo home
do
	    [[ "$usuario" =~ ^#.*$ ]] && continue
	        [[ -z "$usuario" ]] && continue

		    if ! getent group "$grupo" > /dev/null 2>&1
			        then
					        sudo groupadd "$grupo"
						        echo "Grupo creado: $grupo"
							    else
								            echo "Grupo ya existe: $grupo"
									        fi

										    if ! getent passwd "$usuario" > /dev/null 2>&1
											        then
													        sudo useradd -m -d "$home" -g "$grupo" "$usuario"
														        sudo usermod -p "$HASH_PASS" "$usuario"
															        echo "Usuario creado: $usuario (grupo: $grupo, home: $home)"
																    else
																	            echo "Usuario ya existe: $usuario"
																		        fi

																		done < "$ARCHIVO"
