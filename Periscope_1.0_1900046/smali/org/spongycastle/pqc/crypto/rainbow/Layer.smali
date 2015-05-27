.class public Lorg/spongycastle/pqc/crypto/rainbow/Layer;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bhK:I

.field private bhL:I

.field private bhM:I

.field private bhN:[[[S

.field private bhO:[[[S

.field private bhP:[[S

.field private bhQ:[S


# direct methods
.method public constructor <init>(BB[[[S[[[S[[S[S)V
    .locals 2

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    .line 56
    and-int/lit16 v0, p2, 0xff

    iput v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhL:I

    .line 57
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhL:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    .line 60
    iput-object p3, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhN:[[[S

    .line 61
    iput-object p4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhO:[[[S

    .line 62
    iput-object p5, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhP:[[S

    .line 63
    iput-object p6, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhQ:[S

    .line 64
    return-void
.end method

.method public constructor <init>(IILjava/security/SecureRandom;)V
    .locals 9

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    .line 75
    iput p2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhL:I

    .line 76
    sub-int v0, p2, p1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    .line 79
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhN:[[[S

    .line 80
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    filled-new-array {v0, v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhO:[[[S

    .line 81
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhL:I

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhP:[[S

    .line 82
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    new-array v0, v0, [S

    iput-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhQ:[S

    .line 84
    iget v5, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    .line 87
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_2

    .line 89
    const/4 v7, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    if-ge v7, v0, :cond_1

    .line 91
    const/4 v8, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    if-ge v8, v0, :cond_0

    .line 93
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhN:[[[S

    aget-object v0, v0, v6

    aget-object v0, v0, v7

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v8

    .line 91
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 89
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 87
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 98
    :cond_2
    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_5

    .line 100
    const/4 v7, 0x0

    :goto_4
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    if-ge v7, v0, :cond_4

    .line 102
    const/4 v8, 0x0

    :goto_5
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    if-ge v8, v0, :cond_3

    .line 104
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhO:[[[S

    aget-object v0, v0, v6

    aget-object v0, v0, v7

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v8

    .line 102
    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    .line 100
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 98
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 109
    :cond_5
    const/4 v6, 0x0

    :goto_6
    if-ge v6, v5, :cond_7

    .line 111
    const/4 v7, 0x0

    :goto_7
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhL:I

    if-ge v7, v0, :cond_6

    .line 113
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhP:[[S

    aget-object v0, v0, v6

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v7

    .line 111
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 109
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    .line 117
    :cond_7
    const/4 v6, 0x0

    :goto_8
    if-ge v6, v5, :cond_8

    .line 119
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhQ:[S

    invoke-virtual {p3}, Ljava/security/SecureRandom;->nextInt()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    aput-short v1, v0, v6

    .line 117
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 121
    :cond_8
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 295
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    if-nez v0, :cond_1

    .line 297
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 299
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;

    move-object v2, v0

    .line 301
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rI()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhL:I

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rJ()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rK()I

    move-result v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhN:[[[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rL()[[[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˊ([[[S[[[S)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhO:[[[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rM()[[[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˊ([[[S[[[S)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhP:[[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rN()[[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->ˋ([[S[[S)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhQ:[S

    invoke-virtual {v2}, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->rO()[S

    move-result-object v1

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/RainbowUtil;->equals([S[S)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 312
    iget v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    .line 313
    mul-int/lit8 v0, v2, 0x25

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhL:I

    add-int v2, v0, v1

    .line 314
    mul-int/lit8 v0, v2, 0x25

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    add-int v2, v0, v1

    .line 315
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhN:[[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->ˎ([[[S)I

    move-result v1

    add-int v2, v0, v1

    .line 316
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhO:[[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->ˎ([[[S)I

    move-result v1

    add-int v2, v0, v1

    .line 317
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhP:[[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->ˎ([[S)I

    move-result v1

    add-int v2, v0, v1

    .line 318
    mul-int/lit8 v0, v2, 0x25

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhQ:[S

    invoke-static {v1}, Lorg/spongycastle/util/Arrays;->hashCode([S)I

    move-result v1

    add-int v2, v0, v1

    .line 320
    return v2
.end method

.method public rI()I
    .locals 1

    .line 223
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    return v0
.end method

.method public rJ()I
    .locals 1

    .line 233
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhL:I

    return v0
.end method

.method public rK()I
    .locals 1

    .line 243
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    return v0
.end method

.method public rL()[[[S
    .locals 1

    .line 253
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhN:[[[S

    return-object v0
.end method

.method public rM()[[[S
    .locals 1

    .line 264
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhO:[[[S

    return-object v0
.end method

.method public rN()[[S
    .locals 1

    .line 274
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhP:[[S

    return-object v0
.end method

.method public rO()[S
    .locals 1

    .line 284
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhQ:[S

    return-object v0
.end method

.method public ˋ([S)[[S
    .locals 11

    .line 138
    const/4 v5, 0x0

    .line 140
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    add-int/lit8 v1, v1, 0x1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[S

    .line 142
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    new-array v7, v0, [S

    .line 148
    const/4 v8, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    if-ge v8, v0, :cond_2

    .line 150
    const/4 v9, 0x0

    :goto_1
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    if-ge v9, v0, :cond_1

    .line 152
    const/4 v10, 0x0

    :goto_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    if-ge v10, v0, :cond_0

    .line 155
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhO:[[[S

    aget-object v0, v0, v8

    aget-object v0, v0, v9

    aget-short v0, v0, v10

    aget-short v1, p1, v9

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v5

    .line 157
    aget-short v0, p1, v10

    invoke-static {v5, v0}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v5

    .line 159
    aget-short v0, v7, v8

    invoke-static {v0, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v0

    aput-short v0, v7, v8

    .line 152
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 150
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 148
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 165
    :cond_2
    const/4 v8, 0x0

    :goto_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    if-ge v8, v0, :cond_5

    .line 167
    const/4 v9, 0x0

    :goto_4
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    if-ge v9, v0, :cond_4

    .line 169
    const/4 v10, 0x0

    :goto_5
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    if-ge v10, v0, :cond_3

    .line 172
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhN:[[[S

    aget-object v0, v0, v8

    aget-object v0, v0, v9

    aget-short v0, v0, v10

    aget-short v1, p1, v10

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v5

    .line 174
    aget-object v0, v6, v8

    aget-object v1, v6, v8

    aget-short v1, v1, v9

    invoke-static {v1, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v1

    aput-short v1, v0, v9

    .line 169
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .line 167
    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 165
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 179
    :cond_5
    const/4 v8, 0x0

    :goto_6
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    if-ge v8, v0, :cond_7

    .line 181
    const/4 v9, 0x0

    :goto_7
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    if-ge v9, v0, :cond_6

    .line 184
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhP:[[S

    aget-object v0, v0, v8

    aget-short v0, v0, v9

    aget-short v1, p1, v9

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˏ(SS)S

    move-result v5

    .line 187
    aget-short v0, v7, v8

    invoke-static {v0, v5}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v0

    aput-short v0, v7, v8

    .line 181
    add-int/lit8 v9, v9, 0x1

    goto :goto_7

    .line 179
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    .line 191
    :cond_7
    const/4 v8, 0x0

    :goto_8
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    if-ge v8, v0, :cond_9

    .line 193
    iget v9, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    :goto_9
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhL:I

    if-ge v9, v0, :cond_8

    .line 197
    aget-object v0, v6, v8

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    sub-int v1, v9, v1

    iget-object v2, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhP:[[S

    aget-object v2, v2, v8

    aget-short v2, v2, v9

    aget-object v3, v6, v8

    iget v4, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhK:I

    sub-int v4, v9, v4

    aget-short v3, v3, v4

    invoke-static {v2, v3}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v2

    aput-short v2, v0, v1

    .line 193
    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    .line 191
    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_8

    .line 202
    :cond_9
    const/4 v8, 0x0

    :goto_a
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    if-ge v8, v0, :cond_a

    .line 205
    aget-short v0, v7, v8

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhQ:[S

    aget-short v1, v1, v8

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/crypto/rainbow/util/GF2Field;->ˎ(SS)S

    move-result v0

    aput-short v0, v7, v8

    .line 202
    add-int/lit8 v8, v8, 0x1

    goto :goto_a

    .line 209
    :cond_a
    const/4 v8, 0x0

    :goto_b
    iget v0, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    if-ge v8, v0, :cond_b

    .line 211
    aget-object v0, v6, v8

    iget v1, p0, Lorg/spongycastle/pqc/crypto/rainbow/Layer;->bhM:I

    aget-short v2, v7, v8

    aput-short v2, v0, v1

    .line 209
    add-int/lit8 v8, v8, 0x1

    goto :goto_b

    .line 213
    :cond_b
    return-object v6
.end method
