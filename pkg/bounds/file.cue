#floatOver5:  >5.0   // type: float
#negativeNum: <0     // type: int | float
#afterL:      >"L"   // type: string
#notNull:     !=null // type: any except null

zero:      0    & >10          // failure
float10:   10.0 & #floatOver5
float5:    5.0  & #floatOver5  // failure
"num-6":   -6   & #negativeNum
A:         "A"  & #afterL      // failure
Z:         "Z"  & #afterL
isNull:    null & #notNull     // failure
isNotNull: "X"  & #notNull

float425:  42.5 & #notNull & <100 & #floatOver5