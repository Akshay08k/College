# MySQLi Methods Overview

## 1. `mysqli_connect`

- **Description:** Used to create a connection with the database.
- **Parameters:** `$servername`, `$username`, `$password`, `$dbname` (optional).
- **Example:**

  ```php
  $conn = mysqli_connect($servername, $username, $password, $dbname);

  if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
  }
  ```

## 2. `mysqli_close`

- **Description:** Used to close the database connection.
- **Example:**
  ```php
  mysqli_close($conn);
  ```

## 3. `mysqli_create_db`

- **Description:** Deprecated. Use `CREATE DATABASE` SQL statement instead.

## 4. `mysqli_affected_rows`

- **Description:** Used to get the number of affected rows in a previous MySQL operation.
- **Example:**

  ```php
  $sql = "UPDATE table_name SET column_name = 'new_value' WHERE condition";
  mysqli_query($conn, $sql);

  echo "Affected rows: " . mysqli_affected_rows($conn);
  ```

## 5. `mysqli_error`

- **Description:** Used to display an error message from the last MySQL operation if there is an error.
- **Example:**
  ```php
  if (!mysqli_query($conn, $sql)) {
      echo "Error: " . mysqli_error($conn);
  }
  ```

## 6. `mysqli_fetch_array`

- **Description:** Used to fetch a result row as an associative or numeric array.
- **Example:**
  ```php
  $result = mysqli_query($conn, "SELECT * FROM table_name");
  $row = mysqli_fetch_array($result, MYSQLI_ASSOC); // Associative array
  ```

## 7. `mysqli_fetch_assoc`

- **Description:** Used to fetch a result row as an associative array.
- **Example:**
  ```php
  $result = mysqli_query($conn, "SELECT * FROM table_name");
  $row = mysqli_fetch_assoc($result);
  ```

## 8. `mysqli_fetch_row`

- **Description:** Used to fetch a result row as a numeric array.
- **Example:**
  ```php
  $result = mysqli_query($conn, "SELECT * FROM table_name");
  $row = mysqli_fetch_row($result);
  ```

## 9. `mysqli_num_rows`

- **Description:** Used to get the number of rows in a result set.
- **Example:**
  ```php
  $result = mysqli_query($conn, "SELECT * FROM table_name");
  $rowCount = mysqli_num_rows($result);
  ```

## 10. `mysqli_select_db`

- **Description:** Used to select a MySQLi database to execute specific operations on it.
- **Example:**
  ```php
  $dbname = "database_name";
  mysqli_select_db($conn, $dbname);
  ```

## 11. `mysqli_query`

- **Description:** Used to execute SQL queries.
- **Example:**
  ```php
  $sql = "SELECT * FROM table_name";
  $result = mysqli_query($conn, $sql);
  ```

Remember to replace placeholders like `your_username`, `your_password`, `your_database`, etc., with your actual values.
