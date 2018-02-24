import hashlib
from collections import OrderedDict

import demjson

# from ext import root_logger
# from config import Config


def generate_token(params):
    md5_dict = {}
    for param in params:
        if params[param]:
            # root_logger.info(params[param])
            print (params[param])
            md5_dict[param] = params[param]
    if md5_dict:
        md5_str = demjson.encode(OrderedDict(sorted(md5_dict.items(), key=lambda t: t[0])))
    else:
        md5_str = ''
    md5_code = hashlib.md5((md5_str + 'phpzuihao').encode('utf8')).hexdigest()
    print((md5_str + 'phpzuihao').encode('utf8'))
    return md5_code

def authenticate(token, params):
    code = None
    md5_code = generate_token(params=params)
    # root_logger.info(md5_code)
    print (md5_code)
    if md5_code != token:
        code = '20001'
    return code

print ( generate_token({'limit':'10', 'page':"1", 'server_name':"啊啊啊啊", "user_id": "100920"}) )