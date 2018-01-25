<!DOCTIPY html>
<html>
    <head>
        <title>123456</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
    {foreach item=v key=k from=$movies}
        <div>
            <p>名称:{$v['name']}</p>
            <p>主演: {$v['performer']}</p>
        </div>
        {/foreach}
    </body>
</html>