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
* `app/assets/stylesheets/decidim/vizzs/_areachart.scss`
289651bb9 - Overload _areachart.scss file to fix metrics issue, 2021-08-16

* `config/initializers/extends.rb`
fc4811672 - Fix proposal export, 2021-10-25

* `config/initializers/cookies.rb`
8267f926c - Add orejime's cookies banner (#123), 2020-10-29

* `lib/extends/exporters/csv.rb`
fc4811672 - Fix proposal export, 2021-10-25

* `lib/extends/commands/decidim/admin/create_participatory_space_private_user_extends.rb`
7a7eabdc1 - :boom: :ambulance: Fixes !!, 2018-10-01

* `lib/extends/commands/decidim/admin/impersonate_user_extends.rb`
7a7eabdc1 - :boom: :ambulance: Fixes !!, 2018-10-01

* `lib/decidim/forms/user_answers_serializer.rb`
45b797b6b - Update tests, 2021-10-25

