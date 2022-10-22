#include "user.h"


user::user(QObject *parent) : QObject(parent)
{

}

bool user::login(QString username, QString password)
{
    qDebug() << "Username: " + this->username + " Password: " + this->password;
    qDebug() << "Input Username: " + username + " Input Password: " + password;

    if(username == user::username && password == user::password) {

        qDebug() << "Login Success";
        return emit success();
    }

    return emit fail(); qDebug() << "Login Failed";
}

