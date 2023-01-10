#ifndef USER_H
#define USER_H

#include <QObject>
#include <QString>
#include <QDebug>

class user : public QObject
{
    Q_OBJECT

public:
    user(QObject *parent = nullptr);

private:
    QString username = "admin";
    QString password = "admin";

signals:
    bool success();
    bool fail();

public slots:
    bool login(QString username, QString password);
    void resetPassword(QString newPassword);
};

#endif // USER_H
