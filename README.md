#### Get this project

-   Clone the project.
    ```
        git clone https://github.com/MahmoudKon/edusite.git
    ```
-   Go to the folder application using `cd edusite` command on your cmd or terminal
-   Run `composer install` on your cmd or terminal.
-   MAke Copy from `.env.example` to `.env` on the root folder.
-   Create `edusite` database in phpmyadmin.
-   Open this file
    `vendor\mcamara\laravel-localization\src\Mcamara\LaravelLocalization\LaravelLocalization.php`
-   Add this method on line 564 :
    ```
        /**
         * Returns current locale name.
         *
         * @return string current flag name
         */
        public function getCurrentFlagName()
        {
            return $this->supportedLocales[$this->getCurrentLocale()]['flag'];
        }
    ```
-   Run `php artisan migrate --seed`.
-   Run `php artisan serve`.
