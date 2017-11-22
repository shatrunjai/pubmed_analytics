#install.packages("PubMedWordcloud")
library(PubMedWordcloud)

#search by keyword
epilepsy_drug<-getPMIDsByKeyWords(keys = "Antiepileptic Drug", journal = NULL, dFrom = 2007,
                   dTo = 2017,n=10000, https = TRUE)

epilepsy_abs<-getAbstracts(epilepsy, https = TRUE, s = 100)
saveRDS(epilepsy_abs,"epilepsy_abstracts.rds")

epilepsy_drug_abs<-getAbstracts(epilepsy_drug, https = TRUE, s = 100)
saveRDS(epilepsy_abs,"epilepsy_abstracts.rds")
saveRDS(epilepsy_drug_abs,"epilepsy_drug_abstracts.rds")

clean_epilepsy=cleanAbstracts(epilepsy_abs)
clean_epilepsy_drug=cleanAbstracts(epilepsy_drug_abs)