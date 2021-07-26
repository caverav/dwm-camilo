
Tabla de Contenidos
==========================================================

-   [Sobre DWM](#about-dwm)
    -   [Parches que incluye:](#the-patches-i-added-to-this-build-include)
    -   [Dependencias:](#the-dependencies-for-dwm-include)
-   [Instalar dwm-camilo](#installing-dwm-distrotube-on-other-linux-distributions)
-   [Mis atajos](#my-keybindings)
-   [Ejecutar dwm](#running-dwm)
-   [Configurar dwm](#configuring-dwm)


# Sobre DWM  <a name="about-dwm"></a>

![img](https://github.com/caverav/dwm-camilo/blob/main/camilo-dwm.png "dmenu-distrotube")





## Parches que incluye: <a name="the-patches-i-added-to-this-build-include"></a>

-   alpha (para transparencia)
-   attachaside (nuevas ventanas aparecen en stack en vez de master)
-   cyclelayouts (recorrer los diferentes diseños)
-   gridmode (diseño de grid)
-   restartsig (se puede reiniciar dwm con un comando)
-   rotatestack (mover una ventana entre el stack)
-   statuspadding (padding configurable)
-   uselessgap (añade espacio cuando hay más de una ventana)



## Dependencias: <a name="the-dependencies-for-dwm-include"></a>

Obligados:
-   Nerd Fonts
-   libxft
-   ttf-hack
-   ttf-joypixels
-   dmenu (lanzador de aplicaciones)


Por defecto en configuraciones (se pueden cambiar):
-   compton (compositor)
-   feh   (para fondo de pantalla)
-   alacritty (terminal)
-   scrot (para capturas)
-   brightnessctl (control de brillo)
-   pcmanfm (navegador de archivos)

Si estás en un sistema basado en Ubuntu hace falta installar libx11-dev y xorg-dev.

# Instalar dwm-camilo <a name="installing-dwm-distrotube-on-other-linux-distributions"></a>

Clone el repositorio y compile:

    git clone https://github.com/caverav/dwm-camilo.git
    cd dwm-camilo
    sudo make clean install

>`NOTA:` Reemplazará cualquier versión de dwm que tengas instalada.

# Mis atajos <a name="my-keybindings"></a>

MODKEY está configurada como la tecla SUPER, o más bien conocida como la tecla Windows.

Principales
----------------

| Atajo              |Acción                                                     |
| -------------------------|-------------------------------------------------------------- |
| MODKEY + RETURN          |abre terminal (alacritty pero se puede cambiar)           |
| MODKEY + SHIFT + RETURN  |abre lanzador (dmenu pero se puede cambiar)                  |
| MODKEY + SHIFT + c       |cierra ventana enfocada                                       |
| MODKEY + SHIFT + r       |reinicia dwm                                                   |
| MODKEY + SHIFT + q       |sale de dwm                                                      |
| MODKEY + b               |esconde el panel                                                |
| MODKEY + 1-9             |cambia de espacio de trabajo (1-9)                                |
| MODKEY + SHIFT + 1-9     |manda ventana enfocada al espacio de trabajo (1-9)                         |
| MODKEY + j               |focus stack +1 (enfoca la siguiente ventana en el stack)   |
| MODKEY + k               |focus stack -1 (enfoca la ventana anterior en el stack)   |
| MODKEY + SHIFT + j       |rotate stack +1 (rota la ventana en stack)             |
| MODKEY + SHIFT + k       |rotate stack -1 (rota la ventana en stack)            |
| MODKEY + h               |setmfact -0.05 (expandir ventana) |
| MODKEY + l               |setmfact +0.05 (achicar ventana)|
| MODKEY + .               |focusmon +1 (enfoca el siguiente monitor)|
| MODKEY + ,               |focusmon -1 (enfoca el monitor anterior)|



Control de diseño
---------------

  Atajo                     |  Acción|
  ------------------------ |------------------------|
  MODKEY + d               |vista de filas|
  MODKEY + i               |vista de columnas|
  MODKEY + TAB             |anterior diseño (-1)|
  MODKEY + SHIFT + TAB     |próximo diseño (+1)|
  MODKEY + SPACE           |cambiar diseño|
  MODKEY + SHIFT + SPACE   |cambiar estado flotante|
  MODKEY + t               |master + stack|
  MODKEY + f               |flotantes|
  MODKEY + m               |maximizado|
  MODKEY + g               |grid|

Controles de aplicaciones
--------------------

  Keybinding        | Action
  ------------------| ----------------------------------------------------------------------------------
  MODKEY + ALT + b  | abrir navegador web
  MODKEY + ALT + f  | abrir pcmanfm (navegador de archivos)

Doom emacs
----------

  Keybinding     |Action
  -------------- |----------------------------------------------------------
  CTRL + e + e   |emacsclient -c -a \'emacs\'\`
  CTRL + e + d   |emacsclient -c -a \'emacs\' --eval \'(dired nil)\'
  CTRL + e + m   |emacsclient -c -a \'emacs\' --eval \'(mu4e)\'
  CTRL + e + b   |emacsclient -c -a \'emacs\' --eval \'(ibuffer)\'
  CTRL + e + n   |emacsclient -c -a \'emacs\' --eval \'(elfeed)\'
  CTRL + e + s   |emacsclient -c -a \'emacs\' --eval \'(eshell)\'
  CTRL + e + v   |emacsclient -c -a \'emacs\' --eval \'(+vterm/here nil)\'

Controles de sistema
---------------------
Atajo | Acción
----- |  ------
AudioLowerVolume|  bajar volumen|
AudioMute|        ensordecer volumen|
AudioRaiseVolume|    subir volumen|
MonBrightnessUp|   subir brillo  |
MonBrightnessDown|  bajar brillo|
AudioMicMute|   apagar micrófono|
PrintScreen| captura de pantalla completa|
MODKEY + Shift + s|captura de sección de pantalla copiada al portapapeles|
Shift + PrintScreen|captura de pantalla completa copiada al portapapeles|
MODKEY + Control + s|captura de sección de pantalla|

# Ejecutar dwm <a name="running-dwm"></a>

Si no ocupas un gestor de inicio de sesión (como lightdm), entonces puedes añadir manualmente lo siguiente a .xinitrc para iniciar con startx:

`exec dwm`

Si usas un gestor de inicio de sesión, corrobore que tiene un archivo llamado dwm.desktop en *usr/share/xsessions*.  Debería verse de esta forma:

    [Desktop Entry]
    Encoding=UTF-8
    Name=Dwm
    Comment=Dynamic window manager
    Exec=dwm
    Icon=dwm
    Type=XSession


# Configurar dwm <a name="configuring-dwm"></a>

Para configurar dwm solo se debe cambiar la configuración en *config.h* y luego recompilar:

`sudo make clean install`

