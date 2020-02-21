"""
@ProjectName: DXY-2019-nCov-Crawler
@FileName: db.py
@Author: Jiabao Lin
@Date: 2020/1/21
"""
from pymongo import MongoClient


client = MongoClient("mongodb地址")
db = client['mongodb数据库']


class DB:
    def __init__(self):
        self.db = db

    def insert(self, collection, data):
        self.db[collection].insert(data)

    def find_one(self, collection, data=None):
        return self.db[collection].find_one(data)

    def find(self, collection, data=None):
        return self.db[collection].find(data)

    def update_one(self, collection, query=None,data_after=None):
        return self.db[collection].update_one(query,data_after)
