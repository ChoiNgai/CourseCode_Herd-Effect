## 羊群效应检测

复现“基于聚类的羊群效应分析模型”，并将其中采用的kmeans算法改成用FCM

实验结果如下：

| 时间段     | 本方法             | 本方法               | K-means |
| ---------- | ------------------ | -------------------- | ------- |
|            | 出现羊群效应的程度 | 没出现羊群效应的程度 |         |
| 2020-11-02 | 0.500327           | 0.499673             | 1       |
| 2020-11-03 | 0.499502           | 0.500498             | 2       |
| 2020-11-04 | 0.500473           | 0.499527             | 1       |
| 2020-11-05 | 0.499488           | 0.500512             | 2       |
| 2020-11-6  | 0.500485           | 0.499515             | 1       |
| 2020-11-09 | 0.499533           | 0.500467             | 2       |
| 2020-11-10 | 0.500095           | 0.499905             | 1       |
| 2020-11-11 | 0.500202           | 0.499798             | 1       |
| 2020-11-12 | 0.5                | 0.5                  | 2       |
| 2020-11-13 | 0.500132           | 0.499868             | 1       |
| 2020-11-16 | 0.499686           | 0.500314             | 2       |
| 2020-11-17 | 0.500347           | 0.499653             | 1       |
| 2020-11-18 | 0.49992            | 0.50008              | 1       |
| 2020-11-19 | 0.500026           | 0.499974             | 1       |
| 2020-11-20 | 0.499894           | 0.500106             | 2       |
| 2020-11-23 | 0.50003            | 0.49997              | 1       |
| 2020-11-24 | 0.499561           | 0.500439             | 2       |
| 2020-11-25 | 0.500383           | 0.499617             | 1       |
| 2020-11-26 | 0.499967           | 0.500033             | 2       |