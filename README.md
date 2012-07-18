sgagility
=========

Example app for Hobo testing purposes



Tests
-----

* El usuario puede moverse por el menú principal y el secundario con su móvil, como el ejemplo de bootstrap

* Todos los formularios utilizan la clase form-horizontal y las labels como bootstrap por defecto.

* El programador puede generar formularios de 1, 2 y 3 columnas con facilidad, que además funcionan bien en el móvil.

    <new-page>
      <field-list: columns="2"/>
    </new-page>
    
* El programador puede organizar las columnas de forma compleja sin mucho trabajo:

    <show-page>
      <field-list: replace>
        <seccion label="Datos personales">
          <field-list fields="a, b, c, d, e" columns="3"/>
        </seccion>
        <seccion label="Datos de facturación">
          <row>
            <field field="a" class="span8"/>
            <field field="a" class="span4"/>
          </row>
          <field-list fields="c, d, e" columns="3"/>
        </seccion>
      </field-list:>
    </show-page>


* El programador puede añadir un aside de forma sencilla en un show-page, el diseño fluido sigue funcionando

* El programador puede convertir un show-page en un formulario con autoguardado

    <show-page>
      <field-list: columns="3" fields="a, b, c, d, e" tag="autosave"/>
    </page-page>
    

* El programador puede activar un formulario de nuevo registro dentro de index.dryml de forma super fácil y con el aspecto en una línea (ejemplo bootstrap inline):
    
    <index-page>
      <prepend-content:>
        <formulario fields="a, b, c"/>
      </prepend-content:>
    </index-page>
    
    Controlador: que sea un cambio muy trivial
    

* El index por defecto es una tabla en la que puedes hacer clic en toda la línea saliendo la manita. También poder ir directamente a editar y borrar con un icono de lapiz y papelera.


* Migas de pan: en el show, en el edit: poder volver al registro o al index fácilmente.


* Después de buscar, abres un registro. Tener una forma de "volver a los resultados de la búsqueda".


* Búsquedas desplegables con metasearch que funcionen bien.


* Las búsquedas globales que se muestren en una caja bonita (no la cosa jquery chunga actual)


* Las búsquedas globales agrupadas de forma bonita.


* Al eliminar, en vez de la alerta chunga javascript, sacar una alerta con un modal o algo similar.


* Los mensajes de validaciones, errores, etc. que utilicen el alert de bootstrap, que es bonito y se puede cerrar.


* En el menú superior, enlaces a informes y configuraciones utilizando un menú desplegable basado en bootstrap dropdowns.


* Subir ficheros de forma fácil con drag & drop, mezclando las barritas de bootstrap con el plugin de jquery.
