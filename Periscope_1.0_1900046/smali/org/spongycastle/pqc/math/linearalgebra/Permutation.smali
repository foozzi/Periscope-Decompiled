.class public Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bjq:[I


# direct methods
.method public constructor <init>(I)V
    .locals 3

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    if-gtz p1, :cond_0

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    .line 33
    add-int/lit8 v2, p1, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 35
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    aput v2, v0, v2

    .line 33
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 37
    :cond_1
    return-void
.end method

.method public constructor <init>(ILjava/security/SecureRandom;)V
    .locals 6

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    if-gtz p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid length"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 101
    :cond_0
    new-array v0, p1, [I

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    .line 103
    new-array v2, p1, [I

    .line 104
    const/4 v3, 0x0

    :goto_0
    if-ge v3, p1, :cond_1

    .line 106
    aput v3, v2, v3

    .line 104
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_1
    move v3, p1

    .line 110
    const/4 v4, 0x0

    :goto_1
    if-ge v4, p1, :cond_2

    .line 112
    invoke-static {p2, v3}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->ˎ(Ljava/security/SecureRandom;I)I

    move-result v5

    .line 113
    add-int/lit8 v3, v3, -0x1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    aget v1, v2, v5

    aput v1, v0, v4

    .line 115
    aget v0, v2, v3

    aput v0, v2, v5

    .line 110
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 117
    :cond_2
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 192
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    if-nez v0, :cond_0

    .line 194
    const/4 v0, 0x0

    return v0

    .line 196
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    move-object v2, v0

    .line 198
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public getEncoded()[B
    .locals 7

    .line 126
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    array-length v3, v0

    .line 127
    add-int/lit8 v0, v3, -0x1

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntegerFunctions;->Ꭻ(I)I

    move-result v4

    .line 128
    mul-int v0, v3, v4

    add-int/lit8 v0, v0, 0x4

    new-array v5, v0, [B

    .line 129
    const/4 v0, 0x0

    invoke-static {v3, v5, v0}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ι(I[BI)V

    .line 130
    const/4 v6, 0x0

    :goto_0
    if-ge v6, v3, :cond_0

    .line 132
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    aget v0, v0, v6

    mul-int v1, v6, v4

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v5, v1, v4}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->ᐝ(I[BII)V

    .line 130
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 134
    :cond_0
    return-object v5
.end method

.method public hashCode()I
    .locals 1

    .line 220
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public sD()[I
    .locals 1

    .line 142
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    return-object v0
.end method

.method public sE()Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .locals 4

    .line 152
    new-instance v2, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    array-length v0, v0

    invoke-direct {v2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;-><init>(I)V

    .line 153
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    array-length v0, v0

    add-int/lit8 v3, v0, -0x1

    :goto_0
    if-ltz v3, :cond_0

    .line 155
    iget-object v0, v2, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    aget v1, v1, v3

    aput v3, v0, v1

    .line 153
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 157
    :cond_0
    return-object v2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    const/4 v4, 0x1

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    array-length v0, v0

    if-ge v4, v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    aget v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 207
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 212
    return-object v3
.end method

.method public ˎ(Lorg/spongycastle/pqc/math/linearalgebra/Permutation;)Lorg/spongycastle/pqc/math/linearalgebra/Permutation;
    .locals 5

    .line 168
    iget-object v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    array-length v0, v0

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    array-length v1, v1

    if-eq v0, v1, :cond_0

    .line 170
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "length mismatch"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :cond_0
    new-instance v3, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;

    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    array-length v0, v0

    invoke-direct {v3, v0}, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;-><init>(I)V

    .line 173
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    array-length v0, v0

    add-int/lit8 v4, v0, -0x1

    :goto_0
    if-ltz v4, :cond_1

    .line 175
    iget-object v0, v3, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    iget-object v2, p1, Lorg/spongycastle/pqc/math/linearalgebra/Permutation;->bjq:[I

    aget v2, v2, v4

    aget v1, v1, v2

    aput v1, v0, v4

    .line 173
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 177
    :cond_1
    return-object v3
.end method
