.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private biU:I

.field private biV:I


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    .line 58
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᙇ(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 60
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: the degree is not correct"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 63
    :cond_0
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᴧ(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, " Error: given polynomial is reducible"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :cond_1
    iput p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    .line 69
    iput p2, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biV:I

    .line 71
    return-void
.end method

.method private static ๆ(I)Ljava/lang/String;
    .locals 5

    .line 337
    const-string v2, ""

    .line 338
    if-nez p0, :cond_0

    .line 340
    const-string v2, "0"

    goto :goto_1

    .line 344
    :cond_0
    and-int/lit8 v0, p0, 0x1

    int-to-byte v3, v0

    .line 345
    const/4 v0, 0x1

    if-ne v3, v0, :cond_1

    .line 347
    const-string v2, "1"

    .line 349
    :cond_1
    ushr-int/lit8 p0, p0, 0x1

    .line 350
    const/4 v4, 0x1

    .line 351
    :goto_0
    if-eqz p0, :cond_3

    .line 353
    and-int/lit8 v0, p0, 0x1

    int-to-byte v3, v0

    .line 354
    const/4 v0, 0x1

    if-ne v3, v0, :cond_2

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+x^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 358
    :cond_2
    ushr-int/lit8 p0, p0, 0x1

    .line 359
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 362
    :cond_3
    :goto_1
    return-object v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 302
    if-eqz p1, :cond_0

    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    if-nez v0, :cond_1

    .line 304
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 307
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    move-object v2, v0

    .line 309
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    iget v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    if-ne v0, v1, :cond_2

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biV:I

    iget v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biV:I

    if-ne v0, v1, :cond_2

    .line 312
    const/4 v0, 0x1

    return v0

    .line 315
    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public getEncoded()[B
    .locals 1

    .line 123
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biV:I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/LittleEndianConversions;->Ꮁ(I)[B

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 320
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biV:I

    return v0
.end method

.method public qs()I
    .locals 1

    .line 103
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Finite Field GF(2^"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "GF(2)[X]/<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biV:I

    invoke-static {v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ๆ(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    return-object v2
.end method

.method public ˊ(Ljava/security/SecureRandom;)I
    .locals 3

    .line 221
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->ˎ(Ljava/security/SecureRandom;I)I

    move-result v2

    .line 222
    return v2
.end method

.method public ˋ(Ljava/security/SecureRandom;)I
    .locals 5

    .line 243
    const/high16 v2, 0x100000

    .line 244
    const/4 v3, 0x0

    .line 245
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->ˎ(Ljava/security/SecureRandom;I)I

    move-result v4

    .line 246
    :goto_0
    if-nez v4, :cond_0

    if-ge v3, v2, :cond_0

    .line 248
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    invoke-static {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/RandUtils;->ˎ(Ljava/security/SecureRandom;I)I

    move-result v4

    .line 249
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 251
    :cond_0
    if-ne v3, v2, :cond_1

    .line 253
    const/4 v4, 0x1

    .line 255
    :cond_1
    return v4
.end method

.method public ܕ(I)I
    .locals 3

    .line 193
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    add-int/lit8 v2, v0, -0x2

    .line 195
    invoke-virtual {p0, p1, v2}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᘁ(II)I

    move-result v0

    return v0
.end method

.method public ণ(I)I
    .locals 2

    .line 206
    const/4 v1, 0x1

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    if-ge v1, v0, :cond_0

    .line 208
    invoke-virtual {p0, p1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result p1

    .line 206
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 210
    :cond_0
    return p1
.end method

.method public จ(I)Z
    .locals 2

    .line 264
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    const/16 v1, 0x1f

    if-ne v0, v1, :cond_1

    .line 266
    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 268
    :cond_1
    if-ltz p1, :cond_2

    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    const/4 v1, 0x1

    shl-int v0, v1, v0

    if-ge p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public แ(I)Ljava/lang/String;
    .locals 4

    .line 276
    const-string v2, ""

    .line 277
    const/4 v3, 0x0

    :goto_0
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biU:I

    if-ge v3, v0, :cond_1

    .line 279
    int-to-byte v0, p1

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 285
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 287
    :goto_1
    ushr-int/lit8 p1, p1, 0x1

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 289
    :cond_1
    return-object v2
.end method

.method public ᕑ(II)I
    .locals 1

    .line 135
    xor-int v0, p1, p2

    return v0
.end method

.method public ᕽ(II)I
    .locals 1

    .line 147
    iget v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->biV:I

    invoke-static {p1, p2, v0}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ˇ(III)I

    move-result v0

    return v0
.end method

.method public ᘁ(II)I
    .locals 3

    .line 159
    if-nez p1, :cond_0

    .line 161
    const/4 v0, 0x0

    return v0

    .line 163
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 165
    const/4 v0, 0x1

    return v0

    .line 167
    :cond_1
    const/4 v2, 0x1

    .line 168
    if-gez p2, :cond_2

    .line 170
    invoke-virtual {p0, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ܕ(I)I

    move-result p1

    .line 171
    neg-int p2, p2

    .line 173
    :cond_2
    :goto_0
    if-eqz p2, :cond_4

    .line 175
    and-int/lit8 v0, p2, 0x1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 177
    invoke-virtual {p0, v2, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result v2

    .line 179
    :cond_3
    invoke-virtual {p0, p1, p1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->ᕽ(II)I

    move-result p1

    .line 180
    ushr-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 182
    :cond_4
    return v2
.end method
