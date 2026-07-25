# В архиве letters вы найдете письма Льва Толстого в формате XML.
# Вам надо выполнить задание и закоммитить изменения. 
# Не меняйте структуру репозитория. Не переименовывайте файл с заданием.
# Не переименовывайте переменные.

# Извлеките из каждого файла том, дату и адресата и соберите эти данные в одну таблицу. 
# дата письма: в header — тег correspAction, тип sending — тег date, атрибут when;
# адресат: в header – тег correspAction, тип receiving — имя получателя (текст)
# том: в header — biblScope, юнит vol — номер тома 

# Применяйте trimws() к результату парсинга, чтобы избавиться от лишних строк. 

library(xml2) 
library(dplyr)
library(purrr)
 
if (!dir.exists("letters")) {
  unzip("letters.zip")
}

my_xmls <- # ваш код здесь 

# пишем код для одного письма
test_xml <- my_xmls[1]
doc <- # ваш код здесь 
ns <- # ваш код здесь 

# дата письма
date <- # ваш код здесь 

# адресат письма
corresp <- # ваш код здесь 

# том 

vol <- # ваш код здесь 

### ---------------------------###
## теперь оборачиваем в функцию
read_letter <- function(xml_path) {

  # ваш код здесь 
  
  # записываем в тиббл
  res <- tibble(
    date = date, 
    corresp = corresp,
    vol = vol
  )
  
  return(res)
}


letters_tbl <- map_dfr(my_xmls, read_letter)
