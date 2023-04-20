# 1. Написать скрипт очистки директорий. На вход принимает путь к директории. 
# Если директория существует, то удаляет в ней все файлы с расширениями .bak, .tmp, .backup. Если директории нет, то выводит ошибку.

# Создаем и открываем файл

# cat > delfiletodir

# Прописываем:

#!/bin/bash

read -p "Введите путь к дирректории: " DELDIR

if [ -e $DELDIR ]
        then
                echo 'Указанная дирректория найдена'
                cd $DELDIR
                echo 'Произвожу удаление'
                rm -v *.bak *.tmp *.backup
                echo 'Удаление завершено успешно'
        else
                echo 'Указанная дирректория не найдена! Выполнение остановлено'
                exit 2
fi

# Сохраняем и запускаем в Bash:

# bash delfiletodir
