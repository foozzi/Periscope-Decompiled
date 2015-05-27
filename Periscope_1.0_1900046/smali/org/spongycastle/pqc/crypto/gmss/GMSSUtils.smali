.class Lorg/spongycastle/pqc/crypto/gmss/GMSSUtils;
.super Ljava/lang/Object;
.source ""


# direct methods
.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ˊ([Ljava/util/Vector;)[Ljava/util/Vector;
    .locals 5

    .line 112
    if-nez p0, :cond_0

    .line 114
    const/4 v0, 0x0

    return-object v0

    .line 116
    :cond_0
    array-length v0, p0

    new-array v2, v0, [Ljava/util/Vector;

    .line 118
    const/4 v3, 0x0

    :goto_0
    array-length v0, p0

    if-eq v3, v0, :cond_2

    .line 120
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    aput-object v0, v2, v3

    .line 121
    aget-object v0, p0, v3

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    aget-object v0, v2, v3

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    .line 118
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 127
    :cond_2
    return-object v2
.end method

.method static ˊ([Lorg/spongycastle/pqc/crypto/gmss/Treehash;)[Lorg/spongycastle/pqc/crypto/gmss/Treehash;
    .locals 4

    .line 83
    if-nez p0, :cond_0

    .line 85
    const/4 v0, 0x0

    return-object v0

    .line 87
    :cond_0
    array-length v0, p0

    new-array v3, v0, [Lorg/spongycastle/pqc/crypto/gmss/Treehash;

    .line 89
    array-length v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v1, v3, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 91
    return-object v3
.end method

.method static ˊ([[B)[[B
    .locals 3

    .line 51
    if-nez p0, :cond_0

    .line 53
    const/4 v0, 0x0

    return-object v0

    .line 55
    :cond_0
    array-length v0, p0

    new-array v1, v0, [[B

    .line 57
    const/4 v2, 0x0

    :goto_0
    array-length v0, p0

    if-eq v2, v0, :cond_1

    .line 59
    aget-object v0, p0, v2

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    aput-object v0, v1, v2

    .line 57
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 62
    :cond_1
    return-object v1
.end method
