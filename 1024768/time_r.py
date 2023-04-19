from time import time;

ta = time();
input("ДА! Вот просто стою - и просто жду. Это ТЫ ничего не понимаешь!");
tb = time();

print(ta, "\n", tb, "\n", (tb - ta) / 3600000);