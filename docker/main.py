import psycopg2


DB_NAME = os.environ.get("DB_NAME", "kubsu")
DB_USER = os.environ.get("DB_USER", "kubsu")
DB_PASSWORD = os.environ.get("DB_PASSWORD", "kubsu")
DB_HOST = os.environ.get("DB_HOST", "localhost")
DB_PORT = "5432"


def fetch_users():
    try:
        connection = psycopg2.connect(
            dbname=DB_NAME,
            user=DB_USER,
            password=DB_PASSWORD,
            host=DB_HOST,
            port=DB_PORT
        )
        
        cursor = connection.cursor()
        
        cursor.execute("SELECT * FROM users")
        
        users = cursor.fetchall()
        
        for user in users:
            print(*user)
        
        cursor.close()
        connection.close()
        
    except (Exception, psycopg2.Error) as error:
        print("Ошибка при работе с PostgreSQL:", error)

fetch_users()
