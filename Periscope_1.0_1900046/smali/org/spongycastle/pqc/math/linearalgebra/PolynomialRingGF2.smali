.class public final Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;
.super Ljava/lang/Object;
.source ""


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static ˇ(III)I
    .locals 7

    .line 77
    const/4 v2, 0x0

    .line 78
    invoke-static {p0, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᵞ(II)I

    move-result v3

    .line 79
    invoke-static {p1, p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᵞ(II)I

    move-result v4

    .line 80
    if-eqz v4, :cond_2

    .line 82
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᙇ(I)I

    move-result v0

    const/4 v1, 0x1

    shl-int v5, v1, v0

    .line 84
    :goto_0
    if-eqz v3, :cond_2

    .line 86
    and-int/lit8 v0, v3, 0x1

    int-to-byte v6, v0

    .line 87
    const/4 v0, 0x1

    if-ne v6, v0, :cond_0

    .line 89
    xor-int/2addr v2, v4

    .line 91
    :cond_0
    ushr-int/lit8 v3, v3, 0x1

    .line 92
    shl-int/lit8 v4, v4, 0x1

    .line 93
    if-lt v4, v5, :cond_1

    .line 95
    xor-int/2addr v4, p2

    .line 97
    :cond_1
    goto :goto_0

    .line 99
    :cond_2
    return v2
.end method

.method public static ᙇ(I)I
    .locals 2

    .line 111
    const/4 v1, -0x1

    .line 112
    :goto_0
    if-eqz p0, :cond_0

    .line 114
    add-int/lit8 v1, v1, 0x1

    .line 115
    ushr-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 117
    :cond_0
    return v1
.end method

.method public static ᴧ(I)Z
    .locals 5

    .line 226
    if-nez p0, :cond_0

    .line 228
    const/4 v0, 0x0

    return v0

    .line 230
    :cond_0
    invoke-static {p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᙇ(I)I

    move-result v0

    ushr-int/lit8 v2, v0, 0x1

    .line 231
    const/4 v3, 0x2

    .line 232
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_2

    .line 234
    invoke-static {v3, v3, p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ˇ(III)I

    move-result v3

    .line 235
    xor-int/lit8 v0, v3, 0x2

    invoke-static {v0, p0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᵧ(II)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 237
    const/4 v0, 0x0

    return v0

    .line 232
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 240
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public static ᴮ(I)I
    .locals 5

    .line 251
    if-gez p0, :cond_0

    .line 253
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The Degree is negative"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    const/4 v0, 0x0

    return v0

    .line 256
    :cond_0
    const/16 v0, 0x1f

    if-le p0, v0, :cond_1

    .line 258
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "The Degree is more then 31"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    return v0

    .line 261
    :cond_1
    if-nez p0, :cond_2

    .line 263
    const/4 v0, 0x1

    return v0

    .line 265
    :cond_2
    const/4 v0, 0x1

    shl-int v2, v0, p0

    .line 266
    add-int/lit8 v2, v2, 0x1

    .line 267
    add-int/lit8 v0, p0, 0x1

    const/4 v1, 0x1

    shl-int v3, v1, v0

    .line 268
    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_4

    .line 270
    invoke-static {v4}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᴧ(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 272
    return v4

    .line 268
    :cond_3
    add-int/lit8 v4, v4, 0x2

    goto :goto_0

    .line 275
    :cond_4
    const/4 v0, 0x0

    return v0
.end method

.method public static ᵞ(II)I
    .locals 3

    .line 147
    move v2, p0

    .line 149
    if-nez p1, :cond_0

    .line 151
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Error: to be divided by 0"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 152
    const/4 v0, 0x0

    return v0

    .line 155
    :cond_0
    :goto_0
    invoke-static {v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᙇ(I)I

    move-result v0

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᙇ(I)I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 157
    invoke-static {v2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᙇ(I)I

    move-result v0

    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᙇ(I)I

    move-result v1

    sub-int/2addr v0, v1

    shl-int v0, p1, v0

    xor-int/2addr v2, v0

    goto :goto_0

    .line 160
    :cond_1
    return v2
.end method

.method public static ᵧ(II)I
    .locals 3

    .line 205
    move v0, p0

    .line 206
    move v1, p1

    .line 207
    :goto_0
    if-eqz v1, :cond_0

    .line 209
    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᵞ(II)I

    move-result v2

    .line 210
    move v0, v1

    .line 211
    move v1, v2

    goto :goto_0

    .line 214
    :cond_0
    return v0
.end method
