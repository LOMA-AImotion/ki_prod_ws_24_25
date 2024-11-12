enum ShiftType = {Day, Night, Off};
enum Days = {Mon, Tue, Wed, Thu, Fri};

array[Days] of var ShiftType: works_shift;
include "at_most.mzn";

constraint at_most(3, works_shift, Day);