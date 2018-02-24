if  ngx.var.request_method == 'POST' then
    local args = ngx.req.get_uri_args()
end

if  ngx.var.request_method == 'GET' then
    local args = ngx.req.get_post_args()
end

local methods = {}
methods[ 'GET' ] = ngx.HTTP_GET
methods[ 'POST' ] = ngx.HTTP_POST 
local res = ngx.location.capture(
    "/new_c/web/index.php", { args = args, method = methods[ngx.var.request_method] }
)
if res.body == '404' then
    ngx.say('404')
end
ngx.var.target = res.body
-- ngx.say(res.body)