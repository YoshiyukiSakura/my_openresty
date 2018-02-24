local res = ngx.location.capture(
    "/index.php"
)
ngx.say(res.body)
