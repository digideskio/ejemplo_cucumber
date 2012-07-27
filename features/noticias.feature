# language: es

Característica: Suscribirme a noticias
  Para no perderme las noticias
  Deseo que me lleguen por email

  Escenario: Me suscribo a las noticias de cucumber
    Dado Existe el canal "cucumber"
    Y Voy a la página "suscribirme a cucumber"
    Y Lleno el campo "Correo" con "a@b.com"
    Cuando Presiono el botón "Enviar"
    Entonces El email "a@b.com" está suscripto a "cucumber"
    Y Veo el mensaje "Felicidades"

  Escenario: Me suscribo un canal que no existe
    Dado No Existe el canal "cucumber"
    Y Voy a la página "suscribirme a cucumber"
    Entonces Veo el mensaje "No existe el canal"
