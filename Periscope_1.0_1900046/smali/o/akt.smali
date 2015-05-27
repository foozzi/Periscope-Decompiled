.class public Lo/akt;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ʽ(J[BI)V
    .locals 2

    .line 136
    const/16 v0, 0x20

    shr-long v0, p0, v0

    invoke-static {v0, v1, p2, p3}, Lo/akw;->ͺ(J[BI)V

    .line 137
    add-int/lit8 v0, p3, 0x4

    invoke-static {p0, p1, p2, v0}, Lo/akw;->ͺ(J[BI)V

    .line 138
    return-void
.end method

.method private static ˊ([BILjava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BILjava/util/ArrayList<Ljava/lang/Object;>;)I"
        }
    .end annotation

    .line 192
    array-length v0, p0

    if-ne p1, v0, :cond_0

    .line 194
    return p1

    .line 197
    :cond_0
    move v0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte v2, p0, v0

    .line 198
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    .line 201
    :pswitch_0
    goto/16 :goto_2

    .line 204
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    goto/16 :goto_2

    .line 208
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    goto/16 :goto_2

    .line 213
    :pswitch_3
    array-length v0, p0

    if-ge p1, v0, :cond_4

    .line 215
    move v0, p1

    add-int/lit8 p1, p1, 0x1

    aget-byte v3, p0, v0

    .line 216
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    goto/16 :goto_2

    .line 223
    :pswitch_4
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_4

    .line 225
    invoke-static {p0, p1}, Lo/akt;->ᔈ([BI)I

    move-result v3

    .line 226
    add-int/lit8 p1, p1, 0x2

    .line 227
    array-length v0, p0

    sub-int/2addr v0, v3

    if-ge p1, v0, :cond_2

    .line 229
    new-instance v4, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, p1, v3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 230
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 231
    add-int/2addr p1, v3

    .line 233
    :cond_2
    goto :goto_2

    .line 239
    :pswitch_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x8

    if-gt p1, v0, :cond_4

    .line 241
    invoke-static {p0, p1}, Lo/akt;->ᔇ([BI)J

    move-result-wide v3

    .line 242
    add-int/lit8 p1, p1, 0x8

    .line 243
    invoke-static {v3, v4}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    .line 244
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    goto :goto_2

    .line 250
    :pswitch_6
    invoke-static {p0, p1, p2}, Lo/akt;->ˋ([BILjava/util/ArrayList;)I

    move-result p1

    .line 251
    goto :goto_2

    .line 255
    :pswitch_7
    add-int/lit8 p1, p1, 0x4

    .line 256
    invoke-static {p0, p1, p2}, Lo/akt;->ˋ([BILjava/util/ArrayList;)I

    move-result p1

    .line 257
    goto :goto_2

    .line 261
    :pswitch_8
    array-length v0, p0

    add-int/lit8 v0, v0, -0x4

    if-ge p1, v0, :cond_4

    .line 263
    invoke-static {p0, p1}, Lo/akt;->ᒽ([BI)J

    move-result-wide v0

    long-to-int v3, v0

    .line 264
    add-int/lit8 p1, p1, 0x4

    .line 265
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 266
    :goto_1
    move v0, v3

    add-int/lit8 v3, v3, -0x1

    if-lez v0, :cond_3

    .line 268
    invoke-static {p0, p1, v4}, Lo/akt;->ˊ([BILjava/util/ArrayList;)I

    move-result p1

    goto :goto_1

    .line 270
    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    .line 278
    :cond_4
    :goto_2
    :pswitch_9
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_9
        :pswitch_1
        :pswitch_2
        :pswitch_9
        :pswitch_7
        :pswitch_0
        :pswitch_8
    .end packed-switch
.end method

.method private static ˊ(Ljava/lang/Boolean;Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    .line 121
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 122
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 123
    return-void
.end method

.method private static ˊ(Ljava/lang/Double;Ljava/io/ByteArrayOutputStream;)V
    .locals 5

    .line 127
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    .line 128
    const/16 v0, 0x9

    new-array v4, v0, [B

    .line 129
    const/4 v0, 0x0

    const/4 v1, 0x0

    aput-byte v0, v4, v1

    .line 130
    const/4 v0, 0x1

    invoke-static {v2, v3, v4, v0}, Lo/akt;->ʽ(J[BI)V

    .line 131
    const/4 v0, 0x0

    const/16 v1, 0x9

    invoke-virtual {p1, v4, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 132
    return-void
.end method

.method private static ˊ(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    .locals 10

    .line 61
    if-nez p0, :cond_0

    .line 63
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto/16 :goto_3

    .line 65
    :cond_0
    instance-of v0, p0, Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 67
    move-object v0, p0

    check-cast v0, Ljava/lang/Boolean;

    move-object v2, v0

    .line 68
    invoke-static {v2, p1}, Lo/akt;->ˊ(Ljava/lang/Boolean;Ljava/io/ByteArrayOutputStream;)V

    .line 69
    goto/16 :goto_3

    .line 70
    :cond_1
    instance-of v0, p0, Ljava/lang/Double;

    if-nez v0, :cond_2

    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_4

    .line 72
    :cond_2
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 73
    instance-of v0, p0, Ljava/lang/Integer;

    if-eqz v0, :cond_3

    .line 75
    move-object v0, p0

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 76
    invoke-virtual {v3}, Ljava/lang/Integer;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 77
    goto :goto_0

    .line 80
    :cond_3
    move-object v0, p0

    check-cast v0, Ljava/lang/Double;

    move-object v2, v0

    .line 82
    :goto_0
    invoke-static {v2, p1}, Lo/akt;->ˊ(Ljava/lang/Double;Ljava/io/ByteArrayOutputStream;)V

    .line 83
    goto/16 :goto_3

    .line 84
    :cond_4
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 86
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 87
    invoke-static {v2, p1}, Lo/akt;->ˊ(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 88
    goto/16 :goto_3

    .line 89
    :cond_5
    instance-of v0, p0, Ljava/util/Map;

    if-eqz v0, :cond_7

    .line 91
    const/4 v2, 0x3

    .line 92
    invoke-virtual {p1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 94
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    move-object v3, v0

    .line 95
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    move-object v5, v0

    .line 97
    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v5, v0, p1}, Lo/akt;->ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V

    .line 98
    goto :goto_1

    .line 99
    :cond_6
    invoke-static {p1}, Lo/akt;->ˋ(Ljava/io/ByteArrayOutputStream;)V

    .line 100
    goto :goto_3

    .line 101
    :cond_7
    instance-of v0, p0, [Ljava/lang/Object;

    if-eqz v0, :cond_8

    .line 104
    const/4 v0, 0x5

    new-array v2, v0, [B

    .line 105
    const/16 v0, 0xa

    const/4 v1, 0x0

    aput-byte v0, v2, v1

    .line 106
    move-object v0, p0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    move-object v3, v0

    .line 109
    array-length v0, v3

    int-to-long v4, v0

    .line 110
    const/4 v0, 0x1

    invoke-static {v4, v5, v2, v0}, Lo/akw;->ͺ(J[BI)V

    .line 111
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-virtual {p1, v2, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 112
    move-object v6, v3

    array-length v7, v6

    const/4 v8, 0x0

    :goto_2
    if-ge v8, v7, :cond_8

    aget-object v9, v6, v8

    .line 114
    invoke-static {v9, p1}, Lo/akt;->ˊ(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V

    .line 112
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 117
    :cond_8
    :goto_3
    return-void
.end method

.method private static ˊ(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 1

    .line 166
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 167
    invoke-static {p0, p1}, Lo/akt;->ˋ(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 168
    return-void
.end method

.method private static ˊ(Ljava/lang/String;Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    .line 180
    invoke-static {p0, p2}, Lo/akt;->ˋ(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 181
    invoke-static {p1, p2}, Lo/akt;->ˊ(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V

    .line 182
    return-void
.end method

.method private static ˋ([BILjava/util/ArrayList;)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BILjava/util/ArrayList<Ljava/lang/Object;>;)I"
        }
    .end annotation

    .line 284
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 285
    :goto_0
    array-length v0, p0

    add-int/lit8 v0, v0, -0x2

    if-ge p1, v0, :cond_1

    .line 287
    invoke-static {p0, p1}, Lo/akt;->ᔈ([BI)I

    move-result v3

    .line 288
    add-int/lit8 p1, p1, 0x2

    .line 289
    array-length v0, p0

    sub-int/2addr v0, v3

    if-lt p1, v0, :cond_0

    .line 291
    goto :goto_1

    .line 293
    :cond_0
    new-instance v4, Ljava/lang/String;

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, p0, p1, v3, v0}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    .line 294
    add-int/2addr p1, v3

    .line 296
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-static {p0, p1, v5}, Lo/akt;->ˊ([BILjava/util/ArrayList;)I

    move-result p1

    .line 298
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 300
    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    goto :goto_0

    .line 307
    :cond_1
    :goto_1
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    return p1
.end method

.method private static ˋ(Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    .line 186
    const/4 v0, 0x3

    new-array v2, v0, [B

    fill-array-data v2, :array_0

    .line 187
    array-length v0, v2

    const/4 v1, 0x0

    invoke-virtual {p0, v2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 188
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x9t
    .end array-data
.end method

.method private static ˋ(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V
    .locals 3

    .line 172
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    .line 173
    array-length v0, v2

    shr-int/lit8 v0, v0, 0x8

    rem-int/lit16 v0, v0, 0x100

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 174
    array-length v0, v2

    rem-int/lit16 v0, v0, 0x100

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 175
    array-length v0, v2

    const/4 v1, 0x0

    invoke-virtual {p1, v2, v1, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 176
    return-void
.end method

.method public static ˋ([Ljava/lang/Object;)[B
    .locals 6

    .line 28
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 29
    move-object v2, p0

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget-object v5, v2, v4

    .line 31
    invoke-static {v5, v1}, Lo/akt;->ˊ(Ljava/lang/Object;Ljava/io/ByteArrayOutputStream;)V

    .line 29
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static ᐪ([BI)[Ljava/lang/Object;
    .locals 4

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 45
    const/4 v3, 0x0

    .line 46
    :goto_0
    if-ge v3, p1, :cond_1

    .line 48
    aget-byte v0, p0, v3

    const/16 v1, 0x9

    if-ne v0, v1, :cond_0

    .line 50
    goto :goto_1

    .line 53
    :cond_0
    invoke-static {p0, v3, v2}, Lo/akt;->ˊ([BILjava/util/ArrayList;)I

    move-result v3

    goto :goto_0

    .line 56
    :cond_1
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static ᒽ([BI)J
    .locals 9

    .line 142
    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    int-to-long v4, v0

    .line 143
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v6, v0, 0xff

    .line 144
    add-int/lit8 v0, p1, 0x2

    aget-byte v0, p0, v0

    and-int/lit16 v7, v0, 0xff

    .line 145
    add-int/lit8 v0, p1, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v8, v0, 0xff

    .line 146
    const/16 v0, 0x18

    shl-long v0, v4, v0

    const-wide/32 v2, -0x1000000

    and-long/2addr v0, v2

    shl-int/lit8 v2, v6, 0x10

    int-to-long v2, v2

    add-long/2addr v0, v2

    shl-int/lit8 v2, v7, 0x8

    int-to-long v2, v2

    add-long/2addr v0, v2

    int-to-long v2, v8

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static ᓪ([B)[Ljava/lang/Object;
    .locals 1

    .line 38
    array-length v0, p0

    invoke-static {p0, v0}, Lo/akt;->ᐪ([BI)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static ᔇ([BI)J
    .locals 7

    .line 151
    add-int/lit8 v0, p1, 0x4

    invoke-static {p0, v0}, Lo/akt;->ᒽ([BI)J

    move-result-wide v3

    .line 152
    invoke-static {p0, p1}, Lo/akt;->ᒽ([BI)J

    move-result-wide v0

    const/16 v2, 0x20

    shl-long v5, v0, v2

    .line 153
    or-long/2addr v5, v3

    .line 154
    return-wide v5
.end method

.method public static ᔈ([BI)I
    .locals 4

    .line 159
    aget-byte v0, p0, p1

    and-int/lit16 v2, v0, 0xff

    .line 160
    add-int/lit8 v0, p1, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v3, v0, 0xff

    .line 161
    shl-int/lit8 v0, v2, 0x8

    add-int/2addr v0, v3

    return v0
.end method
