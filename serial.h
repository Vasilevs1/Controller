#ifndef SERIAL_H
#define SERIAL_H

#include <QObject>
#include <QQuickItem>

class Serial : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString Author READ Author WRITE setAuthor NOTIFY AuthorChanged)
    QString m_Author;

public:
 //   explicit Serial(QObject *parent = 0);
QString Author() const
{
    return m_Author;
}

signals:

void AuthorChanged(QString Author);

public slots:
void setAuthor(QString Author)
{
    if (m_Author == Author)
        return;

    m_Author = Author;
    emit AuthorChanged(Author);
}
};

#endif // SERIAL_H
