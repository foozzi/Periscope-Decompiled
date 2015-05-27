.class final Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;
.super Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/spongycastle/crypto/engines/ThreefishEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Threefish1024Cipher"
.end annotation


# direct methods
.method public constructor <init>([J[J)V
    .locals 0

    .line 1017
    invoke-direct {p0, p1, p2}, Lorg/spongycastle/crypto/engines/ThreefishEngine$ThreefishCipher;-><init>([J[J)V

    .line 1018
    return-void
.end method


# virtual methods
.method ˋ([J[J)V
    .locals 44

    .line 1022
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->aMi:[J

    .line 1023
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->aMh:[J

    .line 1024
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jN()[I

    move-result-object v7

    .line 1025
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jL()[I

    move-result-object v8

    .line 1028
    array-length v0, v5

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    .line 1030
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1032
    :cond_0
    array-length v0, v6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1034
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1040
    :cond_1
    const/4 v0, 0x0

    aget-wide v9, p1, v0

    .line 1041
    const/4 v0, 0x1

    aget-wide v11, p1, v0

    .line 1042
    const/4 v0, 0x2

    aget-wide v13, p1, v0

    .line 1043
    const/4 v0, 0x3

    aget-wide v15, p1, v0

    .line 1044
    const/4 v0, 0x4

    aget-wide v17, p1, v0

    .line 1045
    const/4 v0, 0x5

    aget-wide v19, p1, v0

    .line 1046
    const/4 v0, 0x6

    aget-wide v21, p1, v0

    .line 1047
    const/4 v0, 0x7

    aget-wide v23, p1, v0

    .line 1048
    const/16 v0, 0x8

    aget-wide v25, p1, v0

    .line 1049
    const/16 v0, 0x9

    aget-wide v27, p1, v0

    .line 1050
    const/16 v0, 0xa

    aget-wide v29, p1, v0

    .line 1051
    const/16 v0, 0xb

    aget-wide v31, p1, v0

    .line 1052
    const/16 v0, 0xc

    aget-wide v33, p1, v0

    .line 1053
    const/16 v0, 0xd

    aget-wide v35, p1, v0

    .line 1054
    const/16 v0, 0xe

    aget-wide v37, p1, v0

    .line 1055
    const/16 v0, 0xf

    aget-wide v39, p1, v0

    .line 1060
    const/4 v0, 0x0

    aget-wide v0, v5, v0

    add-long/2addr v9, v0

    .line 1061
    const/4 v0, 0x1

    aget-wide v0, v5, v0

    add-long/2addr v11, v0

    .line 1062
    const/4 v0, 0x2

    aget-wide v0, v5, v0

    add-long/2addr v13, v0

    .line 1063
    const/4 v0, 0x3

    aget-wide v0, v5, v0

    add-long/2addr v15, v0

    .line 1064
    const/4 v0, 0x4

    aget-wide v0, v5, v0

    add-long v17, v17, v0

    .line 1065
    const/4 v0, 0x5

    aget-wide v0, v5, v0

    add-long v19, v19, v0

    .line 1066
    const/4 v0, 0x6

    aget-wide v0, v5, v0

    add-long v21, v21, v0

    .line 1067
    const/4 v0, 0x7

    aget-wide v0, v5, v0

    add-long v23, v23, v0

    .line 1068
    const/16 v0, 0x8

    aget-wide v0, v5, v0

    add-long v25, v25, v0

    .line 1069
    const/16 v0, 0x9

    aget-wide v0, v5, v0

    add-long v27, v27, v0

    .line 1070
    const/16 v0, 0xa

    aget-wide v0, v5, v0

    add-long v29, v29, v0

    .line 1071
    const/16 v0, 0xb

    aget-wide v0, v5, v0

    add-long v31, v31, v0

    .line 1072
    const/16 v0, 0xc

    aget-wide v0, v5, v0

    add-long v33, v33, v0

    .line 1073
    const/16 v0, 0xd

    aget-wide v0, v5, v0

    const/4 v2, 0x0

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v35, v35, v0

    .line 1074
    const/16 v0, 0xe

    aget-wide v0, v5, v0

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v37, v37, v0

    .line 1075
    const/16 v0, 0xf

    aget-wide v0, v5, v0

    add-long v39, v39, v0

    .line 1088
    const/16 v41, 0x1

    :goto_0
    move/from16 v0, v41

    const/16 v1, 0x14

    if-ge v0, v1, :cond_2

    .line 1090
    aget v42, v7, v41

    .line 1091
    aget v43, v8, v41

    .line 1099
    add-long v0, v9, v11

    move-wide v9, v0

    const/16 v2, 0x18

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 1100
    add-long v0, v13, v15

    move-wide v13, v0

    move-wide v2, v15

    const/16 v4, 0xd

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 1101
    add-long v0, v17, v19

    move-wide/from16 v17, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x8

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 1102
    add-long v0, v21, v23

    move-wide/from16 v21, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x2f

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 1103
    add-long v0, v25, v27

    move-wide/from16 v25, v0

    move-wide/from16 v2, v27

    const/16 v4, 0x8

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v27

    .line 1104
    add-long v0, v29, v31

    move-wide/from16 v29, v0

    move-wide/from16 v2, v31

    const/16 v4, 0x11

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v31

    .line 1105
    add-long v0, v33, v35

    move-wide/from16 v33, v0

    move-wide/from16 v2, v35

    const/16 v4, 0x16

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v35

    .line 1106
    add-long v0, v37, v39

    move-wide/from16 v37, v0

    move-wide/from16 v2, v39

    const/16 v4, 0x25

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v39

    .line 1108
    add-long v0, v9, v27

    move-wide v9, v0

    move-wide/from16 v2, v27

    const/16 v4, 0x26

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v27

    .line 1109
    add-long v0, v13, v35

    move-wide v13, v0

    move-wide/from16 v2, v35

    const/16 v4, 0x13

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v35

    .line 1110
    add-long v0, v21, v31

    move-wide/from16 v21, v0

    move-wide/from16 v2, v31

    const/16 v4, 0xa

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v31

    .line 1111
    add-long v0, v17, v39

    move-wide/from16 v17, v0

    move-wide/from16 v2, v39

    const/16 v4, 0x37

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v39

    .line 1112
    add-long v0, v29, v23

    move-wide/from16 v29, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x31

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 1113
    add-long v0, v33, v15

    move-wide/from16 v33, v0

    move-wide v2, v15

    const/16 v4, 0x12

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 1114
    add-long v0, v37, v19

    move-wide/from16 v37, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x17

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 1115
    add-long v0, v25, v11

    move-wide/from16 v25, v0

    const/16 v2, 0x34

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 1117
    add-long v0, v9, v23

    move-wide v9, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x21

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 1118
    add-long v0, v13, v19

    move-wide v13, v0

    move-wide/from16 v2, v19

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 1119
    add-long v0, v17, v15

    move-wide/from16 v17, v0

    move-wide v2, v15

    const/16 v4, 0x33

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 1120
    add-long v0, v21, v11

    move-wide/from16 v21, v0

    const/16 v2, 0xd

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 1121
    add-long v0, v33, v39

    move-wide/from16 v33, v0

    move-wide/from16 v2, v39

    const/16 v4, 0x22

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v39

    .line 1122
    add-long v0, v37, v35

    move-wide/from16 v37, v0

    move-wide/from16 v2, v35

    const/16 v4, 0x29

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v35

    .line 1123
    add-long v0, v25, v31

    move-wide/from16 v25, v0

    move-wide/from16 v2, v31

    const/16 v4, 0x3b

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v31

    .line 1124
    add-long v0, v29, v27

    move-wide/from16 v29, v0

    move-wide/from16 v2, v27

    const/16 v4, 0x11

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v27

    .line 1126
    add-long v0, v9, v39

    move-wide v9, v0

    move-wide/from16 v2, v39

    const/4 v4, 0x5

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v39

    .line 1127
    add-long v0, v13, v31

    move-wide v13, v0

    move-wide/from16 v2, v31

    const/16 v4, 0x14

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v31

    .line 1128
    add-long v0, v21, v35

    move-wide/from16 v21, v0

    move-wide/from16 v2, v35

    const/16 v4, 0x30

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v35

    .line 1129
    add-long v0, v17, v27

    move-wide/from16 v17, v0

    move-wide/from16 v2, v27

    const/16 v4, 0x29

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v27

    .line 1130
    add-long v0, v37, v11

    move-wide/from16 v37, v0

    const/16 v2, 0x2f

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 1131
    add-long v0, v25, v19

    move-wide/from16 v25, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x1c

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 1132
    add-long v0, v29, v15

    move-wide/from16 v29, v0

    move-wide v2, v15

    const/16 v4, 0x10

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 1133
    add-long v0, v33, v23

    move-wide/from16 v33, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x19

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 1138
    aget-wide v0, v5, v42

    add-long/2addr v9, v0

    .line 1139
    add-int/lit8 v0, v42, 0x1

    aget-wide v0, v5, v0

    add-long/2addr v11, v0

    .line 1140
    add-int/lit8 v0, v42, 0x2

    aget-wide v0, v5, v0

    add-long/2addr v13, v0

    .line 1141
    add-int/lit8 v0, v42, 0x3

    aget-wide v0, v5, v0

    add-long/2addr v15, v0

    .line 1142
    add-int/lit8 v0, v42, 0x4

    aget-wide v0, v5, v0

    add-long v17, v17, v0

    .line 1143
    add-int/lit8 v0, v42, 0x5

    aget-wide v0, v5, v0

    add-long v19, v19, v0

    .line 1144
    add-int/lit8 v0, v42, 0x6

    aget-wide v0, v5, v0

    add-long v21, v21, v0

    .line 1145
    add-int/lit8 v0, v42, 0x7

    aget-wide v0, v5, v0

    add-long v23, v23, v0

    .line 1146
    add-int/lit8 v0, v42, 0x8

    aget-wide v0, v5, v0

    add-long v25, v25, v0

    .line 1147
    add-int/lit8 v0, v42, 0x9

    aget-wide v0, v5, v0

    add-long v27, v27, v0

    .line 1148
    add-int/lit8 v0, v42, 0xa

    aget-wide v0, v5, v0

    add-long v29, v29, v0

    .line 1149
    add-int/lit8 v0, v42, 0xb

    aget-wide v0, v5, v0

    add-long v31, v31, v0

    .line 1150
    add-int/lit8 v0, v42, 0xc

    aget-wide v0, v5, v0

    add-long v33, v33, v0

    .line 1151
    add-int/lit8 v0, v42, 0xd

    aget-wide v0, v5, v0

    aget-wide v2, v6, v43

    add-long/2addr v0, v2

    add-long v35, v35, v0

    .line 1152
    add-int/lit8 v0, v42, 0xe

    aget-wide v0, v5, v0

    add-int/lit8 v2, v43, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v37, v37, v0

    .line 1153
    add-int/lit8 v0, v42, 0xf

    aget-wide v0, v5, v0

    move/from16 v2, v41

    int-to-long v2, v2

    add-long/2addr v0, v2

    add-long v39, v39, v0

    .line 1158
    add-long v0, v9, v11

    move-wide v9, v0

    const/16 v2, 0x29

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 1159
    add-long v0, v13, v15

    move-wide v13, v0

    move-wide v2, v15

    const/16 v4, 0x9

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 1160
    add-long v0, v17, v19

    move-wide/from16 v17, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x25

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 1161
    add-long v0, v21, v23

    move-wide/from16 v21, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x1f

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 1162
    add-long v0, v25, v27

    move-wide/from16 v25, v0

    move-wide/from16 v2, v27

    const/16 v4, 0xc

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v27

    .line 1163
    add-long v0, v29, v31

    move-wide/from16 v29, v0

    move-wide/from16 v2, v31

    const/16 v4, 0x2f

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v31

    .line 1164
    add-long v0, v33, v35

    move-wide/from16 v33, v0

    move-wide/from16 v2, v35

    const/16 v4, 0x2c

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v35

    .line 1165
    add-long v0, v37, v39

    move-wide/from16 v37, v0

    move-wide/from16 v2, v39

    const/16 v4, 0x1e

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v39

    .line 1167
    add-long v0, v9, v27

    move-wide v9, v0

    move-wide/from16 v2, v27

    const/16 v4, 0x10

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v27

    .line 1168
    add-long v0, v13, v35

    move-wide v13, v0

    move-wide/from16 v2, v35

    const/16 v4, 0x22

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v35

    .line 1169
    add-long v0, v21, v31

    move-wide/from16 v21, v0

    move-wide/from16 v2, v31

    const/16 v4, 0x38

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v31

    .line 1170
    add-long v0, v17, v39

    move-wide/from16 v17, v0

    move-wide/from16 v2, v39

    const/16 v4, 0x33

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v39

    .line 1171
    add-long v0, v29, v23

    move-wide/from16 v29, v0

    move-wide/from16 v2, v23

    const/4 v4, 0x4

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 1172
    add-long v0, v33, v15

    move-wide/from16 v33, v0

    move-wide v2, v15

    const/16 v4, 0x35

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 1173
    add-long v0, v37, v19

    move-wide/from16 v37, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 1174
    add-long v0, v25, v11

    move-wide/from16 v25, v0

    const/16 v2, 0x29

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 1176
    add-long v0, v9, v23

    move-wide v9, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x1f

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 1177
    add-long v0, v13, v19

    move-wide v13, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x2c

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 1178
    add-long v0, v17, v15

    move-wide/from16 v17, v0

    move-wide v2, v15

    const/16 v4, 0x2f

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 1179
    add-long v0, v21, v11

    move-wide/from16 v21, v0

    const/16 v2, 0x2e

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 1180
    add-long v0, v33, v39

    move-wide/from16 v33, v0

    move-wide/from16 v2, v39

    const/16 v4, 0x13

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v39

    .line 1181
    add-long v0, v37, v35

    move-wide/from16 v37, v0

    move-wide/from16 v2, v35

    const/16 v4, 0x2a

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v35

    .line 1182
    add-long v0, v25, v31

    move-wide/from16 v25, v0

    move-wide/from16 v2, v31

    const/16 v4, 0x2c

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v31

    .line 1183
    add-long v0, v29, v27

    move-wide/from16 v29, v0

    move-wide/from16 v2, v27

    const/16 v4, 0x19

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v27

    .line 1185
    add-long v0, v9, v39

    move-wide v9, v0

    move-wide/from16 v2, v39

    const/16 v4, 0x9

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v39

    .line 1186
    add-long v0, v13, v31

    move-wide v13, v0

    move-wide/from16 v2, v31

    const/16 v4, 0x30

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v31

    .line 1187
    add-long v0, v21, v35

    move-wide/from16 v21, v0

    move-wide/from16 v2, v35

    const/16 v4, 0x23

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v35

    .line 1188
    add-long v0, v17, v27

    move-wide/from16 v17, v0

    move-wide/from16 v2, v27

    const/16 v4, 0x34

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v27

    .line 1189
    add-long v0, v37, v11

    move-wide/from16 v37, v0

    const/16 v2, 0x17

    invoke-static {v11, v12, v2, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v11

    .line 1190
    add-long v0, v25, v19

    move-wide/from16 v25, v0

    move-wide/from16 v2, v19

    const/16 v4, 0x1f

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v19

    .line 1191
    add-long v0, v29, v15

    move-wide/from16 v29, v0

    move-wide v2, v15

    const/16 v4, 0x25

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v15

    .line 1192
    add-long v0, v33, v23

    move-wide/from16 v33, v0

    move-wide/from16 v2, v23

    const/16 v4, 0x14

    invoke-static {v2, v3, v4, v0, v1}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˊ(JIJ)J

    move-result-wide v23

    .line 1197
    add-int/lit8 v0, v42, 0x1

    aget-wide v0, v5, v0

    add-long/2addr v9, v0

    .line 1198
    add-int/lit8 v0, v42, 0x2

    aget-wide v0, v5, v0

    add-long/2addr v11, v0

    .line 1199
    add-int/lit8 v0, v42, 0x3

    aget-wide v0, v5, v0

    add-long/2addr v13, v0

    .line 1200
    add-int/lit8 v0, v42, 0x4

    aget-wide v0, v5, v0

    add-long/2addr v15, v0

    .line 1201
    add-int/lit8 v0, v42, 0x5

    aget-wide v0, v5, v0

    add-long v17, v17, v0

    .line 1202
    add-int/lit8 v0, v42, 0x6

    aget-wide v0, v5, v0

    add-long v19, v19, v0

    .line 1203
    add-int/lit8 v0, v42, 0x7

    aget-wide v0, v5, v0

    add-long v21, v21, v0

    .line 1204
    add-int/lit8 v0, v42, 0x8

    aget-wide v0, v5, v0

    add-long v23, v23, v0

    .line 1205
    add-int/lit8 v0, v42, 0x9

    aget-wide v0, v5, v0

    add-long v25, v25, v0

    .line 1206
    add-int/lit8 v0, v42, 0xa

    aget-wide v0, v5, v0

    add-long v27, v27, v0

    .line 1207
    add-int/lit8 v0, v42, 0xb

    aget-wide v0, v5, v0

    add-long v29, v29, v0

    .line 1208
    add-int/lit8 v0, v42, 0xc

    aget-wide v0, v5, v0

    add-long v31, v31, v0

    .line 1209
    add-int/lit8 v0, v42, 0xd

    aget-wide v0, v5, v0

    add-long v33, v33, v0

    .line 1210
    add-int/lit8 v0, v42, 0xe

    aget-wide v0, v5, v0

    add-int/lit8 v2, v43, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v35, v35, v0

    .line 1211
    add-int/lit8 v0, v42, 0xf

    aget-wide v0, v5, v0

    add-int/lit8 v2, v43, 0x2

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    add-long v37, v37, v0

    .line 1212
    add-int/lit8 v0, v42, 0x10

    aget-wide v0, v5, v0

    move/from16 v2, v41

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    add-long v39, v39, v0

    .line 1088
    add-int/lit8 v41, v41, 0x2

    goto/16 :goto_0

    .line 1219
    :cond_2
    const/4 v0, 0x0

    aput-wide v9, p2, v0

    .line 1220
    const/4 v0, 0x1

    aput-wide v11, p2, v0

    .line 1221
    const/4 v0, 0x2

    aput-wide v13, p2, v0

    .line 1222
    const/4 v0, 0x3

    aput-wide v15, p2, v0

    .line 1223
    const/4 v0, 0x4

    aput-wide v17, p2, v0

    .line 1224
    const/4 v0, 0x5

    aput-wide v19, p2, v0

    .line 1225
    const/4 v0, 0x6

    aput-wide v21, p2, v0

    .line 1226
    const/4 v0, 0x7

    aput-wide v23, p2, v0

    .line 1227
    const/16 v0, 0x8

    aput-wide v25, p2, v0

    .line 1228
    const/16 v0, 0x9

    aput-wide v27, p2, v0

    .line 1229
    const/16 v0, 0xa

    aput-wide v29, p2, v0

    .line 1230
    const/16 v0, 0xb

    aput-wide v31, p2, v0

    .line 1231
    const/16 v0, 0xc

    aput-wide v33, p2, v0

    .line 1232
    const/16 v0, 0xd

    aput-wide v35, p2, v0

    .line 1233
    const/16 v0, 0xe

    aput-wide v37, p2, v0

    .line 1234
    const/16 v0, 0xf

    aput-wide v39, p2, v0

    .line 1235
    return-void
.end method

.method ˎ([J[J)V
    .locals 44

    .line 1239
    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->aMi:[J

    .line 1240
    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/spongycastle/crypto/engines/ThreefishEngine$Threefish1024Cipher;->aMh:[J

    .line 1241
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jN()[I

    move-result-object v7

    .line 1242
    invoke-static {}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->jL()[I

    move-result-object v8

    .line 1245
    array-length v0, v5

    const/16 v1, 0x21

    if-eq v0, v1, :cond_0

    .line 1247
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1249
    :cond_0
    array-length v0, v6

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    .line 1251
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 1254
    :cond_1
    const/4 v0, 0x0

    aget-wide v9, p1, v0

    .line 1255
    const/4 v0, 0x1

    aget-wide v11, p1, v0

    .line 1256
    const/4 v0, 0x2

    aget-wide v13, p1, v0

    .line 1257
    const/4 v0, 0x3

    aget-wide v15, p1, v0

    .line 1258
    const/4 v0, 0x4

    aget-wide v17, p1, v0

    .line 1259
    const/4 v0, 0x5

    aget-wide v19, p1, v0

    .line 1260
    const/4 v0, 0x6

    aget-wide v21, p1, v0

    .line 1261
    const/4 v0, 0x7

    aget-wide v23, p1, v0

    .line 1262
    const/16 v0, 0x8

    aget-wide v25, p1, v0

    .line 1263
    const/16 v0, 0x9

    aget-wide v27, p1, v0

    .line 1264
    const/16 v0, 0xa

    aget-wide v29, p1, v0

    .line 1265
    const/16 v0, 0xb

    aget-wide v31, p1, v0

    .line 1266
    const/16 v0, 0xc

    aget-wide v33, p1, v0

    .line 1267
    const/16 v0, 0xd

    aget-wide v35, p1, v0

    .line 1268
    const/16 v0, 0xe

    aget-wide v37, p1, v0

    .line 1269
    const/16 v0, 0xf

    aget-wide v39, p1, v0

    .line 1271
    const/16 v41, 0x13

    :goto_0
    move/from16 v0, v41

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    .line 1273
    aget v42, v7, v41

    .line 1274
    aget v43, v8, v41

    .line 1277
    add-int/lit8 v0, v42, 0x1

    aget-wide v0, v5, v0

    sub-long/2addr v9, v0

    .line 1278
    add-int/lit8 v0, v42, 0x2

    aget-wide v0, v5, v0

    sub-long/2addr v11, v0

    .line 1279
    add-int/lit8 v0, v42, 0x3

    aget-wide v0, v5, v0

    sub-long/2addr v13, v0

    .line 1280
    add-int/lit8 v0, v42, 0x4

    aget-wide v0, v5, v0

    sub-long/2addr v15, v0

    .line 1281
    add-int/lit8 v0, v42, 0x5

    aget-wide v0, v5, v0

    sub-long v17, v17, v0

    .line 1282
    add-int/lit8 v0, v42, 0x6

    aget-wide v0, v5, v0

    sub-long v19, v19, v0

    .line 1283
    add-int/lit8 v0, v42, 0x7

    aget-wide v0, v5, v0

    sub-long v21, v21, v0

    .line 1284
    add-int/lit8 v0, v42, 0x8

    aget-wide v0, v5, v0

    sub-long v23, v23, v0

    .line 1285
    add-int/lit8 v0, v42, 0x9

    aget-wide v0, v5, v0

    sub-long v25, v25, v0

    .line 1286
    add-int/lit8 v0, v42, 0xa

    aget-wide v0, v5, v0

    sub-long v27, v27, v0

    .line 1287
    add-int/lit8 v0, v42, 0xb

    aget-wide v0, v5, v0

    sub-long v29, v29, v0

    .line 1288
    add-int/lit8 v0, v42, 0xc

    aget-wide v0, v5, v0

    sub-long v31, v31, v0

    .line 1289
    add-int/lit8 v0, v42, 0xd

    aget-wide v0, v5, v0

    sub-long v33, v33, v0

    .line 1290
    add-int/lit8 v0, v42, 0xe

    aget-wide v0, v5, v0

    add-int/lit8 v2, v43, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v35, v35, v0

    .line 1291
    add-int/lit8 v0, v42, 0xf

    aget-wide v0, v5, v0

    add-int/lit8 v2, v43, 0x2

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v37, v37, v0

    .line 1292
    add-int/lit8 v0, v42, 0x10

    aget-wide v0, v5, v0

    move/from16 v2, v41

    int-to-long v2, v2

    add-long/2addr v0, v2

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    sub-long v39, v39, v0

    .line 1295
    move-wide/from16 v0, v39

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v39

    .line 1296
    sub-long v9, v9, v39

    .line 1297
    move-wide/from16 v0, v31

    const/16 v2, 0x30

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v31

    .line 1298
    sub-long v13, v13, v31

    .line 1299
    move-wide/from16 v0, v35

    const/16 v2, 0x23

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v35

    .line 1300
    sub-long v21, v21, v35

    .line 1301
    move-wide/from16 v0, v27

    const/16 v2, 0x34

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v27

    .line 1302
    sub-long v17, v17, v27

    .line 1303
    const/16 v0, 0x17

    move-wide/from16 v1, v37

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 1304
    sub-long v37, v37, v11

    .line 1305
    move-wide/from16 v0, v19

    const/16 v2, 0x1f

    move-wide/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 1306
    sub-long v25, v25, v19

    .line 1307
    move-wide v0, v15

    const/16 v2, 0x25

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 1308
    sub-long v29, v29, v15

    .line 1309
    move-wide/from16 v0, v23

    const/16 v2, 0x14

    move-wide/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 1310
    sub-long v33, v33, v23

    .line 1312
    move-wide/from16 v0, v23

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 1313
    sub-long v9, v9, v23

    .line 1314
    move-wide/from16 v0, v19

    const/16 v2, 0x2c

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 1315
    sub-long v13, v13, v19

    .line 1316
    move-wide v0, v15

    const/16 v2, 0x2f

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 1317
    sub-long v17, v17, v15

    .line 1318
    const/16 v0, 0x2e

    move-wide/from16 v1, v21

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 1319
    sub-long v21, v21, v11

    .line 1320
    move-wide/from16 v0, v39

    const/16 v2, 0x13

    move-wide/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v39

    .line 1321
    sub-long v33, v33, v39

    .line 1322
    move-wide/from16 v0, v35

    const/16 v2, 0x2a

    move-wide/from16 v3, v37

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v35

    .line 1323
    sub-long v37, v37, v35

    .line 1324
    move-wide/from16 v0, v31

    const/16 v2, 0x2c

    move-wide/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v31

    .line 1325
    sub-long v25, v25, v31

    .line 1326
    move-wide/from16 v0, v27

    const/16 v2, 0x19

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v27

    .line 1327
    sub-long v29, v29, v27

    .line 1329
    move-wide/from16 v0, v27

    const/16 v2, 0x10

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v27

    .line 1330
    sub-long v9, v9, v27

    .line 1331
    move-wide/from16 v0, v35

    const/16 v2, 0x22

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v35

    .line 1332
    sub-long v13, v13, v35

    .line 1333
    move-wide/from16 v0, v31

    const/16 v2, 0x38

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v31

    .line 1334
    sub-long v21, v21, v31

    .line 1335
    move-wide/from16 v0, v39

    const/16 v2, 0x33

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v39

    .line 1336
    sub-long v17, v17, v39

    .line 1337
    move-wide/from16 v0, v23

    const/4 v2, 0x4

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 1338
    sub-long v29, v29, v23

    .line 1339
    move-wide v0, v15

    const/16 v2, 0x35

    move-wide/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 1340
    sub-long v33, v33, v15

    .line 1341
    move-wide/from16 v0, v19

    const/16 v2, 0x2a

    move-wide/from16 v3, v37

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 1342
    sub-long v37, v37, v19

    .line 1343
    const/16 v0, 0x29

    move-wide/from16 v1, v25

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 1344
    sub-long v25, v25, v11

    .line 1346
    const/16 v0, 0x29

    invoke-static {v11, v12, v0, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 1347
    sub-long/2addr v9, v11

    .line 1348
    move-wide v0, v15

    const/16 v2, 0x9

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 1349
    sub-long/2addr v13, v15

    .line 1350
    move-wide/from16 v0, v19

    const/16 v2, 0x25

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 1351
    sub-long v17, v17, v19

    .line 1352
    move-wide/from16 v0, v23

    const/16 v2, 0x1f

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 1353
    sub-long v21, v21, v23

    .line 1354
    move-wide/from16 v0, v27

    const/16 v2, 0xc

    move-wide/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v27

    .line 1355
    sub-long v25, v25, v27

    .line 1356
    move-wide/from16 v0, v31

    const/16 v2, 0x2f

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v31

    .line 1357
    sub-long v29, v29, v31

    .line 1358
    move-wide/from16 v0, v35

    const/16 v2, 0x2c

    move-wide/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v35

    .line 1359
    sub-long v33, v33, v35

    .line 1360
    move-wide/from16 v0, v39

    const/16 v2, 0x1e

    move-wide/from16 v3, v37

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v39

    .line 1361
    sub-long v37, v37, v39

    .line 1364
    aget-wide v0, v5, v42

    sub-long/2addr v9, v0

    .line 1365
    add-int/lit8 v0, v42, 0x1

    aget-wide v0, v5, v0

    sub-long/2addr v11, v0

    .line 1366
    add-int/lit8 v0, v42, 0x2

    aget-wide v0, v5, v0

    sub-long/2addr v13, v0

    .line 1367
    add-int/lit8 v0, v42, 0x3

    aget-wide v0, v5, v0

    sub-long/2addr v15, v0

    .line 1368
    add-int/lit8 v0, v42, 0x4

    aget-wide v0, v5, v0

    sub-long v17, v17, v0

    .line 1369
    add-int/lit8 v0, v42, 0x5

    aget-wide v0, v5, v0

    sub-long v19, v19, v0

    .line 1370
    add-int/lit8 v0, v42, 0x6

    aget-wide v0, v5, v0

    sub-long v21, v21, v0

    .line 1371
    add-int/lit8 v0, v42, 0x7

    aget-wide v0, v5, v0

    sub-long v23, v23, v0

    .line 1372
    add-int/lit8 v0, v42, 0x8

    aget-wide v0, v5, v0

    sub-long v25, v25, v0

    .line 1373
    add-int/lit8 v0, v42, 0x9

    aget-wide v0, v5, v0

    sub-long v27, v27, v0

    .line 1374
    add-int/lit8 v0, v42, 0xa

    aget-wide v0, v5, v0

    sub-long v29, v29, v0

    .line 1375
    add-int/lit8 v0, v42, 0xb

    aget-wide v0, v5, v0

    sub-long v31, v31, v0

    .line 1376
    add-int/lit8 v0, v42, 0xc

    aget-wide v0, v5, v0

    sub-long v33, v33, v0

    .line 1377
    add-int/lit8 v0, v42, 0xd

    aget-wide v0, v5, v0

    aget-wide v2, v6, v43

    add-long/2addr v0, v2

    sub-long v35, v35, v0

    .line 1378
    add-int/lit8 v0, v42, 0xe

    aget-wide v0, v5, v0

    add-int/lit8 v2, v43, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v37, v37, v0

    .line 1379
    add-int/lit8 v0, v42, 0xf

    aget-wide v0, v5, v0

    move/from16 v2, v41

    int-to-long v2, v2

    add-long/2addr v0, v2

    sub-long v39, v39, v0

    .line 1382
    move-wide/from16 v0, v39

    const/4 v2, 0x5

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v39

    .line 1383
    sub-long v9, v9, v39

    .line 1384
    move-wide/from16 v0, v31

    const/16 v2, 0x14

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v31

    .line 1385
    sub-long v13, v13, v31

    .line 1386
    move-wide/from16 v0, v35

    const/16 v2, 0x30

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v35

    .line 1387
    sub-long v21, v21, v35

    .line 1388
    move-wide/from16 v0, v27

    const/16 v2, 0x29

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v27

    .line 1389
    sub-long v17, v17, v27

    .line 1390
    const/16 v0, 0x2f

    move-wide/from16 v1, v37

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 1391
    sub-long v37, v37, v11

    .line 1392
    move-wide/from16 v0, v19

    const/16 v2, 0x1c

    move-wide/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 1393
    sub-long v25, v25, v19

    .line 1394
    move-wide v0, v15

    const/16 v2, 0x10

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 1395
    sub-long v29, v29, v15

    .line 1396
    move-wide/from16 v0, v23

    const/16 v2, 0x19

    move-wide/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 1397
    sub-long v33, v33, v23

    .line 1399
    move-wide/from16 v0, v23

    const/16 v2, 0x21

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 1400
    sub-long v9, v9, v23

    .line 1401
    move-wide/from16 v0, v19

    const/4 v2, 0x4

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 1402
    sub-long v13, v13, v19

    .line 1403
    move-wide v0, v15

    const/16 v2, 0x33

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 1404
    sub-long v17, v17, v15

    .line 1405
    const/16 v0, 0xd

    move-wide/from16 v1, v21

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 1406
    sub-long v21, v21, v11

    .line 1407
    move-wide/from16 v0, v39

    const/16 v2, 0x22

    move-wide/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v39

    .line 1408
    sub-long v33, v33, v39

    .line 1409
    move-wide/from16 v0, v35

    const/16 v2, 0x29

    move-wide/from16 v3, v37

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v35

    .line 1410
    sub-long v37, v37, v35

    .line 1411
    move-wide/from16 v0, v31

    const/16 v2, 0x3b

    move-wide/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v31

    .line 1412
    sub-long v25, v25, v31

    .line 1413
    move-wide/from16 v0, v27

    const/16 v2, 0x11

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v27

    .line 1414
    sub-long v29, v29, v27

    .line 1416
    move-wide/from16 v0, v27

    const/16 v2, 0x26

    invoke-static {v0, v1, v2, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v27

    .line 1417
    sub-long v9, v9, v27

    .line 1418
    move-wide/from16 v0, v35

    const/16 v2, 0x13

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v35

    .line 1419
    sub-long v13, v13, v35

    .line 1420
    move-wide/from16 v0, v31

    const/16 v2, 0xa

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v31

    .line 1421
    sub-long v21, v21, v31

    .line 1422
    move-wide/from16 v0, v39

    const/16 v2, 0x37

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v39

    .line 1423
    sub-long v17, v17, v39

    .line 1424
    move-wide/from16 v0, v23

    const/16 v2, 0x31

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 1425
    sub-long v29, v29, v23

    .line 1426
    move-wide v0, v15

    const/16 v2, 0x12

    move-wide/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 1427
    sub-long v33, v33, v15

    .line 1428
    move-wide/from16 v0, v19

    const/16 v2, 0x17

    move-wide/from16 v3, v37

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 1429
    sub-long v37, v37, v19

    .line 1430
    const/16 v0, 0x34

    move-wide/from16 v1, v25

    invoke-static {v11, v12, v0, v1, v2}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 1431
    sub-long v25, v25, v11

    .line 1433
    const/16 v0, 0x18

    invoke-static {v11, v12, v0, v9, v10}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v11

    .line 1434
    sub-long/2addr v9, v11

    .line 1435
    move-wide v0, v15

    const/16 v2, 0xd

    invoke-static {v0, v1, v2, v13, v14}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v15

    .line 1436
    sub-long/2addr v13, v15

    .line 1437
    move-wide/from16 v0, v19

    const/16 v2, 0x8

    move-wide/from16 v3, v17

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v19

    .line 1438
    sub-long v17, v17, v19

    .line 1439
    move-wide/from16 v0, v23

    const/16 v2, 0x2f

    move-wide/from16 v3, v21

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v23

    .line 1440
    sub-long v21, v21, v23

    .line 1441
    move-wide/from16 v0, v27

    const/16 v2, 0x8

    move-wide/from16 v3, v25

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v27

    .line 1442
    sub-long v25, v25, v27

    .line 1443
    move-wide/from16 v0, v31

    const/16 v2, 0x11

    move-wide/from16 v3, v29

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v31

    .line 1444
    sub-long v29, v29, v31

    .line 1445
    move-wide/from16 v0, v35

    const/16 v2, 0x16

    move-wide/from16 v3, v33

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v35

    .line 1446
    sub-long v33, v33, v35

    .line 1447
    move-wide/from16 v0, v39

    const/16 v2, 0x25

    move-wide/from16 v3, v37

    invoke-static {v0, v1, v2, v3, v4}, Lorg/spongycastle/crypto/engines/ThreefishEngine;->ˋ(JIJ)J

    move-result-wide v39

    .line 1448
    sub-long v37, v37, v39

    .line 1271
    add-int/lit8 v41, v41, -0x2

    goto/16 :goto_0

    .line 1454
    :cond_2
    const/4 v0, 0x0

    aget-wide v0, v5, v0

    sub-long/2addr v9, v0

    .line 1455
    const/4 v0, 0x1

    aget-wide v0, v5, v0

    sub-long/2addr v11, v0

    .line 1456
    const/4 v0, 0x2

    aget-wide v0, v5, v0

    sub-long/2addr v13, v0

    .line 1457
    const/4 v0, 0x3

    aget-wide v0, v5, v0

    sub-long/2addr v15, v0

    .line 1458
    const/4 v0, 0x4

    aget-wide v0, v5, v0

    sub-long v17, v17, v0

    .line 1459
    const/4 v0, 0x5

    aget-wide v0, v5, v0

    sub-long v19, v19, v0

    .line 1460
    const/4 v0, 0x6

    aget-wide v0, v5, v0

    sub-long v21, v21, v0

    .line 1461
    const/4 v0, 0x7

    aget-wide v0, v5, v0

    sub-long v23, v23, v0

    .line 1462
    const/16 v0, 0x8

    aget-wide v0, v5, v0

    sub-long v25, v25, v0

    .line 1463
    const/16 v0, 0x9

    aget-wide v0, v5, v0

    sub-long v27, v27, v0

    .line 1464
    const/16 v0, 0xa

    aget-wide v0, v5, v0

    sub-long v29, v29, v0

    .line 1465
    const/16 v0, 0xb

    aget-wide v0, v5, v0

    sub-long v31, v31, v0

    .line 1466
    const/16 v0, 0xc

    aget-wide v0, v5, v0

    sub-long v33, v33, v0

    .line 1467
    const/16 v0, 0xd

    aget-wide v0, v5, v0

    const/4 v2, 0x0

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v35, v35, v0

    .line 1468
    const/16 v0, 0xe

    aget-wide v0, v5, v0

    const/4 v2, 0x1

    aget-wide v2, v6, v2

    add-long/2addr v0, v2

    sub-long v37, v37, v0

    .line 1469
    const/16 v0, 0xf

    aget-wide v0, v5, v0

    sub-long v39, v39, v0

    .line 1474
    const/4 v0, 0x0

    aput-wide v9, p2, v0

    .line 1475
    const/4 v0, 0x1

    aput-wide v11, p2, v0

    .line 1476
    const/4 v0, 0x2

    aput-wide v13, p2, v0

    .line 1477
    const/4 v0, 0x3

    aput-wide v15, p2, v0

    .line 1478
    const/4 v0, 0x4

    aput-wide v17, p2, v0

    .line 1479
    const/4 v0, 0x5

    aput-wide v19, p2, v0

    .line 1480
    const/4 v0, 0x6

    aput-wide v21, p2, v0

    .line 1481
    const/4 v0, 0x7

    aput-wide v23, p2, v0

    .line 1482
    const/16 v0, 0x8

    aput-wide v25, p2, v0

    .line 1483
    const/16 v0, 0x9

    aput-wide v27, p2, v0

    .line 1484
    const/16 v0, 0xa

    aput-wide v29, p2, v0

    .line 1485
    const/16 v0, 0xb

    aput-wide v31, p2, v0

    .line 1486
    const/16 v0, 0xc

    aput-wide v33, p2, v0

    .line 1487
    const/16 v0, 0xd

    aput-wide v35, p2, v0

    .line 1488
    const/16 v0, 0xe

    aput-wide v37, p2, v0

    .line 1489
    const/16 v0, 0xf

    aput-wide v39, p2, v0

    .line 1490
    return-void
.end method
