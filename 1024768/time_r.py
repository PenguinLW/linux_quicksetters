from time import time, ctime;
from datetime import datetime

#time() - time in seconds since the epoch; ctime() - local time.
ta = ctime(time())

#
input("ДА! Вот просто стою - и просто жду. Это ТЫ ничего не понимаешь!");

#
tb = ctime(time());

print(
    "Момент начала измерения:\t{:s}\nИзмерение завершено:\t{:s}".format(ta, tb, )
);

print(
    "{:s}\n{:s}\n{:s}\n{:s}\n{:s}".format(
        str(datetime.now()),
        str(datetime.now().hour),
        str(datetime.now().minute),
        str(datetime.now().second),
        str(datetime.now().microsecond)
));