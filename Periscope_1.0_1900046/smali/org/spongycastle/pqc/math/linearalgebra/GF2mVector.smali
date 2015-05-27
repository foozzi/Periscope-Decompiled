.class public Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;
.super Lorg/spongycastle/pqc/math/linearalgebra/Vector;
.source ""


# instance fields
.field private bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

.field private biW:[I


# direct methods
.method public constructor <init>(Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;[I)V
    .locals 3

    .line 74
    invoke-direct {p0}, Lorg/spongycastle/pqc/math/linearalgebra/Vector;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    .line 76
    array-length v0, p2

    iput v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->length:I

    .line 77
    array-length v0, p2

    add-int/lit8 v2, v0, -0x1

    :goto_0
    if-ltz v2, :cond_1

    .line 79
    aget v0, p2, v2

    invoke-virtual {p1, v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->จ(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Ljava/lang/ArithmeticException;

    const-string v1, "Element array is not specified over the given finite field."

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 85
    :cond_1
    invoke-static {p2}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->biW:[I

    .line 86
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 205
    instance-of v0, p1, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    if-nez v0, :cond_0

    .line 207
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;

    move-object v2, v0

    .line 211
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 213
    const/4 v0, 0x0

    return v0

    .line 216
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->biW:[I

    iget-object v1, v2, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->biW:[I

    invoke-static {v0, v1}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->equals([I[I)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 224
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->hashCode()I

    move-result v2

    .line 225
    mul-int/lit8 v0, v2, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->biW:[I

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int v2, v0, v1

    .line 226
    return v2
.end method

.method public rk()Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;
    .locals 1

    .line 105
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    return-object v0
.end method

.method public ss()[I
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->biW:[I

    invoke-static {v0}, Lorg/spongycastle/pqc/math/linearalgebra/IntUtils;->י([I)[I

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 234
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 235
    const/4 v2, 0x0

    :goto_0
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->biW:[I

    array-length v0, v0

    if-ge v2, v0, :cond_2

    .line 237
    const/4 v3, 0x0

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->bfX:Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;

    invoke-virtual {v0}, Lorg/spongycastle/pqc/math/linearalgebra/GF2mField;->qs()I

    move-result v0

    if-ge v3, v0, :cond_1

    .line 239
    and-int/lit8 v4, v3, 0x1f

    .line 240
    const/4 v0, 0x1

    shl-int v5, v0, v4

    .line 241
    iget-object v0, p0, Lorg/spongycastle/pqc/math/linearalgebra/GF2mVector;->biW:[I

    aget v0, v0, v2

    and-int v6, v0, v5

    .line 242
    if-eqz v6, :cond_0

    .line 244
    const/16 v0, 0x31

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 248
    :cond_0
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 237
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 251
    :cond_1
    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 253
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˏ(Lorg/spongycastle/pqc/math/linearalgebra/Vector;)Lorg/spongycastle/pqc/math/linearalgebra/Vector;
    .locals 2

    .line 169
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "not implemented"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
