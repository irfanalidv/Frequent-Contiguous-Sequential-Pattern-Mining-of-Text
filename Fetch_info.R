Fetch_info <- function (filepath, minsupport,docdelim) {
  
  loadNamespace("tm")
  loadNamespace("NLP")
  
  Terms_vector <- vector()
  Terms_final_seq_pattern <- vector()
  Terms_temp_df <- data.frame()
  Terms_final_seq_pattern_df <- data.frame()
  
  n <- 1
  
  docs_inp <- utils::read.csv(filepath,header=FALSE,sep = docdelim,stringsAsFactors = FALSE)
  vcorp <- tm::VCorpus(tm::DataframeSource(docs_inp))
  
  repeat {
    
    MgramTokenizer <- function(x) unlist(lapply(NLP::ngrams(NLP::words(x), n), paste, collapse = " "), use.names = FALSE)
    
    tdmm <- tm::TermDocumentMatrix(vcorp, control = list(tokenize = MgramTokenizer))
    
    Terms_temp_df <- as.data.frame(tm::findFreqTerms(tdmm,minsupport),stringsAsFactors = FALSE)
    
    if (length(Terms_temp_df) == 0 || (length(Terms_temp_df) > 0 && is.na(Terms_temp_df[1,1])))
    {
      break
    }
    else
    {
      n <- n+1
    }
    
    for (k in 1 : nrow(Terms_temp_df)) {
      
      sum_df <- as.data.frame(tm::tm_term_score(tdmm,Terms_temp_df[k,1]))
      
      for (sum_row in 1 : nrow(sum_df))
      {
        if (sum_df[sum_row,1] > 1) { sum_df[sum_row,1] <- 1
        }
      }
      
      Terms_final_seq_pattern <- rbind(Terms_final_seq_pattern, c(Terms_temp_df[k,1],colSums(sum_df)[[1]]))
      
    }
    
  }
  
  Terms_final_seq_pattern_df <- as.data.frame(Terms_final_seq_pattern,stringsAsFactors = FALSE)
  
  colnames(Terms_final_seq_pattern_df) <- c("Freq_Phrases","Support")
  
  Terms_final_seq_pattern_df <- Terms_final_seq_pattern_df[Terms_final_seq_pattern_df$Support >= minsupport,]
  
  return(Terms_final_seq_pattern_df)
  
}