library('gdata')
library('readxl')
file_path='/Users/zha0rong/Desktop/Tuya/NAE2-E3-Pilot.xlsx'
Number_of_Sheet=sheetCount(file_path)
Names_of_Sheet=sheetNames(file_path)
Environment=matrix(,ncol = 1,nrow = Number_of_Sheet)
Notation=matrix(,ncol = 1,nrow = Number_of_Sheet)
for (i in 1:Number_of_Sheet) {
  name=paste(i,Names_of_Sheet[i],sep = ' ')
  Environment[i,]=name
  Temporary=as.matrix(read_xlsx(file_path,sheet = i))
  Temporary_Notation=Temporary[13,5]
  Notation[i,]=Temporary_Notation
  Temporary_row=nrow(Temporary)
  Temporary_col=ncol(Temporary)
  Temporary_matrix=matrix(,nrow = Temporary_row, ncol = Temporary_col)
  for (j in 27:Temporary_row){
    for (k in 2:Temporary_col){
      if (!is.na(Temporary[j,k])) {
        Temporary_matrix[j,k]=Temporary[j,k]
      }
      else {
        break
      }
    }
  }
  Temporary_matrix=as.data.frame(Temporary_matrix)
  Temporary_matrix=Temporary_matrix[,-1]
  Temporary_matrix=na.omit(Temporary_matrix)
  nrowTempMatrix=nrow(Temporary_matrix)
  EnvironmentMatrix=as.data.frame(c(rep(Temporary_Notation,nrowTempMatrix)),ncol = 1)
  Temporary_matrix=cbind(Temporary_matrix,EnvironmentMatrix)
  assign(Temporary_Notation, Temporary_matrix)
}#Read all the sheets, create messy files in global environment#
rm(i, k, j, name, Temporary, Temporary_col,EnvironmentMatrix,nrowTempMatrix,Number_of_Sheet, Temporary_row, Temporary_matrix, Temporary_Notation)