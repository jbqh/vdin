#!/app/py36/bin/python3
#coding:utf-8

import MySQLdb

class Common():
    
    def __init__(self):
        pass

    def get_mysql_connections(self,cursor_type=0):
        dbhost = '10.33.64.55'
        dbname = 'vdin'
        dbuser = 'vdin'
        dbpass = 'vdin1234'
        dbport = 3306

        try:
            conn = MySQLdb.connect(host=dbhost,user=dbuser,passwd=dbpass,port=dbport,db=dbname,\
                    use_unicode=True,charset='utf8')
            
            if cursor_type == 1:
                cursor = conn.cursor(cursorclass = MySQLdb.cursors.DictCursor)
            else:
                cursor = conn.cursor()

            return (cursor,conn)

        except Exception as e:
            exit(e)
