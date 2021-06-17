# Health Tourism Web Application 

It is a Python-Django Framework web application where the application has different modules such as Admin app, User app. The Backend of the application is connected to MySQL database.

## Health Tourism system

Health tourism is a fast growing multibillion-dollar industry around the world and it entails trade in services of two major industries i.e. medicine and tourism. The details about the treatment and the travelling places will be described in the website along with packages. The user can register with the permission of the admin, who manages all packages, offers, registration, etc. The modules of the project are admin, user, registered user and travel module.

## Modules

 Admin module : An admin can add ayurvedic places, tourism places, as well as pilgrim packages into the system. The admin can confirm the user registration as well as his package requests. Admin can add more images into the packages and places.

 Registered User : The registered user can see all the information regarding the packages and the client will be able to apply for the packages that are available. The user can choose his own time and date for the package.

 General User : The clients can see the package without Registration. But the client wont get more information about that. The client needs more information regarding that then they should register to the application.

## How to Setup

Database : Here we are using MySQL database. Create a table in MySQL database with the name health or you can create a table in MySQL database and in the folder health open settings.py in your editor and scroll down to databases 

```
DATABASES = 
{ 'default': 
   { 'ENGINE': 'django.db.backends.mysql', 
     'NAME': '<YOUR_TABLE_NAME>', 
     'USER': 'root', 
     'PASSWORD': '', 
     'HOST': 'localhost', 
     'PORT': '' } 
 }
 ```

Now in the terminal, run the following commands:

```
python manage.py makemigrations

python manage.py migrate
```
