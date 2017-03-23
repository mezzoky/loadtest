from locust import HttpLocust, TaskSet


def about(l):
    l.client.get("/about/")


def index(l):
    l.client.get("/")


def posts(l):
    l.client.get("/posts/")


class UserBehavior(TaskSet):
    tasks = {
        index: 3,
        about: 2,
        posts: 3
    }


class WebsiteUser(HttpLocust):
    task_set = UserBehavior
    host = 'https://www.kangyaw.space'
    min_wait = 600
    max_wait = 1300
