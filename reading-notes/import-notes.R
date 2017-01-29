#####
# Import csv files with kindle highlights and re-format to Anki suitable format
#
#####

library(tidyverse)

# import reading-list
reading_list <- read_delim('reading-list/reading-list.txt', delim = ",")

# import raw quotes files and convert them to Anki compatible format
quote_files <- list.files('reading-notes/raw-data/')

import_quotes <- function(file_name, reading_list) {
  
  book_title <- read_csv(paste0('reading-notes/raw-data/', file_name), n_max = 3)[1,1][[1]]
  book_title <- tools::toTitleCase(tolower(book_title))
  quotes <- read_csv(paste0('reading-notes/raw-data/', file_name), skip = 7)
  book_id <- reading_list$id[match(tolower(book_title), tolower(reading_list$title))]
  
  quotes <- quotes %>% mutate(title = book_title, nid = format(book_id + 1:n()/1000), digits = 3) %>%
    select(nid, title, location = Location, annotation = Annotation)
  
  write.table(quotes, 'reading-notes/data/book-notes.txt', sep = ";", col.names = FALSE, row.names = FALSE, append = TRUE,
              fileEncoding = "UTF-8")
  
  return(quotes)
  
}

# unlink('reading-notes/data/book-notes.txt')
quotes <- purrr::map_df(quote_files, import_quotes, reading_list)
