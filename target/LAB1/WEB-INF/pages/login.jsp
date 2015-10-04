<!DOCTYPE html>
  <html>
    <head>
      <meta charset="utf-8">
    </head>
    <body>
    <div class="container">

      <div class="header">
      </div>

      <div class="content">
        ${user}
        ${pass}

        <form action="/" method="POST">
          Username<br>
          <input type="text" name="username"><br>
          Password<br>
          <input type="text" name="password"><br>
          <input type="submit" value="Login">
        </form>
      </div>

      <div class="footer">
        <p>
          <br>
          Copyright (C) Vootele Verrev 2015 | www.github.com/verrev
      </div>

    </div>
  </body>
</html>