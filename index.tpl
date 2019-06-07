<html>
    <head>
        <meta charset='utf-8'>
        <title>Гороскоп на сегодня</title>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <script	src="https://code.jquery.com/jquery-3.4.1.min.js"		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo=" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <h1>Что день {{ date }} готовит</h1>
            % if special_date:
            <h2>Сегодня супер день</h2>
            % end

            % for pred in predictions:
            <p>{{ pred }}</p>
            % end
            
        </div>
        <hr><a href='about.html'>О реализации</a>
    </body>
    <script>
    </script>
</html>