const express = require("express");
const mysql = require("mysql");
const app = express();
const bodyParser = require('body-parser');
// const bcrypt = require('bcrypt');


app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

app.use(express.static(__dirname + "/public"));
app.set("view engine", "ejs");


const connection = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "",
  database: "furniture",
});

let loggedin = false;
let logindetails={
  "id":"","name":"","email":""
}
connection.connect((err) => {
  if (err) {
    console.log("Error connecting to database:", err);
    return;
  }
  console.log("Connected to database");
});

app.get("/", (req, res) => {
  const featurequery = "SELECT * FROM products WHERE featured=1";
  const newarrivalquery = "SELECT * FROM products WHERE newarrival=1";

  Promise.all([
    new Promise((resolve, reject) => {
      connection.query(featurequery, (err, results) => {
        if (err) {
          console.log("Error fetching products:", err);
          reject(err);
        }
        resolve(results);
      });
    }),
    new Promise((resolve, reject) => {
      connection.query(newarrivalquery, (err, results) => {
        if (err) {
          console.log("Error fetching products:", err);
          reject(err);
        }
        resolve(results);
      });
    })
  ])
  .then(([featuredprod, newarrivalprod]) => {
    res.render("index", { featured: featuredprod, newarrival: newarrivalprod });
  })
  .catch((err) => {
    console.log("Error fetching products:", err);
    res.sendStatus(500);
  });
});

app.get("/blog", (req, res) => {
  res.render("blog");
});

app.get("/about", (req, res) => {
  res.render("about");
});

app.get("/account", (req, res) => {
  res.render("account");
});

app.get("/contact", (req, res) => {
  res.render("contact");
});

app.get("/login", (req, res) => {
  res.render("login");
});
app.get("/register", (req, res) => {
  res.render("register");
});

app.get("/cart", (req, res) => {
  res.render("cart");
});

app.get("/roomplanner", (req, res) => {
  const query = "SELECT * FROM products";
  connection.query(query, (err, results) => {
    if (err) {
      console.log("Error fetching products:", err);
      return;
    }
    res.render("roomplanner", { products: results });
  });
});

app.post('/auth', (req, res) => {
  const email = req.body.email;
  const password = req.body.password;

  connection.query('SELECT * FROM users WHERE email = ?', email, (error, results, fields) => {
    if (error) throw error;

    if (results.length > 0) {
      if (password === results[0].password) {
        res.send('Login successful');
        logindetails[id] = results[0].id;
        logindetails[email] = results[0].email;
        logindetails[password] = results[0].password;

      } else {
        res.send('Email and password do not match');
      }
    } else {
      res.send('Email does not exist');
    }
  });
});

app.post('/contact', (req, res) => {
  const fname = req.body.fname;
  const lname=  req.body.lname;
  const email = req.body.email;
  const city = req.body.city;
  const state=  req.body.state;
  const subject = req.body.subject;
  const description = req.body.description;

  connection.query('INSERT INTO `contact`(`fname`, `lname`, `email`, `city`, `state`, `subject`, `description`) VALUES (?, ?, ?, ?, ?, ?, ?)', [fname,lname,email,city,state,subject,description], function(error, results, fields) {
    if (error) throw error;
    res.redirect('/contact');
  });
});

app.get('/logout', function(req, res) {
  req.session.loggedin = false;
  req.session.email = '';
  res.redirect('/');
});

app.post('/register', function(req, res) {
  const name = req.body.name;
  const email = req.body.email;
  const password = req.body.password;
console.log(req.body)

    connection.query('INSERT INTO users (name, email, password) VALUES (?, ?, ?)', [name, email, password], function(error, results, fields) {
      if (error) throw error;
      res.redirect('/');
    });

});


app.get("/shop", (req, res) => {
  const query = "SELECT * FROM products";
  connection.query(query, (err, results) => {
    if (err) {
      console.log("Error fetching products:", err);
      return;
    }
    res.render("shop", { products: results });
  });
});

app.get("/products/:id", (req, res) => {
  const productId = req.params.id;

  const sql = `SELECT * FROM products WHERE id = ${productId}`;
  connection.query(sql, (err, results) => {
    if (err) throw err;

    // render the product details page with the retrieved data
    res.render("product", { product: results[0] });
  });
});

app.post('/register', (req, res) => {
  const data = req.body;
  console.log(data)
  connection.query('INSERT INTO users SET ?', data, (error, result) => {
    if (error) {
      console.error(error);
      res.status(500).send('Error inserting data into database');
    } else {
      console.log(result);
      res.json({ success: true });
    }
  });
});





app.listen(3000, () => {
  console.log("Server listening on port 3000");
});
