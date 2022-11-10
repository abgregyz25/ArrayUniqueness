int[] rowWinners = {7,9,9,9,10,10};
int maxValue = 8;

// ENSURE THERE ARE NO DUPLICATE ROWS *AND* All NUMBERS ARE WITHIN RANGE SET BY MAXVALUE
    int sortRowCount = 0;
    rowWinners = sort(rowWinners);
    println(rowWinners);
    boolean duplicates = true;
    boolean exceed = true;
    while (exceed) {
      exceed = false;
      while (duplicates) {
        for (int i = 0; i < rowWinners.length-1; i++) {
          for (int j = 0; j <= i; j++) {
            if (rowWinners[i-j] == rowWinners[(i+1)]) {
              duplicates = true;
              rowWinners[(i+1)] = rowWinners[(i+1)] + 1 + j;
              sortRowCount++;
            } else {
              duplicates = false;
              sortRowCount++;
            }
          }
        }
      }
      for (int i = 0; i < rowWinners.length; i++) {
        if (rowWinners[i] > maxValue) {
          rowWinners[i] = 0;
          exceed = true;
          duplicates = true;
          sortRowCount++;
        }       
      }
      if(exceed){
        rowWinners = sort(rowWinners);
        sortRowCount++;
      }
    }
    println("");
    println(rowWinners);
    println(sortRowCount);
