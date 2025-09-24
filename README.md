# METRONOME
Durations assume a **quarter-note tempo of 1.0** (i.e., 60 BPM). At this tempo:

- 1.0 = 1 second per quarter note  
- To adjust for other tempos, durations scale proportionally (e.g., at 120 BPM, quarter note = 0.5 seconds).

---

### Duration Reference Table (Quarter Note = 1.0)

| Time Sig | Note Type           | Beats per Note | Duration (in `\dur`) | SuperCollider Value |
|---------|---------------------|----------------|------------------------|---------------------|
| 4/4     | Whole note          | 4              | 4.0                    | `4`                 |
| 4/4     | Half note           | 2              | 2.0                    | `2`                 |
| 4/4     | Quarter note        | 1              | 1.0                    | `1`                 |
| 4/4     | Eighth note         | 1/2            | 0.5                    | `0.5` or `1/2`      |
| 4/4     | Sixteenth note      | 1/4            | 0.25                   | `0.25` or `1/4`     |
| 4/4     | Thirty-second note  | 1/8            | 0.125                  | `0.125` or `1/8`    |
|         |                     |                |                        |                     |
| 4/4     | **Eighth-note triplet** (3 per beat) | 2/3 | **0.666...**       | `2/3`               |
| 4/4     | Triplet quarter     | 2/3 × 2 = 4/3  | **1.333...**           | `4/3`               |
| 4/4     | Triplet eighth      | 1/3            | **0.333...**           | `1/3`               |
|         |                     |                |                        |                     |
| 3/4     | Quarter note        | 1              | 1.0                    | `1`                 |
| 3/4     | Eighth note         | 1/2            | 0.5                    | `0.5`               |
| 3/4     | Eighth triplet      | 1/3            | 0.333...               | `1/3`               |
|         |                     |                |                        |                     |
| 6/8     | Dotted quarter     | 3              | 3.0                    | `3`                 |
| 6/8     | **Eighth note**     | 1              | **1.0**                | `1`                 |
| 6/8     | Sixteenth note      | 1/2            | 0.5                    | `0.5`               |
| 6/8     | Sixteenth triplet   | 1/3            | 0.333...               | `1/3`               |
|         |                     |                |                        |                     |
| 9/8     | Quarter note        | 3              | 3.0                    | `3`                 |
| 9/8     | Eighth note         | 1              | 1.0                    | `1`                 |
|         |                     |                |                        |                     |
| 12/8    | Dotted quarter     | 3              | 3.0                    | `3`                 |
| 12/8    | Eighth note         | 1              | 1.0                    | `1`                 |

