.class Lo/kh;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static NL:[C

.field private static NM:[B


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 10
    const/16 v0, 0x40

    new-array v0, v0, [C

    sput-object v0, Lo/kh;->NL:[C

    .line 12
    const/4 v3, 0x0

    .line 13
    const/16 v4, 0x41

    :goto_0
    const/16 v0, 0x5a

    if-gt v4, v0, :cond_0

    .line 14
    sget-object v0, Lo/kh;->NL:[C

    move v1, v3

    add-int/lit8 v3, v3, 0x1

    aput-char v4, v0, v1

    .line 13
    add-int/lit8 v0, v4, 0x1

    int-to-char v4, v0

    goto :goto_0

    .line 15
    :cond_0
    const/16 v4, 0x61

    :goto_1
    const/16 v0, 0x7a

    if-gt v4, v0, :cond_1

    .line 16
    sget-object v0, Lo/kh;->NL:[C

    move v1, v3

    add-int/lit8 v3, v3, 0x1

    aput-char v4, v0, v1

    .line 15
    add-int/lit8 v0, v4, 0x1

    int-to-char v4, v0

    goto :goto_1

    .line 17
    :cond_1
    const/16 v4, 0x30

    :goto_2
    const/16 v0, 0x39

    if-gt v4, v0, :cond_2

    .line 18
    sget-object v0, Lo/kh;->NL:[C

    move v1, v3

    add-int/lit8 v3, v3, 0x1

    aput-char v4, v0, v1

    .line 17
    add-int/lit8 v0, v4, 0x1

    int-to-char v4, v0

    goto :goto_2

    .line 19
    :cond_2
    sget-object v0, Lo/kh;->NL:[C

    move v1, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x2b

    aput-char v2, v0, v1

    .line 20
    sget-object v0, Lo/kh;->NL:[C

    move v1, v3

    add-int/lit8 v3, v3, 0x1

    const/16 v2, 0x2f

    aput-char v2, v0, v1

    .line 24
    const/16 v0, 0x80

    new-array v0, v0, [B

    sput-object v0, Lo/kh;->NM:[B

    .line 26
    const/4 v3, 0x0

    :goto_3
    sget-object v0, Lo/kh;->NM:[B

    array-length v0, v0

    if-ge v3, v0, :cond_3

    .line 27
    sget-object v0, Lo/kh;->NM:[B

    const/4 v1, -0x1

    aput-byte v1, v0, v3

    .line 26
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 28
    :cond_3
    const/4 v3, 0x0

    :goto_4
    const/16 v0, 0x40

    if-ge v3, v0, :cond_4

    .line 29
    sget-object v0, Lo/kh;->NM:[B

    sget-object v1, Lo/kh;->NL:[C

    aget-char v1, v1, v3

    int-to-byte v2, v3

    aput-byte v2, v0, v1

    .line 28
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 30
    :cond_4
    return-void
.end method

.method public static ʼ([BI)[C
    .locals 14

    .line 67
    mul-int/lit8 v0, p1, 0x4

    add-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v0, 0x3

    .line 68
    add-int/lit8 v0, p1, 0x2

    div-int/lit8 v0, v0, 0x3

    mul-int/lit8 v3, v0, 0x4

    .line 69
    new-array v4, v3, [C

    .line 70
    const/4 v5, 0x0

    .line 71
    const/4 v6, 0x0

    .line 72
    :goto_0
    if-ge v5, p1, :cond_4

    .line 73
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v7, v0, 0xff

    .line 74
    if-ge v5, p1, :cond_0

    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v8, v0, 0xff

    goto :goto_1

    :cond_0
    const/4 v8, 0x0

    .line 75
    :goto_1
    if-ge v5, p1, :cond_1

    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-byte v0, p0, v0

    and-int/lit16 v9, v0, 0xff

    goto :goto_2

    :cond_1
    const/4 v9, 0x0

    .line 76
    :goto_2
    ushr-int/lit8 v10, v7, 0x2

    .line 77
    and-int/lit8 v0, v7, 0x3

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v1, v8, 0x4

    or-int v11, v0, v1

    .line 78
    and-int/lit8 v0, v8, 0xf

    shl-int/lit8 v0, v0, 0x2

    ushr-int/lit8 v1, v9, 0x6

    or-int v12, v0, v1

    .line 79
    and-int/lit8 v13, v9, 0x3f

    .line 80
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    sget-object v1, Lo/kh;->NL:[C

    aget-char v1, v1, v10

    aput-char v1, v4, v0

    .line 81
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    sget-object v1, Lo/kh;->NL:[C

    aget-char v1, v1, v11

    aput-char v1, v4, v0

    .line 82
    if-ge v6, v2, :cond_2

    sget-object v0, Lo/kh;->NL:[C

    aget-char v0, v0, v12

    goto :goto_3

    :cond_2
    const/16 v0, 0x3d

    :goto_3
    aput-char v0, v4, v6

    .line 83
    add-int/lit8 v6, v6, 0x1

    .line 84
    if-ge v6, v2, :cond_3

    sget-object v0, Lo/kh;->NL:[C

    aget-char v0, v0, v13

    goto :goto_4

    :cond_3
    const/16 v0, 0x3d

    :goto_4
    aput-char v0, v4, v6

    .line 85
    add-int/lit8 v6, v6, 0x1

    .line 86
    goto/16 :goto_0

    .line 87
    :cond_4
    return-object v4
.end method

.method public static ʿ([B)[C
    .locals 1

    .line 53
    array-length v0, p0

    invoke-static {p0, v0}, Lo/kh;->ʼ([BI)[C

    move-result-object v0

    return-object v0
.end method

.method public static ˊ([C)[B
    .locals 18

    .line 139
    move-object/from16 v0, p0

    array-length v2, v0

    .line 140
    rem-int/lit8 v0, v2, 0x4

    if-eqz v0, :cond_0

    .line 141
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Length of Base64 encoded input string is not a multiple of 4."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_0
    :goto_0
    if-lez v2, :cond_1

    add-int/lit8 v0, v2, -0x1

    aget-char v0, p0, v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_1

    .line 144
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 145
    :cond_1
    mul-int/lit8 v0, v2, 0x3

    div-int/lit8 v3, v0, 0x4

    .line 146
    new-array v4, v3, [B

    .line 147
    const/4 v5, 0x0

    .line 148
    const/4 v6, 0x0

    .line 149
    :goto_1
    if-ge v5, v2, :cond_a

    .line 150
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v7, p0, v0

    .line 151
    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v8, p0, v0

    .line 152
    if-ge v5, v2, :cond_2

    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v9, p0, v0

    goto :goto_2

    :cond_2
    const/16 v9, 0x41

    .line 153
    :goto_2
    if-ge v5, v2, :cond_3

    move v0, v5

    add-int/lit8 v5, v5, 0x1

    aget-char v10, p0, v0

    goto :goto_3

    :cond_3
    const/16 v10, 0x41

    .line 154
    :goto_3
    const/16 v0, 0x7f

    if-gt v7, v0, :cond_4

    const/16 v0, 0x7f

    if-gt v8, v0, :cond_4

    const/16 v0, 0x7f

    if-gt v9, v0, :cond_4

    const/16 v0, 0x7f

    if-le v10, v0, :cond_5

    .line 155
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_5
    sget-object v0, Lo/kh;->NM:[B

    aget-byte v11, v0, v7

    .line 158
    sget-object v0, Lo/kh;->NM:[B

    aget-byte v12, v0, v8

    .line 159
    sget-object v0, Lo/kh;->NM:[B

    aget-byte v13, v0, v9

    .line 160
    sget-object v0, Lo/kh;->NM:[B

    aget-byte v14, v0, v10

    .line 161
    if-ltz v11, :cond_6

    if-ltz v12, :cond_6

    if-ltz v13, :cond_6

    if-gez v14, :cond_7

    .line 162
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal character in Base64 encoded data."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_7
    shl-int/lit8 v0, v11, 0x2

    ushr-int/lit8 v1, v12, 0x4

    or-int v15, v0, v1

    .line 165
    and-int/lit8 v0, v12, 0xf

    shl-int/lit8 v0, v0, 0x4

    ushr-int/lit8 v1, v13, 0x2

    or-int v16, v0, v1

    .line 166
    and-int/lit8 v0, v13, 0x3

    shl-int/lit8 v0, v0, 0x6

    or-int v17, v0, v14

    .line 167
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    int-to-byte v1, v15

    aput-byte v1, v4, v0

    .line 168
    if-ge v6, v3, :cond_8

    .line 169
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v16

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 170
    :cond_8
    if-ge v6, v3, :cond_9

    .line 171
    move v0, v6

    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v17

    int-to-byte v1, v1

    aput-byte v1, v4, v0

    .line 172
    :cond_9
    goto/16 :goto_1

    .line 173
    :cond_a
    return-object v4
.end method

.method private static ᵛ(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 91
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    new-array v2, v0, [C

    .line 92
    const/4 v3, 0x0

    .line 94
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 95
    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_0

    .line 96
    move v0, v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v2, v0

    .line 94
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 99
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static ᵥ(Ljava/lang/String;)[B
    .locals 1

    .line 125
    invoke-static {p0}, Lo/kh;->ᵛ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-static {v0}, Lo/kh;->ˊ([C)[B

    move-result-object v0

    return-object v0
.end method
