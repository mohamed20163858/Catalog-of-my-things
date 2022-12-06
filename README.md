<a name="readme-top"></a>

<div align="center">

  <img src="murple_logo.png" alt="logo" width="140"  height="auto" />
  <br/>

  <h3><b>Catalog of my things</b></h3>

</div>

<!-- TABLE OF CONTENTS -->

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
    - [Key Features](#key-features)
  - [🚀 Live Demo](#live-demo)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
  - [Usage](#usage)
  - [Run tests](#run-tests)
  - [Deployment](#triangular_flag_on_post-deployment)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [❓ FAQ](#faq)
- [📝 License](#license)

<!-- PROJECT DESCRIPTION -->

# 📖 [Catalog of my things] <a name="about-project"></a>

> Build a school library ruby App to enable school libarians easy track the books inside the library, the registered students and teachers and the rental records beside tracking any rental happened by just providing the student or teacher ID.

 


**[Catalog of my things]** is built using through following OOP styling paradigm I created classes for every given input entity like student , teacher, book, rental then i create assoction between them for example student and teacher has `many-to-many` relation ship with book so i created rental class to link these two classes together.

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

> ruby, rubocop linter, rspec testing

<!-- Features -->

### Key Features <a name="key-features"></a>

> The school library ruby App  has the following features:-

- **List all books inside the library**
- **List all people that has permission to enter the library**
- **Register new person either a student or a teacher**
- **Register new book**
- **Create a rental to track each book rented by person x**
- **List all rentals by person x just by giving his ID to the App**
- **Exit to quit the application**
 
<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- GETTING STARTED -->

## 💻 Getting Started <a name="getting-started"></a>

### Prerequisites

In order to run this project you need:
## Windows users
Download the latest version of ruby using this [link](https://rubyinstaller.org/downloads/)
## Linux
coming soon
## Macos
coming soon

### Setup
You can download the page by clicking in the code green button and select Download ZIP or if you are a developer. You can get the https link or ssh link just copy it and use your favourite command line git interface and write this `git clone https://github.com/mohamed20163858/oop_school_library.git` if you use https or write `git clone git@github.com:mohamed20163858/oop_school_library.git` if you use ssh

### Usage

To run the project just open your terminal, then change the directory to the location of this repo using this command `cd file_path`, and finally run this command `ruby main.rb` or if you are using windows you can simply double click this file `main.rb`.

Here is a screenshots of an example to teach you how to correctly use this App:-
![image](https://user-images.githubusercontent.com/22921170/204107264-fefacb46-6a97-411f-87aa-a9de69c13d71.png)
![image](https://user-images.githubusercontent.com/22921170/204107279-bce2ba7c-0767-4e3e-a0c6-098b0efa43f4.png)
![image](https://user-images.githubusercontent.com/22921170/204107309-43526aad-a545-49a5-9302-4259bb61ed89.png)


<p align="right">(<a href="#readme-top">back to top</a>)</p>

## Tests 
the app is tested using Rspec library you can check the tests by openning your terminal, then change the directory to the location of this repo using this command `cd file_path`, then run this command `gem install rspec`, finally run this command `rspec spec` or `rspec spec --format doc` for documented test results you should see a screen like that 
![image](https://user-images.githubusercontent.com/22921170/205204379-de95a414-ed5f-4f4b-80a9-c3b2063c1eac.png)

<!-- AUTHORS -->

## 👥 Authors <a name="authors"></a>

👤 **Mohamed Saleh**

- GitHub: [@mohamed20163858](https://github.com/mohamed20163858)
- Twitter: [@mohamed20163858](https://twitter.com/mohamed20163858)
- LinkedIn: [MohamedMohsenSaleh](https://www.linkedin.com/in/mohamedmohsensaleh/)

👤 **OmarMWarraich**

- GitHub: [@OmarMWarraich](https://github.com/OmarMWarraich)
- Twitter: [@omarwarraich1](https://twitter.com/omarwarraich1)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/o-va/)



<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- CONTRIBUTING -->

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- SUPPORT -->

## ⭐️ Show your support <a name="support"></a>

If you like this project give it a thumb up :	👍 and share this projects with your friends 

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- FAQ (optional) -->

## ❓ FAQ <a name="faq"></a>

- **[Does this App has a GUI?]**

  - [Actually till now No but i will work on that in the future currently it only work as a console log application]

- **[What is the name of database application that this app use to store its data?]**

  - [Well this app donot use any database at all all the inforamtion you enter will be saved as json format for every object created to make this program work and these objects are rentals, books, and people]

<p align="right">(<a href="#readme-top">back to top</a>)</p>

<!-- LICENSE -->

## 📝 License <a name="license"></a>

This project is [MIT](./MIT.md) licensed.
<p align="right">(<a href="#readme-top">back to top</a>)</p>
