---
title: "Codebook for Tidy Dataset Extract on Human Activity Recognition Using Smartphones"
author: "Kay Dee"
date: "Wednesday, January 14, 2015"
output: html_document
---

The tidy dataset extracted has been put in narrow format. The extracted dataset has 4 colummns: **Activity, Subject, Measurement, avgValue** and 11880 (6 * 30 * 66) rows. 


### Variable: Activity

In the **UCI HAR dataset** variable **Activity** is the activity performed by each subject among the total of 6 activities. In the **UCI HAR dataset** variable **Activity** has been coded as following:

  * 1 -> Walking
  * 2 -> Climbing up the stairs
  * 3 -> Climbing down the stairs
  * 4 -> Sitting Up
  * 5 -> Standing
  * 6 -> Laying down
  
  
In the tidy dataset they have been *converted to strings instead of numeric codes*. So this column contains 6 different character strings. Data type is **character string**.



### Variable: Subject

In the **UCI HAR dataset** variable **Subject** is the subject id performing the activity for each window sample. There are total 30 subjects. So **Subject** variable's range is from 1 to 30. The datatype is **integer**.



### Variable: Measurement

This column contains the measurements performed on the test subjects. In the **tidy dataset extract** 66 features have been selected, hence this column contains **66** different character strings. Data type is **character string**.

Brief comment about the features extracted are given below:
  
The features given below been measured in **3 dimensional Orthogonal axes**, are **Mean value** and of **Time domain**:

1. Mean.of.Body.Acceleration.along.X.axis
2. Mean.of.Body.Acceleration.along.Y.axis
3. Mean.of.Body.Acceleration.along.Z.axis
4. Mean.of.Gravity.Acceleration.along.X.axis
5. Mean.of.Gravity.Acceleration.along.Y.axis
6. Mean.of.Gravity.Acceleration.along.Z.axis
7. Mean.of.Body.Acceleration.Jerk.along.X.axis
8. Mean.of.Body.Acceleration.Jerk.along.Y.axis
9. Mean.of.Body.Acceleration.Jerk.along.Z.axis
10. Mean.of.Body.Angular.Velocity.along.X.axis
11. Mean.of.Body.Angular.Velocity.along.Y.axis
12. Mean.of.Body.Angular.Velocity.along.Z.axis
13. Mean.of.Body.Angular.Velocity.Jerk.along.X.axis
14. Mean.of.Body.Angular.Velocity.Jerk.along.Y.axis
15. Mean.of.Body.Angular.Velocity.Jerk.along.Z.axis


The features given below are **Magnitude**, are **Mean value** and of **Time domain**:

16. Mean.of.Body.Acceleration.Magnitude
17. Mean.of.Gravity.Acceleration.Magnitude
18. Mean.of.Body.Acceleration.Jerk.Magnitude
19. Mean.of.Body.Angular.Velocity.Magnitude
20. Mean.of.Body.Angular.Velocity.Jerk.Magnitude


The features given below are **3 dimensional Orthogonal axes**, are **Std. Dev.** and of **Time domain**:

21. Stdev.of.Body.Acceleration.along.X.axis
22. Stdev.of.Body.Acceleration.along.Y.axis
23. Stdev.of.Body.Acceleration.along.Z.axis
24. Stdev.of.Gravity.Acceleration.along.X.axis
25. Stdev.of.Gravity.Acceleration.along.Y.axis
26. Stdev.of.Gravity.Acceleration.along.Z.axis
27. Stdev.of.Body.Acceleration.Jerk.along.X.axis
28. Stdev.of.Body.Acceleration.Jerk.along.Y.axis
29. Stdev.of.Body.Acceleration.Jerk.along.Z.axis
30. Stdev.of.Body.Angular.Velocity.along.X.axis
31. Stdev.of.Body.Angular.Velocity.along.Y.axis
32. Stdev.of.Body.Angular.Velocity.along.Z.axis
33. Stdev.of.Body.Angular.Velocity.Jerk.along.X.axis
34. Stdev.of.Body.Angular.Velocity.Jerk.along.Y.axis
35. Stdev.of.Body.Angular.Velocity.Jerk.along.Z.axis


The features given below are **Magnitude**, are **Std. Dev.** and of **Time domain**:

36. Stdev.of.Body.Acceleration.Magnitude
37. Stdev.of.Gravity.Acceleration.Magnitude
38. Stdev.of.Body.Acceleration.Jerk.Magnitude
39. Stdev.of.Body.Angular.Velocity.Magnitude
40. Stdev.of.Body.Angular.Velocity.Jerk.Magnitude


The features given below been measured in **3 dimensional Orthogonal axes**, are **Mean value** and of **Frequency domain**:

41. Mean.of.FFT.of.Body.Acceleration.along.X.axis
42. Mean.of.FFT.of.Body.Acceleration.along.Y.axis
43. Mean.of.FFT.of.Body.Acceleration.along.Z.axis
44. Mean.of.FFT.of.Body.Acceleration.Jerk.along.X.axis
45. Mean.of.FFT.of.Body.Acceleration.Jerk.along.Y.axis
46. Mean.of.FFT.of.Body.Acceleration.Jerk.along.Z.axis
47. Mean.of.FFT.of.Body.Angular.Velocity.along.X.axis
48. Mean.of.FFT.of.Body.Angular.Velocity.along.Y.axis
49. Mean.of.FFT.of.Body.Angular.Velocity.along.Z.axis


The features given below been measured in **Magnitude**, are **Mean value** and of **Frequency domain**:

50. Mean.of.FFT.of.Body.Acceleration.Magnitude
51. Mean.of.FFT.of.Body.Acceleration.Jerk.Magnitude
52. Mean.of.FFT.of.Body.Angular.Velocity.Magnitude
53. Mean.of.FFT.of.Body.Angular.Velocity.Jerk.Magnitude


The features given below been measured in **3 dimensional Orthogonal axes**, are **Std. Dev.** and of **Frequency domain**:

54. Stdev.of.FFT.of.Body.Acceleration.along.X.axis
55. Stdev.of.FFT.of.Body.Acceleration.along.Y.axis
56. Stdev.of.FFT.of.Body.Acceleration.along.Z.axis
57. Stdev.of.FFT.of.Body.Acceleration.Jerk.along.X.axis
58. Stdev.of.FFT.of.Body.Acceleration.Jerk.along.Y.axis
59. Stdev.of.FFT.of.Body.Acceleration.Jerk.along.Z.axis
60. Stdev.of.FFT.of.Body.Angular.Velocity.along.X.axis
61. Stdev.of.FFT.of.Body.Angular.Velocity.along.Y.axis
62. Stdev.of.FFT.of.Body.Angular.Velocity.along.Z.axis


The features given below been measured in **Magnitude**, are **Std. Dev.** and of **Frequency domain**:

63. Stdev.of.FFT.of.Body.Acceleration.Magnitude
64. Stdev.of.FFT.of.Body.Acceleration.Jerk.Magnitude
65. Stdev.of.FFT.of.Body.Angular.Velocity.Magnitude
66. Stdev.of.FFT.of.Body.Angular.Velocity.Jerk.Magnitude



### Variable: avgValue

In the **tidy dataset extract** variable **avgValue** is the average value of a particular Measurement for each Subject performing each Activity being measured. The datatype is **Double**. The dataset has been normalized and bounded within [-1,1].
