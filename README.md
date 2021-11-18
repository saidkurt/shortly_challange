## Start Project


`flutter run`



## App Folder Design
    The folder structure consists of 4 parts. These are core, view, helper, controller.
    
    Network requests, theme, language options, cache, constant values are kept in Core.
    
    In View, only the designs on the page are available.
    
    There are widgets in Helper that we can access all over the application.
    
    Getx is used as state management and there is no setState.
    
    The application works on a single page. There are 2 different pages at the top and a single structure at the bottom.

## App Lifecycle



    When the application is first opened, images are brought using the Svg library. If the input is left blank at the bottom and a query is made, the text in the input changes and an error message is seen.
    
    When the Shorten it button is pressed, it automatically switches to the other page. If the page number is checked here, if the current page is not the second page, it moves to the next page.
    
    In case of false response from network request, Toast message appears.
    
    A lot of things on page 2 are dynamic. The index of the list is checked, deletion and copying are done and setState is not used.


## Packages
`get: ^4.3.8`

`dio: ^4.0.3`

`flutter_svg: ^0.23.0+1`

`google_fonts: ^2.1.0`

`hexcolor: ^2.0.5`

`fluttertoast: ^8.0.8`

`clipboard: ^0.1.3`

`flutter_spinkit: ^5.1.0`



