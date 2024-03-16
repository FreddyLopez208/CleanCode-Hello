Feature: Hello World

#  @hello-feature
#  Scenario: Mostrar Hello en Hello
#
#  Encontrandonos en pantalla Hello sin mostrar mensaje
#  hacer que se muestre mensaje Hello
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    When pulsar boton SayHello
#    Then mostrar mensaje HelloWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados


  @hello-feature
  Scenario: Mostrar Hello en Hello

  Encontrandonos en pantalla Hello sin mostrar mensaje
  hacer que se muestre mensaje Hello

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton SayHello
    When girar pantalla
    Then mostrar mensaje HelloWorld en pantalla Hello


#  @hello-feature
#  Scenario: Ir a Bye sin mostrar
#
#  Encontrandonos en pantalla Hello sin mostrar mensaje
#  pasar a pantalla Bye sin mostrar mensaje
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    When pulsar boton GoBye
#    Then iniciar pantalla Bye
#    And ocultar mensaje en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton Back

  @hello-feature
  Scenario: Ir a Bye sin mostrar

  Encontrandonos en pantalla Hello sin mostrar mensaje
  pasar a pantalla Bye sin mostrar mensaje

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton GoBye
    When girar pantalla
    Then iniciar pantalla Bye
    And ocultar mensaje en pantalla Bye
    And pulsar boton Back


#  @hello-feature
#  Scenario: Ir a Bye mostrando Hello
#
#  Encontrandonos en pantalla Hello mostrando mensaje Hello
#  pasar a pantalla Bye mostrando mensaje Hello
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton SayHello
#    And mostrar mensaje HelloWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    When pulsar boton GoBye
#    Then iniciar pantalla Bye
#    And mostrar mensaje HelloWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton Back

  @hello-feature
  Scenario: Ir a Bye mostrando Hello

  Encontrandonos en pantalla Hello mostrando mensaje Hello
  pasar a pantalla Bye mostrando mensaje Hello

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton SayHello
    And girar pantalla
    And mostrar mensaje HelloWorld en pantalla Hello
    And pulsar boton GoBye
    When girar pantalla
    Then iniciar pantalla Bye
    And mostrar mensaje HelloWorld en pantalla Bye
    And pulsar boton Back

#  @hello-feature
#  Scenario: Volver a Hello sin mostrar desde Bye sin mostrar
#
#  Encontrandonos en pantalla Hello sin mostrar mensaje
#  pasar a pantalla Bye sin mostrar mensaje
#  y volver a pantalla Hello sin mostrar mensaje
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And ocultar mensaje en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    #When pulsar botones GoHello o Back
#    When pulsar boton GoHello
#    Then finalizar pantalla Bye
#    And resumir pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados


  @hello-feature
  Scenario: Volver a Hello sin mostrar desde Bye sin mostrar

  Encontrandonos en pantalla Hello sin mostrar mensaje
  pasar a pantalla Bye sin mostrar mensaje
  y volver a pantalla Hello sin mostrar mensaje

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And ocultar mensaje en pantalla Bye
    And pulsar boton GoHello
    When girar pantalla
    Then finalizar pantalla Bye
    And resumir pantalla Hello
    And ocultar mensaje en pantalla Hello


#  @hello-feature
#  Scenario: Retornar a Hello sin mostrar desde Bye sin mostrar
#
#  Encontrandonos en pantalla Hello sin mostrar mensaje
#  pasar a pantalla Bye sin mostrar mensaje
#  y retornar a pantalla Hello sin mostrar mensaje
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And ocultar mensaje en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    #When pulsar botones GoHello o Back
#    When pulsar boton Back
#    Then finalizar pantalla Bye
#    And resumir pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados


  @hello-feature
  Scenario: Retornar a Hello sin mostrar desde Bye sin mostrar

  Encontrandonos en pantalla Hello sin mostrar mensaje
  pasar a pantalla Bye sin mostrar mensaje
  y retornar a pantalla Hello sin mostrar mensaje

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And ocultar mensaje en pantalla Bye
    And pulsar boton Back
    When girar pantalla
    Then finalizar pantalla Bye
    And resumir pantalla Hello
    And ocultar mensaje en pantalla Hello

#  @hello-feature
#  Scenario: Ir a Bye sin mostrar y mostrar Bye
#
#  Encontrandonos en pantalla Hello sin mostrar mensaje
#  pasar a pantalla Bye sin mostrar mensaje
#  y hacer que muestre mensaje Bye
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And ocultar mensaje en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    When pulsar boton SayBye
#    Then mostrar mensaje ByeWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton Back

  @hello-feature
  Scenario: Ir a Bye sin mostrar y mostrar Bye

  Encontrandonos en pantalla Hello sin mostrar mensaje
  pasar a pantalla Bye sin mostrar mensaje
  y hacer que muestre mensaje Bye

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And ocultar mensaje en pantalla Bye
    And pulsar boton SayBye
    When girar pantalla
    Then mostrar mensaje ByeWorld en pantalla Bye
    And pulsar boton Back

#  @hello-feature
#  Scenario: Ir a Bye mostrando Hello y mostrar Bye
#
#  Encontrandonos en pantalla Hello mostrando mensaje Hello
#  pasar a pantalla Bye mostrando mensaje Hello
#  y hacer que muestre mensaje Bye
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton SayHello
#    And mostrar mensaje HelloWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And mostrar mensaje HelloWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    When pulsar boton SayBye
#    Then mostrar mensaje ByeWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton Back

  @hello-feature
  Scenario: Ir a Bye mostrando Hello y mostrar Bye

  Encontrandonos en pantalla Hello mostrando mensaje Hello
  pasar a pantalla Bye mostrando mensaje Hello
  y hacer que muestre mensaje Bye

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton SayHello
    And girar pantalla
    And mostrar mensaje HelloWorld en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And girar pantalla
    And mostrar mensaje HelloWorld en pantalla Bye
    And pulsar boton SayBye
    When girar pantalla
    Then mostrar mensaje ByeWorld en pantalla Bye
    And pulsar boton Back


#  @hello-feature
#  Scenario: Volver a Hello mostrando Bye desde Bye sin mostrar
#
#  Encontrandonos en pantalla Hello sin mostrar mensaje
#  pasar a pantalla Bye sin mostrar mensaje
#  hacer que se muestre mensaje Bye
#  y volver a pantalla Hello mostrando mensaje Bye
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And ocultar mensaje en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton SayBye
#    And mostrar mensaje ByeWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    When pulsar boton GoHello
#    Then finalizar pantalla Bye
#    And resumir pantalla Hello
#    And mostrar mensaje ByeWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados


  @hello-feature
  Scenario: Volver a Hello mostrando Bye desde Bye sin mostrar

  Encontrandonos en pantalla Hello sin mostrar mensaje
  pasar a pantalla Bye sin mostrar mensaje
  hacer que se muestre mensaje Bye
  y volver a pantalla Hello mostrando mensaje Bye

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And ocultar mensaje en pantalla Bye
    And pulsar boton SayBye
    And girar pantalla
    And mostrar mensaje ByeWorld en pantalla Bye
    And pulsar boton GoHello
    When girar pantalla
    Then finalizar pantalla Bye
    And resumir pantalla Hello
    And mostrar mensaje ByeWorld en pantalla Hello


#  @hello-feature
#  Scenario: Volver a Hello desde Bye sin mostrar
#
#  Encontrandonos en pantalla Hello sin mostrar mensaje
#  pasar a pantalla Bye sin mostrar mensaje
#  hacer que se muestre mensaje Bye
#  y retornar a pantalla Hello sin mostrar mensaje
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And ocultar mensaje en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton SayBye
#    And mostrar mensaje ByeWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    When pulsar boton Back
#    Then finalizar pantalla Bye
#    And resumir pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados


  @hello-feature
  Scenario: Volver a Hello desde Bye sin mostrar

  Encontrandonos en pantalla Hello sin mostrar mensaje
  pasar a pantalla Bye sin mostrar mensaje
  hacer que se muestre mensaje Bye
  y retornar a pantalla Hello sin mostrar mensaje

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And ocultar mensaje en pantalla Bye
    And pulsar boton SayBye
    And girar pantalla
    And mostrar mensaje ByeWorld en pantalla Bye
    And pulsar boton Back
    When girar pantalla
    Then finalizar pantalla Bye
    And resumir pantalla Hello
    And ocultar mensaje en pantalla Hello


#  @hello-feature
#  Scenario: Retornar a Hello desde Bye mostrando Hello
#
#  Encontrandonos en pantalla Hello mostrando mensaje Hello
#  pasar a pantalla Bye mostrando mensaje Hello
#  hacer que se muestre mensaje Bye
#  y retornar a pantalla Hello mostrando mensaje Hello
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton SayHello
#    And mostrar mensaje HelloWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And mostrar mensaje HelloWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton SayBye
#    And mostrar mensaje ByeWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    When pulsar boton Back
#    Then finalizar pantalla Bye
#    And resumir pantalla Hello
#    And mostrar mensaje HelloWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados


  @hello-feature
  Scenario: Retornar a Hello desde Bye mostrando Hello

  Encontrandonos en pantalla Hello mostrando mensaje Hello
  pasar a pantalla Bye mostrando mensaje Hello
  hacer que se muestre mensaje Bye
  y retornar a pantalla Hello mostrando mensaje Hello

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton SayHello
    And girar pantalla
    And mostrar mensaje HelloWorld en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And girar pantalla
    And mostrar mensaje HelloWorld en pantalla Bye
    And pulsar boton SayBye
    And girar pantalla
    And mostrar mensaje ByeWorld en pantalla Bye
    And pulsar boton Back
    When girar pantalla
    Then finalizar pantalla Bye
    And resumir pantalla Hello
    And mostrar mensaje HelloWorld en pantalla Hello


#  @hello-feature
#  Scenario: Volver a Hello mostrando Bye desde Bye mostrando Hello
#
#  Encontrandonos en pantalla Hello mostrando mensaje Hello
#  pasar a pantalla Bye mostrando mensaje Hello
#  hacer que se muestre mensaje Bye
#  y retornar a pantalla Hello mostrando mensaje Bye
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton SayHello
#    And mostrar mensaje HelloWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And mostrar mensaje HelloWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton SayBye
#    And mostrar mensaje ByeWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    When pulsar boton GoHello
#    Then finalizar pantalla Bye
#    And resumir pantalla Hello
#    And mostrar mensaje ByeWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados


  @hello-feature
  Scenario: Volver a Hello mostrando Bye desde Bye mostrando Hello

  Encontrandonos en pantalla Hello mostrando mensaje Hello
  pasar a pantalla Bye mostrando mensaje Hello
  hacer que se muestre mensaje Bye
  y retornar a pantalla Hello mostrando mensaje Bye

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton SayHello
    And girar pantalla
    And mostrar mensaje HelloWorld en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And girar pantalla
    And mostrar mensaje HelloWorld en pantalla Bye
    And pulsar boton SayBye
    And girar pantalla
    And mostrar mensaje ByeWorld en pantalla Bye
    And pulsar boton GoHello
    When girar pantalla
    Then finalizar pantalla Bye
    And resumir pantalla Hello
    And mostrar mensaje ByeWorld en pantalla Hello


#  @hello-feature
#  Scenario: Volver a Hello mostrando Bye desde Bye sin mostrar y mostrar Hello
#
#  Encontrandonos en pantalla Hello sin mostrar mensaje
#  pasar a pantalla Bye sin mostrar mensaje
#  hacer que se muestre mensaje Bye
#  volver a pantalla Hello mostrando mensaje Bye
#  y hacer que muestre mensaje Hello
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And ocultar mensaje en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton SayBye
#    And mostrar mensaje ByeWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton GoHello
#    And finalizar pantalla Bye
#    And resumir pantalla Hello
#    And mostrar mensaje ByeWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    When pulsar boton SayHello
#    Then mostrar mensaje HelloWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados


  @hello-feature
  Scenario: Volver a Hello mostrando Bye desde Bye sin mostrar y mostrar Hello

  Encontrandonos en pantalla Hello sin mostrar mensaje
  pasar a pantalla Bye sin mostrar mensaje
  hacer que se muestre mensaje Bye
  volver a pantalla Hello mostrando mensaje Bye
  y hacer que muestre mensaje Hello

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And ocultar mensaje en pantalla Bye
    And pulsar boton SayBye
    And girar pantalla
    And mostrar mensaje ByeWorld en pantalla Bye
    And pulsar boton GoHello
    And finalizar pantalla Bye
    And resumir pantalla Hello
    And mostrar mensaje ByeWorld en pantalla Hello
    And pulsar boton SayHello
    When girar pantalla
    Then mostrar mensaje HelloWorld en pantalla Hello


#  @hello-feature
#  Scenario: Volver a Hello mostrando Bye desde Bye mostrando Hello y mostrar Hello
#
#  Encontrandonos en pantalla Hello mostrando mensaje Hello
#  pasar a pantalla Bye mostrando mensaje Hello
#  hacer que se muestre mensaje Bye
#  volver a pantalla Hello mostrando mensaje Bye
#  y hacer que muestre mensaje Hello
#
#    Given iniciar pantalla Hello
#    And ocultar mensaje en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton SayHello
#    And mostrar mensaje HelloWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    And pulsar boton GoBye
#    And iniciar pantalla Bye
#    And mostrar mensaje HelloWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton SayBye
#    And mostrar mensaje ByeWorld en pantalla Bye
#    #And mostrar botones SayBye y GoHello activados
#    And pulsar boton GoHello
#    And finalizar pantalla Bye
#    And resumir pantalla Hello
#    And mostrar mensaje ByeWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados
#    When pulsar boton SayHello
#    Then mostrar mensaje HelloWorld en pantalla Hello
#    #And mostrar botones SayHello y GoBye activados


  @hello-feature
  Scenario: Volver a Hello mostrando Bye desde Bye mostrando Hello y mostrar Hello

  Encontrandonos en pantalla Hello mostrando mensaje Hello
  pasar a pantalla Bye mostrando mensaje Hello
  hacer que se muestre mensaje Bye
  volver a pantalla Hello mostrando mensaje Bye
  y hacer que muestre mensaje Hello

    Given iniciar pantalla Hello
    And ocultar mensaje en pantalla Hello
    And pulsar boton SayHello
    And girar pantalla
    And mostrar mensaje HelloWorld en pantalla Hello
    And pulsar boton GoBye
    And iniciar pantalla Bye
    And girar pantalla
    And mostrar mensaje HelloWorld en pantalla Bye
    And pulsar boton SayBye
    And girar pantalla
    And mostrar mensaje ByeWorld en pantalla Bye
    And pulsar boton GoHello
    And finalizar pantalla Bye
    And resumir pantalla Hello
    And mostrar mensaje ByeWorld en pantalla Hello
    And pulsar boton SayHello
    When girar pantalla
    Then mostrar mensaje HelloWorld en pantalla Hello
