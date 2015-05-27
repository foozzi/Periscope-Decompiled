.class public Lorg/spongycastle/pqc/math/ntru/util/Util;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static volatile bjZ:Z

.field private static volatile bka:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static tc()Z
    .locals 3

    .line 128
    sget-boolean v0, Lorg/spongycastle/pqc/math/ntru/util/Util;->bjZ:Z

    if-nez v0, :cond_2

    .line 130
    const-string v0, "os.arch"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 131
    const-string v0, "sun.arch.data.model"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    const-string v0, "amd64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "x86_64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ppc64"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "64"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lorg/spongycastle/pqc/math/ntru/util/Util;->bka:Z

    .line 133
    const/4 v0, 0x1

    sput-boolean v0, Lorg/spongycastle/pqc/math/ntru/util/Util;->bjZ:Z

    .line 135
    :cond_2
    sget-boolean v0, Lorg/spongycastle/pqc/math/ntru/util/Util;->bka:Z

    return v0
.end method

.method public static ˊ(IIIZLjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/TernaryPolynomial;
    .locals 1

    .line 72
    if-eqz p3, :cond_0

    .line 74
    invoke-static {p0, p1, p2, p4}, Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;->ˋ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/SparseTernaryPolynomial;

    move-result-object v0

    return-object v0

    .line 78
    :cond_0
    invoke-static {p0, p1, p2, p4}, Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;->ˊ(IIILjava/security/SecureRandom;)Lorg/spongycastle/pqc/math/ntru/polynomial/DenseTernaryPolynomial;

    move-result-object v0

    return-object v0
.end method

.method public static ˎ(IIILjava/security/SecureRandom;)[I
    .locals 7

    .line 93
    const/4 v0, 0x1

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 94
    const/4 v0, -0x1

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 95
    const/4 v0, 0x0

    invoke-static {v0}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 97
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 98
    const/4 v5, 0x0

    :goto_0
    if-ge v5, p1, :cond_0

    .line 100
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 102
    :cond_0
    const/4 v5, 0x0

    :goto_1
    if-ge v5, p2, :cond_1

    .line 104
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 106
    :cond_1
    :goto_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, p0, :cond_2

    .line 108
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 111
    :cond_2
    invoke-static {v4, p3}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    .line 113
    new-array v5, p0, [I

    .line 114
    const/4 v6, 0x0

    :goto_3
    if-ge v6, p0, :cond_3

    .line 116
    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    aput v0, v5, v6

    .line 114
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 118
    :cond_3
    return-object v5
.end method

.method public static ˡ(III)I
    .locals 3

    .line 39
    const/4 v1, 0x1

    .line 40
    const/4 v2, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 42
    mul-int v0, v1, p0

    rem-int v1, v0, p2

    .line 40
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 44
    :cond_0
    return v1
.end method

.method public static וֹ(II)I
    .locals 1

    .line 26
    rem-int/2addr p0, p1

    .line 27
    if-gez p0, :cond_0

    .line 29
    add-int/2addr p0, p1

    .line 31
    :cond_0
    invoke-static {p0, p1}, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->וּ(II)Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;

    move-result-object v0

    iget v0, v0, Lorg/spongycastle/pqc/math/ntru/euclid/IntEuclidean;->x:I

    return v0
.end method
