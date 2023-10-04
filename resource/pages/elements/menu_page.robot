*** Settings ***
Documentation  Dicionário de elementos referentes a tela login.
Resource  ${EXECDIR}/resource/main.resource

*** Variables ***
&{menu}
...  img_profile=css=img[class="oxd-userdropdown-img"]
...  menu_my_info=css=a[href="/web/index.php/pim/viewMyDetails"]
...  menu_admin=css=a[href="/web/index.php/admin/viewAdminModule"]