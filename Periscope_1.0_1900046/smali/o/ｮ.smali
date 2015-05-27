.class public Lo/ｮ;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/ｱ;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;Lo/\uff71<Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static ʻ(Lo/প;)I
    .locals 11

    .line 164
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v5

    .line 165
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v6

    .line 166
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v7

    .line 167
    const/16 v0, 0x49

    if-ne v5, v0, :cond_0

    const/16 v0, 0x44

    if-ne v6, v0, :cond_0

    const/16 v0, 0x33

    if-eq v7, v0, :cond_1

    .line 168
    :cond_0
    new-instance v0, Lo/ٵ;

    const-string v1, "Unexpected ID3 file identifier, expected \"ID3\", actual \"%c%c%c\"."

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lo/ٵ;-><init>(Ljava/lang/String;)V

    throw v0

    .line 171
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 173
    invoke-virtual {p0}, Lo/প;->readUnsignedByte()I

    move-result v8

    .line 174
    invoke-virtual {p0}, Lo/প;->к()I

    move-result v9

    .line 177
    and-int/lit8 v0, v8, 0x2

    if-eqz v0, :cond_3

    .line 178
    invoke-virtual {p0}, Lo/প;->к()I

    move-result v10

    .line 179
    const/4 v0, 0x4

    if-le v10, v0, :cond_2

    .line 180
    add-int/lit8 v0, v10, -0x4

    invoke-virtual {p0, v0}, Lo/প;->ʰ(I)V

    .line 182
    :cond_2
    sub-int/2addr v9, v10

    .line 186
    :cond_3
    and-int/lit8 v0, v8, 0x8

    if-eqz v0, :cond_4

    .line 187
    add-int/lit8 v9, v9, -0xa

    .line 190
    :cond_4
    return v9
.end method

.method private static ʼ([BII)I
    .locals 3

    .line 133
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lo/ｮ;->ˊ([BIB)I

    move-result v2

    .line 136
    if-eqz p2, :cond_0

    const/4 v0, 0x3

    if-ne p2, v0, :cond_1

    .line 137
    :cond_0
    return v2

    .line 141
    :cond_1
    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    if-ge v2, v0, :cond_3

    .line 142
    add-int/lit8 v0, v2, 0x1

    aget-byte v0, p0, v0

    if-nez v0, :cond_2

    .line 143
    return v2

    .line 145
    :cond_2
    add-int/lit8 v0, v2, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lo/ｮ;->ˊ([BIB)I

    move-result v2

    goto :goto_0

    .line 148
    :cond_3
    array-length v0, p0

    return v0
.end method

.method private static ˊ([BIB)I
    .locals 2

    .line 124
    move v1, p1

    :goto_0
    array-length v0, p0

    if-ge v1, v0, :cond_1

    .line 125
    aget-byte v0, p0, v1

    if-ne v0, p2, :cond_0

    .line 126
    return v1

    .line 124
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 129
    :cond_1
    array-length v0, p0

    return v0
.end method

.method private static ﺛ(I)I
    .locals 1

    .line 152
    if-eqz p0, :cond_0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method private static ﺩ(I)Ljava/lang/String;
    .locals 1

    .line 199
    packed-switch p0, :pswitch_data_0

    goto :goto_0

    .line 201
    :pswitch_0
    const-string v0, "ISO-8859-1"

    return-object v0

    .line 203
    :pswitch_1
    const-string v0, "UTF-16"

    return-object v0

    .line 205
    :pswitch_2
    const-string v0, "UTF-16BE"

    return-object v0

    .line 207
    :pswitch_3
    const-string v0, "UTF-8"

    return-object v0

    .line 209
    :goto_0
    const-string v0, "ISO-8859-1"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public ˎ([BI)Ljava/util/Map;
    .locals 27
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
        }
    .end annotation

    .line 45
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 46
    new-instance v7, Lo/প;

    move-object/from16 v0, p1

    move/from16 v1, p2

    invoke-direct {v7, v0, v1}, Lo/প;-><init>([BI)V

    .line 47
    invoke-static {v7}, Lo/ｮ;->ʻ(Lo/প;)I

    move-result v8

    .line 49
    :goto_0
    if-lez v8, :cond_4

    .line 50
    invoke-virtual {v7}, Lo/প;->readUnsignedByte()I

    move-result v9

    .line 51
    invoke-virtual {v7}, Lo/প;->readUnsignedByte()I

    move-result v10

    .line 52
    invoke-virtual {v7}, Lo/প;->readUnsignedByte()I

    move-result v11

    .line 53
    invoke-virtual {v7}, Lo/প;->readUnsignedByte()I

    move-result v12

    .line 54
    invoke-virtual {v7}, Lo/প;->к()I

    move-result v13

    .line 55
    const/4 v0, 0x1

    if-gt v13, v0, :cond_0

    .line 56
    goto/16 :goto_2

    .line 60
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lo/প;->ʰ(I)V

    .line 62
    const/16 v0, 0x54

    if-ne v9, v0, :cond_1

    const/16 v0, 0x58

    if-ne v10, v0, :cond_1

    const/16 v0, 0x58

    if-ne v11, v0, :cond_1

    const/16 v0, 0x58

    if-ne v12, v0, :cond_1

    .line 63
    invoke-virtual {v7}, Lo/প;->readUnsignedByte()I

    move-result v14

    .line 64
    invoke-static {v14}, Lo/ｮ;->ﺩ(I)Ljava/lang/String;

    move-result-object v15

    .line 65
    add-int/lit8 v0, v13, -0x1

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 66
    add-int/lit8 v0, v13, -0x1

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v0}, Lo/প;->ι([BII)V

    .line 68
    move-object/from16 v0, v16

    const/4 v1, 0x0

    invoke-static {v0, v1, v14}, Lo/ｮ;->ʼ([BII)I

    move-result v17

    .line 69
    new-instance v18, Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v16

    const/4 v2, 0x0

    move/from16 v3, v17

    invoke-direct {v0, v1, v2, v3, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 70
    invoke-static {v14}, Lo/ｮ;->ﺛ(I)I

    move-result v0

    add-int v19, v17, v0

    .line 71
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1, v14}, Lo/ｮ;->ʼ([BII)I

    move-result v20

    .line 72
    new-instance v21, Ljava/lang/String;

    sub-int v0, v20, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v19

    invoke-direct {v1, v2, v3, v0, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 74
    const-string v0, "TXXX"

    new-instance v1, Lo/ﾜ;

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    invoke-direct {v1, v2, v3}, Lo/ﾜ;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    goto/16 :goto_1

    :cond_1
    const/16 v0, 0x50

    if-ne v9, v0, :cond_2

    const/16 v0, 0x52

    if-ne v10, v0, :cond_2

    const/16 v0, 0x49

    if-ne v11, v0, :cond_2

    const/16 v0, 0x56

    if-ne v12, v0, :cond_2

    .line 77
    new-array v14, v13, [B

    .line 78
    const/4 v0, 0x0

    invoke-virtual {v7, v14, v0, v13}, Lo/প;->ι([BII)V

    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {v14, v0, v1}, Lo/ｮ;->ˊ([BIB)I

    move-result v15

    .line 81
    new-instance v16, Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-direct {v1, v14, v2, v15, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 82
    sub-int v0, v13, v15

    add-int/lit8 v0, v0, -0x1

    new-array v1, v0, [B

    move-object/from16 v17, v1

    .line 83
    add-int/lit8 v0, v15, 0x1

    sub-int v1, v13, v15

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v2, v17

    const/4 v3, 0x0

    invoke-static {v14, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 84
    const-string v0, "PRIV"

    new-instance v1, Lo/ﾗ;

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    invoke-direct {v1, v2, v3}, Lo/ﾗ;-><init>(Ljava/lang/String;[B)V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    goto/16 :goto_1

    :cond_2
    const/16 v0, 0x47

    if-ne v9, v0, :cond_3

    const/16 v0, 0x45

    if-ne v10, v0, :cond_3

    const/16 v0, 0x4f

    if-ne v11, v0, :cond_3

    const/16 v0, 0x42

    if-ne v12, v0, :cond_3

    .line 87
    invoke-virtual {v7}, Lo/প;->readUnsignedByte()I

    move-result v14

    .line 88
    invoke-static {v14}, Lo/ｮ;->ﺩ(I)Ljava/lang/String;

    move-result-object v15

    .line 89
    add-int/lit8 v0, v13, -0x1

    new-array v1, v0, [B

    move-object/from16 v16, v1

    .line 90
    add-int/lit8 v0, v13, -0x1

    move-object/from16 v1, v16

    const/4 v2, 0x0

    invoke-virtual {v7, v1, v2, v0}, Lo/প;->ι([BII)V

    .line 92
    move-object/from16 v0, v16

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lo/ｮ;->ˊ([BIB)I

    move-result v17

    .line 93
    new-instance v18, Ljava/lang/String;

    const-string v0, "ISO-8859-1"

    move-object/from16 v1, v18

    move-object/from16 v2, v16

    const/4 v3, 0x0

    move/from16 v4, v17

    invoke-direct {v1, v2, v3, v4, v0}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 94
    add-int/lit8 v19, v17, 0x1

    .line 95
    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-static {v0, v1, v14}, Lo/ｮ;->ʼ([BII)I

    move-result v20

    .line 96
    new-instance v21, Ljava/lang/String;

    sub-int v0, v20, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v16

    move/from16 v3, v19

    invoke-direct {v1, v2, v3, v0, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 98
    invoke-static {v14}, Lo/ｮ;->ﺛ(I)I

    move-result v0

    add-int v22, v20, v0

    .line 99
    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-static {v0, v1, v14}, Lo/ｮ;->ʼ([BII)I

    move-result v23

    .line 100
    new-instance v24, Ljava/lang/String;

    sub-int v0, v23, v22

    move-object/from16 v1, v24

    move-object/from16 v2, v16

    move/from16 v3, v22

    invoke-direct {v1, v2, v3, v0, v15}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    .line 103
    add-int/lit8 v0, v13, -0x1

    sub-int v0, v0, v23

    invoke-static {v14}, Lo/ｮ;->ﺛ(I)I

    move-result v1

    sub-int v25, v0, v1

    .line 105
    move/from16 v0, v25

    new-array v0, v0, [B

    move-object/from16 v26, v0

    .line 106
    invoke-static {v14}, Lo/ｮ;->ﺛ(I)I

    move-result v0

    add-int v0, v0, v23

    move-object/from16 v1, v16

    move-object/from16 v2, v26

    const/4 v3, 0x0

    move/from16 v4, v25

    invoke-static {v1, v0, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    const-string v0, "GEOB"

    new-instance v1, Lo/ｫ;

    move-object/from16 v2, v18

    move-object/from16 v3, v21

    move-object/from16 v4, v24

    move-object/from16 v5, v26

    invoke-direct {v1, v2, v3, v4, v5}, Lo/ｫ;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V

    invoke-interface {v6, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    goto :goto_1

    .line 111
    :cond_3
    const-string v0, "%c%c%c%c"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    .line 112
    new-array v15, v13, [B

    .line 113
    const/4 v0, 0x0

    invoke-virtual {v7, v15, v0, v13}, Lo/প;->ι([BII)V

    .line 114
    invoke-interface {v6, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    :goto_1
    add-int/lit8 v0, v13, 0xa

    sub-int/2addr v8, v0

    .line 118
    goto/16 :goto_0

    .line 120
    :cond_4
    :goto_2
    invoke-static {v6}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public synthetic ˏ([BI)Ljava/lang/Object;
    .locals 1

    .line 30
    invoke-virtual {p0, p1, p2}, Lo/ｮ;->ˎ([BI)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public ᵢ(Ljava/lang/String;)Z
    .locals 1

    .line 39
    const-string v0, "application/id3"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
