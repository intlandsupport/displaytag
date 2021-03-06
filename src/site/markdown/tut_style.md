Style
-----

You actually have a lot of flexibility in how the table is displayed,
but of course you should probably stay close to the defaults in most
cases. You adjust the look of the table via two methods:

1.  pass through table and column attributes
2.  style sheets

### Html attributes

You can assign to the `<display:table>` tag any standard html strict
attribute (es. style, class,cellspacing, cellpadding), and it will be
included in the rendered table.

Likewise, you can assign to the `<display:column>` tag any standard html
attribute and it will be included in any `<td>` tag of the rendered
table. You can also specify a class to be used only for the column
header (`<th>`) using the headerClass attribute.

Html transitional attributes are also supported in version 1.0 but they
will be removed soon, so you are encoraged to avoid any html
presentational attribute (such as border, background, bgcolor, width,
height...): there are replaced by an appropriate use of css rules. See
the tag reference page for the full list of supported/ deprecated
attributes.

### Style Sheets

The `<display:table>` tag produces well formed html tables with
`<thead>` and `<tbody>` sections. Css classes are also automatically
added to rows/cells when needed.

You can easily customize the generated table simply specifing
appropriate css rules in your stylesheet, based on these
classes/selectors.

All the automatically added css classes can be customized in
displaytag.properties. You can also add a css class to any generated
display:table if needed. This is the list of css classes added by
default:

  ------------------------------------ ------------------------------------
  class                                odd
  assigned to                          assigned to the tr tag of all odd
                                       numbered data rows
  ------------------------------------ ------------------------------------


