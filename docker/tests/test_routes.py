import requests

def test_users_list():
    response = requests.get('http://127.0.0.1:5000/')
    assert response.status_code == 200
    assert len(response.json()) >= 1
