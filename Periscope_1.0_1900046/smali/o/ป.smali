.class public final Lo/ป;
.super Ljava/lang/Object;
.source ""


# direct methods
.method public static ʻ(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    .line 73
    invoke-static {p0, p1}, Lo/ป;->ʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static ʼ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    .line 85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    if-nez p0, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    move-object p0, v0

    .line 89
    if-nez p1, :cond_1

    const-string v0, ""

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    move-object p1, v0

    .line 91
    invoke-static {p1}, Lo/ป;->ᐠ(Ljava/lang/String;)[I

    move-result-object v4

    .line 92
    const/4 v0, 0x0

    aget v0, v4, v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 94
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    const/4 v0, 0x1

    aget v0, v4, v0

    const/4 v1, 0x2

    aget v1, v4, v1

    invoke-static {v3, v0, v1}, Lo/ป;->ˊ(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    .line 96
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 99
    :cond_2
    invoke-static {p0}, Lo/ป;->ᐠ(Ljava/lang/String;)[I

    move-result-object v5

    .line 100
    const/4 v0, 0x3

    aget v0, v4, v0

    if-nez v0, :cond_3

    .line 103
    const/4 v0, 0x3

    aget v0, v5, v0

    const/4 v1, 0x0

    invoke-virtual {v3, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 106
    :cond_3
    const/4 v0, 0x2

    aget v0, v4, v0

    if-nez v0, :cond_4

    .line 109
    const/4 v0, 0x2

    aget v0, v5, v0

    const/4 v1, 0x0

    invoke-virtual {v3, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_4
    const/4 v0, 0x1

    aget v0, v4, v0

    if-eqz v0, :cond_5

    .line 114
    const/4 v0, 0x0

    aget v0, v5, v0

    add-int/lit8 v6, v0, 0x1

    .line 115
    const/4 v0, 0x0

    invoke-virtual {v3, p0, v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    const/4 v0, 0x1

    aget v0, v4, v0

    add-int/2addr v0, v6

    const/4 v1, 0x2

    aget v1, v4, v1

    add-int/2addr v1, v6

    invoke-static {v3, v0, v1}, Lo/ป;->ˊ(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_5
    const/4 v0, 0x1

    aget v0, v4, v0

    const/4 v1, 0x2

    aget v1, v4, v1

    if-eq v0, v1, :cond_6

    const/4 v0, 0x1

    aget v0, v4, v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_6

    .line 122
    const/4 v0, 0x1

    aget v0, v5, v0

    const/4 v1, 0x0

    invoke-virtual {v3, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    const/4 v0, 0x1

    aget v0, v5, v0

    const/4 v1, 0x1

    aget v1, v5, v1

    const/4 v2, 0x2

    aget v2, v4, v2

    add-int/2addr v1, v2

    invoke-static {v3, v0, v1}, Lo/ป;->ˊ(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 128
    :cond_6
    const/4 v0, 0x0

    aget v0, v5, v0

    add-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    aget v1, v5, v1

    if-ge v0, v1, :cond_7

    const/4 v0, 0x1

    aget v0, v5, v0

    const/4 v1, 0x2

    aget v1, v5, v1

    if-ne v0, v1, :cond_7

    .line 132
    const/4 v0, 0x1

    aget v0, v5, v0

    const/4 v1, 0x0

    invoke-virtual {v3, p0, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    const/4 v0, 0x1

    aget v0, v5, v0

    const/4 v1, 0x1

    aget v1, v5, v1

    const/4 v2, 0x2

    aget v2, v4, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x1

    invoke-static {v3, v0, v1}, Lo/ป;->ˊ(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 139
    :cond_7
    const/4 v0, 0x2

    aget v0, v5, v0

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v6

    .line 140
    const/4 v0, -0x1

    if-ne v6, v0, :cond_8

    const/4 v0, 0x1

    aget v7, v5, v0

    goto :goto_2

    :cond_8
    add-int/lit8 v7, v6, 0x1

    .line 141
    :goto_2
    const/4 v0, 0x0

    invoke-virtual {v3, p0, v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const/4 v0, 0x1

    aget v0, v5, v0

    const/4 v1, 0x2

    aget v1, v4, v1

    add-int/2addr v1, v7

    invoke-static {v3, v0, v1}, Lo/ป;->ˊ(Ljava/lang/StringBuilder;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ˊ(Ljava/lang/StringBuilder;II)Ljava/lang/String;
    .locals 7

    .line 154
    if-lt p1, p2, :cond_0

    .line 156
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_1

    .line 160
    add-int/lit8 p1, p1, 0x1

    .line 163
    :cond_1
    move v2, p1

    .line 164
    move v3, p1

    .line 165
    :goto_0
    if-gt v3, p2, :cond_7

    .line 166
    const/4 v4, -0x1

    .line 167
    if-ne v3, p2, :cond_2

    .line 168
    move v4, v3

    goto :goto_1

    .line 169
    :cond_2
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_3

    .line 170
    add-int/lit8 v4, v3, 0x1

    goto :goto_1

    .line 172
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 173
    goto :goto_0

    .line 177
    :goto_1
    add-int/lit8 v0, v2, 0x1

    if-ne v3, v0, :cond_4

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_4

    .line 179
    invoke-virtual {p0, v2, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 180
    sub-int v0, v4, v2

    sub-int/2addr p2, v0

    .line 181
    move v3, v2

    goto :goto_3

    .line 182
    :cond_4
    add-int/lit8 v0, v2, 0x2

    if-ne v3, v0, :cond_6

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    add-int/lit8 v0, v2, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    const/16 v1, 0x2e

    if-ne v0, v1, :cond_6

    .line 185
    const-string v0, "/"

    add-int/lit8 v1, v2, -0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    .line 186
    if-le v5, p1, :cond_5

    move v6, v5

    goto :goto_2

    :cond_5
    move v6, p1

    .line 187
    :goto_2
    invoke-virtual {p0, v6, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 188
    sub-int v0, v4, v6

    sub-int/2addr p2, v0

    .line 189
    move v2, v5

    .line 190
    move v3, v5

    .line 191
    goto :goto_3

    .line 192
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 193
    move v2, v3

    .line 195
    :goto_3
    goto/16 :goto_0

    .line 196
    :cond_7
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static ᐠ(Ljava/lang/String;)[I
    .locals 10

    .line 206
    const/4 v0, 0x4

    new-array v2, v0, [I

    .line 207
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    const/4 v0, -0x1

    const/4 v1, 0x0

    aput v0, v2, v1

    .line 209
    return-object v2

    .line 214
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 215
    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 216
    const/4 v0, -0x1

    if-ne v4, v0, :cond_1

    .line 217
    move v4, v3

    .line 219
    :cond_1
    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    .line 220
    const/4 v0, -0x1

    if-eq v5, v0, :cond_2

    if-le v5, v4, :cond_3

    .line 222
    :cond_2
    move v5, v4

    .line 226
    :cond_3
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    .line 227
    const/4 v0, -0x1

    if-eq v6, v0, :cond_4

    if-le v6, v5, :cond_5

    .line 228
    :cond_4
    move v6, v5

    .line 230
    :cond_5
    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    .line 231
    if-le v7, v6, :cond_6

    .line 233
    const/4 v7, -0x1

    .line 238
    :cond_6
    add-int/lit8 v0, v7, 0x2

    if-ge v0, v5, :cond_7

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_7

    add-int/lit8 v0, v7, 0x2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2f

    if-ne v0, v1, :cond_7

    const/4 v8, 0x1

    goto :goto_0

    :cond_7
    const/4 v8, 0x0

    .line 242
    :goto_0
    if-eqz v8, :cond_9

    .line 243
    add-int/lit8 v0, v7, 0x3

    const/16 v1, 0x2f

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v9

    .line 244
    const/4 v0, -0x1

    if-eq v9, v0, :cond_8

    if-le v9, v5, :cond_a

    .line 245
    :cond_8
    move v9, v5

    goto :goto_1

    .line 248
    :cond_9
    add-int/lit8 v9, v7, 0x1

    .line 251
    :cond_a
    :goto_1
    const/4 v0, 0x0

    aput v7, v2, v0

    .line 252
    const/4 v0, 0x1

    aput v9, v2, v0

    .line 253
    const/4 v0, 0x2

    aput v5, v2, v0

    .line 254
    const/4 v0, 0x3

    aput v4, v2, v0

    .line 255
    return-object v2
.end method
