.class public final Lorg/spongycastle/util/Strings;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ɿ(Ljava/lang/String;)[B
    .locals 1

    .line 87
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lorg/spongycastle/util/Strings;->ʻ([C)[B

    move-result-object v0

    return-object v0
.end method

.method public static ʟ(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 168
    const/4 v2, 0x0

    .line 169
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 171
    const/4 v4, 0x0

    :goto_0
    array-length v0, v3

    if-eq v4, v0, :cond_1

    .line 173
    aget-char v5, v3, v4

    .line 174
    const/16 v0, 0x61

    if-gt v0, v5, :cond_0

    const/16 v0, 0x7a

    if-lt v0, v5, :cond_0

    .line 176
    const/4 v2, 0x1

    .line 177
    add-int/lit8 v0, v5, -0x61

    add-int/lit8 v0, v0, 0x41

    int-to-char v0, v0

    aput-char v0, v3, v4

    .line 171
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 181
    :cond_1
    if-eqz v2, :cond_2

    .line 183
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 186
    :cond_2
    return-object p0
.end method

.method public static ʰ(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 197
    const/4 v2, 0x0

    .line 198
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    .line 200
    const/4 v4, 0x0

    :goto_0
    array-length v0, v3

    if-eq v4, v0, :cond_1

    .line 202
    aget-char v5, v3, v4

    .line 203
    const/16 v0, 0x41

    if-gt v0, v5, :cond_0

    const/16 v0, 0x5a

    if-lt v0, v5, :cond_0

    .line 205
    const/4 v2, 0x1

    .line 206
    add-int/lit8 v0, v5, -0x41

    add-int/lit8 v0, v0, 0x61

    int-to-char v0, v0

    aput-char v0, v3, v4

    .line 200
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 210
    :cond_1
    if-eqz v2, :cond_2

    .line 212
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([C)V

    return-object v0

    .line 215
    :cond_2
    return-object p0
.end method

.method public static ʻ([C)[B
    .locals 4

    .line 92
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 96
    :try_start_0
    invoke-static {p0, v2}, Lorg/spongycastle/util/Strings;->ˊ([CLjava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    goto :goto_0

    .line 98
    :catch_0
    move-exception v3

    .line 100
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "cannot encode string to byte array!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :goto_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static ˊ([CLjava/io/OutputStream;)V
    .locals 8

    .line 109
    move-object v2, p0

    .line 110
    const/4 v3, 0x0

    .line 112
    :goto_0
    array-length v0, v2

    if-ge v3, v0, :cond_5

    .line 114
    aget-char v4, v2, v3

    .line 116
    const/16 v0, 0x80

    if-ge v4, v0, :cond_0

    .line 118
    invoke-virtual {p1, v4}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_1

    .line 120
    :cond_0
    const/16 v0, 0x800

    if-ge v4, v0, :cond_1

    .line 122
    shr-int/lit8 v0, v4, 0x6

    or-int/lit16 v0, v0, 0xc0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 123
    and-int/lit8 v0, v4, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    goto/16 :goto_1

    .line 126
    :cond_1
    const v0, 0xd800

    if-lt v4, v0, :cond_4

    const v0, 0xdfff

    if-gt v4, v0, :cond_4

    .line 130
    add-int/lit8 v0, v3, 0x1

    array-length v1, v2

    if-lt v0, v1, :cond_2

    .line 132
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid UTF-16 codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_2
    move v5, v4

    .line 135
    add-int/lit8 v3, v3, 0x1

    aget-char v4, v2, v3

    .line 136
    move v6, v4

    .line 139
    const v0, 0xdbff

    if-le v5, v0, :cond_3

    .line 141
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "invalid UTF-16 codepoint"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_3
    and-int/lit16 v0, v5, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v1, v6, 0x3ff

    or-int/2addr v0, v1

    const/high16 v1, 0x10000

    add-int v7, v0, v1

    .line 144
    shr-int/lit8 v0, v7, 0x12

    or-int/lit16 v0, v0, 0xf0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 145
    shr-int/lit8 v0, v7, 0xc

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 146
    shr-int/lit8 v0, v7, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 147
    and-int/lit8 v0, v7, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 148
    goto :goto_1

    .line 151
    :cond_4
    shr-int/lit8 v0, v4, 0xc

    or-int/lit16 v0, v0, 0xe0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 152
    shr-int/lit8 v0, v4, 0x6

    and-int/lit8 v0, v0, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 153
    and-int/lit8 v0, v4, 0x3f

    or-int/lit16 v0, v0, 0x80

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write(I)V

    .line 156
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 157
    goto/16 :goto_0

    .line 158
    :cond_5
    return-void
.end method

.method public static ˊ(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 6

    .line 286
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 287
    const/4 v2, 0x1

    .line 290
    :goto_0
    if-eqz v2, :cond_1

    .line 292
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 293
    if-lez v4, :cond_0

    .line 295
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 296
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 297
    add-int/lit8 v0, v4, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 301
    :cond_0
    const/4 v2, 0x0

    .line 302
    invoke-virtual {v1, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 304
    :goto_1
    goto :goto_0

    .line 306
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v4, v0, [Ljava/lang/String;

    .line 308
    const/4 v5, 0x0

    :goto_2
    array-length v0, v4

    if-eq v5, v0, :cond_2

    .line 310
    invoke-virtual {v1, v5}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v4, v5

    .line 308
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 312
    :cond_2
    return-object v4
.end method

.method public static Ϊ(Ljava/lang/String;)[B
    .locals 4

    .line 232
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v1, v0, [B

    .line 234
    const/4 v2, 0x0

    :goto_0
    array-length v0, v1

    if-eq v2, v0, :cond_0

    .line 236
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 238
    int-to-byte v0, v3

    aput-byte v0, v1, v2

    .line 234
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 241
    :cond_0
    return-object v1
.end method

.method public static і([B)Ljava/lang/String;
    .locals 11

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x0

    .line 15
    :goto_0
    array-length v0, p0

    if-ge v3, v0, :cond_3

    .line 17
    add-int/lit8 v4, v4, 0x1

    .line 18
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_0

    .line 21
    add-int/lit8 v4, v4, 0x1

    .line 22
    add-int/lit8 v3, v3, 0x4

    goto :goto_0

    .line 24
    :cond_0
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_1

    .line 26
    add-int/lit8 v3, v3, 0x3

    goto :goto_0

    .line 28
    :cond_1
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_2

    .line 30
    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 34
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 38
    :cond_3
    new-array v5, v4, [C

    .line 40
    const/4 v3, 0x0

    .line 41
    const/4 v4, 0x0

    .line 43
    :goto_1
    array-length v0, p0

    if-ge v3, v0, :cond_8

    .line 47
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xf0

    const/16 v1, 0xf0

    if-ne v0, v1, :cond_4

    .line 49
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x3

    shl-int/lit8 v0, v0, 0x12

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0xc

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x3

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    or-int v7, v0, v1

    .line 50
    const/high16 v0, 0x10000

    sub-int v8, v7, v0

    .line 51
    shr-int/lit8 v0, v8, 0xa

    const v1, 0xd800

    or-int/2addr v0, v1

    int-to-char v9, v0

    .line 52
    and-int/lit16 v0, v8, 0x3ff

    const v1, 0xdc00

    or-int/2addr v0, v1

    int-to-char v10, v0

    .line 53
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    aput-char v9, v5, v0

    .line 54
    move v6, v10

    .line 55
    add-int/lit8 v3, v3, 0x4

    .line 56
    goto/16 :goto_2

    .line 57
    :cond_4
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_5

    .line 59
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0xf

    shl-int/lit8 v0, v0, 0xc

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    shl-int/lit8 v1, v1, 0x6

    or-int/2addr v0, v1

    add-int/lit8 v1, v3, 0x2

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    int-to-char v6, v0

    .line 61
    add-int/lit8 v3, v3, 0x3

    goto :goto_2

    .line 63
    :cond_5
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xd0

    const/16 v1, 0xd0

    if-ne v0, v1, :cond_6

    .line 65
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    int-to-char v6, v0

    .line 66
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 68
    :cond_6
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xc0

    const/16 v1, 0xc0

    if-ne v0, v1, :cond_7

    .line 70
    aget-byte v0, p0, v3

    and-int/lit8 v0, v0, 0x1f

    shl-int/lit8 v0, v0, 0x6

    add-int/lit8 v1, v3, 0x1

    aget-byte v1, p0, v1

    and-int/lit8 v1, v1, 0x3f

    or-int/2addr v0, v1

    int-to-char v6, v0

    .line 71
    add-int/lit8 v3, v3, 0x2

    goto :goto_2

    .line 75
    :cond_7
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v6, v0

    .line 76
    add-int/lit8 v3, v3, 0x1

    .line 79
    :goto_2
    move v0, v4

    add-int/lit8 v4, v4, 0x1

    aput-char v6, v5, v0

    .line 80
    goto/16 :goto_1

    .line 82
    :cond_8
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static ї([B)Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lorg/spongycastle/util/Strings;->Ӏ([B)[C

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public static Ӏ([B)[C
    .locals 4

    .line 274
    array-length v0, p0

    new-array v2, v0, [C

    .line 276
    const/4 v3, 0x0

    :goto_0
    array-length v0, v2

    if-eq v3, v0, :cond_0

    .line 278
    aget-byte v0, p0, v3

    and-int/lit16 v0, v0, 0xff

    int-to-char v0, v0

    aput-char v0, v2, v3

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 281
    :cond_0
    return-object v2
.end method
