# List of overloaded files for specific needs in this repository

## Fix metrics issue in admin dashboard
 - **app/stylesheets/decidim/vizzs/_areachart.scss**
```scss
    .area{
        fill: rgba(239,96,77,0.36);;
    }
```

## Add custom official avatar for organization resources
 - **app/assets/images/decidim/official-avatar.png**
 - **app/presenters/decidim/official_author_presenter.rb**
 - **app/stylesheets/decidim.scss**
 ```scss
     .author-data .author__avatar {
       margin-left: -25px;

       img {
         border-radius: 0;
         max-width: 20px;
         margin-top: -2px;
       }
     }
```
