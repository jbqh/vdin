#!/app/py36/bin/python3
#coding:utf-8

import encryptions

def abc():
    i = {'encrypt_id':1234,'display_name': '随便了','dept':'none','term_type':'ucloud','belonged_to':'Tom',
        'hostname':'TEST'}
    a = encryptions.encryptions.Encryptions()

    a.test()
    print(a.add_encryption(i))

