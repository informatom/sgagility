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
    

