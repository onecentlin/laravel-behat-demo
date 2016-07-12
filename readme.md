# Laravel BDD with Behat, Mink, PHPUnit

This is my learning notes in steps.

Welcome to visit [{ oc.tech.notes }](https://devmanna.blogspot.com) and discuss with me.

## Install Laravel Project

Laravel Installer

    laravel new laravel-behat

Composer

    composer create-project laravel/laravel laravel-behat --prefer-dist

## Install Behat, Mink, Mink-Extension, Behat-Laravel-Extension

```
composer require behat/behat behat/mink behat/mink-extension laracasts/behat-laravel-extension --dev
```

## Initialize Behat

```
./vendor/bin/behat --init
```

### Create Behat Configuration File: `behat.yml`

```
default:
    extensions:
        Laracasts\Behat\ServiceContainer\BehatExtension: ~
        Behat\MinkExtension\ServiceContainer\MinkExtension:
            default_session: laravel
            laravel: ~
```

### Create `.env.behat`

This is for laravel environment setting in behat testing mode

e.g.
```
APP_ENV=acceptance
```

## Enable MinkContext in `features/bootstrap/FeatureContext.php`

```php
use Behat\MinkExtension\Context\MinkContext;

class FeatureContext extends MinkContext implements Context, SnippetAcceptingContext
{
    ...
}
```

### Create `*.feature` file for testing

This is the example.feature file for testing purpose

```
Feature: Example
    In order to test Behat
    I want to test some behat features

Scenario: Visit Homepage
    Given I am on homepage
    Then I should see "Laravel 5"
```

## Execute Behat

```
./vendor/bin/behat
```

### Show accept mink extension definition

```
./vendor/bin/behat -dl
```

![behat mink definition list](screenshots/behat-dl.png)

### Append Snippets

```
./vendor/bin/behat --append-snippets
```

## FAQ:

- Encounter error message: The text "Laravel 5" was not found anywhere in the text of the current page.<br>Execute follow command:

```
php artisan config:cache
```

## Learning Reference:

- [Laravel 5 and behat: BFFs](https://laracasts.com/lessons/laravel-5-and-behat-bffs)
- [Behat](http://docs.behat.org/en/v3.0/)
- [PHPUnit Assertions](https://phpunit.de/manual/current/en/appendixes.assertions.html)

---

Winnie Lin - GitHub: [https://github.com/onecentlin](https://github.com/onecentlin)