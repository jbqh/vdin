#!/app/py36/bin/python3
#coding:utf-8

import common
import time

class Encryptions():
    def __init__(self):
        pass

    #添加加密信息
    def add_encryption(self,**args):
        try:
            sj = time.strftime('%F %T')
            sql = 'insert into encryptions values(encrypt_id,display_name,dept,term_type,belonged_to,hostname,\
                    updated_at) values(%d,"%s","%s","$s","%s","%s","%s")' % \
    (args['encrypt_id'],args['display_name'],args['dept'],args['term_type'],args['belonged_to'],args['hostname'],sj)
            print(sql)
            return sql

        except Exception as e:
            exit(e)

    def test(self):
        print('test package')

