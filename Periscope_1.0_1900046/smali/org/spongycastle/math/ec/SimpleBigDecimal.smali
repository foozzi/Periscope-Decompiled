.class Lorg/spongycastle/math/ec/SimpleBigDecimal;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final bcR:Ljava/math/BigInteger;

.field private final bcS:I


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;I)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-gez p2, :cond_0

    .line 50
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 53
    :cond_0
    iput-object p1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    .line 54
    iput p2, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    .line 55
    return-void
.end method

.method private ˊ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)V
    .locals 2

    .line 59
    iget v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    iget v1, p1, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    if-eq v0, v1, :cond_0

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only SimpleBigDecimal of same scale allowed in arithmetic operations"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Ljava/math/BigInteger;)I
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    iget v1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    invoke-virtual {p1, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 228
    if-ne p0, p1, :cond_0

    .line 230
    const/4 v0, 0x1

    return v0

    .line 233
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/SimpleBigDecimal;

    if-nez v0, :cond_1

    .line 235
    const/4 v0, 0x0

    return v0

    .line 238
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-object v2, v0

    .line 239
    iget-object v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    iget-object v1, v2, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    iget v1, v2, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 244
    iget-object v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget v1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public qc()Lorg/spongycastle/math/ec/SimpleBigDecimal;
    .locals 3

    .line 95
    new-instance v0, Lorg/spongycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public qd()Ljava/math/BigInteger;
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    iget v1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftRight(I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public qe()Ljava/math/BigInteger;
    .locals 3

    .line 155
    new-instance v2, Lorg/spongycastle/math/ec/SimpleBigDecimal;

    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    const/4 v1, 0x1

    invoke-direct {v2, v0, v1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    .line 156
    iget v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    invoke-virtual {v2, v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ｲ(I)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->qd()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public qf()I
    .locals 1

    .line 181
    iget v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    .line 186
    iget v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    if-nez v0, :cond_0

    .line 188
    iget-object v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    invoke-virtual {p0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->qd()Ljava/math/BigInteger;

    move-result-object v2

    .line 193
    iget-object v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    iget v1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    invoke-virtual {v2, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 194
    iget-object v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 196
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    iget v1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v3

    .line 199
    :cond_1
    invoke-virtual {v2}, Ljava/math/BigInteger;->signum()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 201
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v2, v0}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v2

    .line 203
    :cond_2
    invoke-virtual {v2}, Ljava/math/BigInteger;->toString()Ljava/lang/String;

    move-result-object v4

    .line 205
    iget v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    new-array v5, v0, [C

    .line 206
    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 207
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    .line 208
    iget v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    sub-int v8, v0, v7

    .line 209
    const/4 v9, 0x0

    :goto_0
    if-ge v9, v8, :cond_3

    .line 211
    const/16 v0, 0x30

    aput-char v0, v5, v9

    .line 209
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 213
    :cond_3
    const/4 v9, 0x0

    :goto_1
    if-ge v9, v7, :cond_4

    .line 215
    add-int v0, v8, v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->charAt(I)C

    move-result v1

    aput-char v1, v5, v0

    .line 213
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 217
    :cond_4
    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, v5}, Ljava/lang/String;-><init>([C)V

    .line 219
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 220
    const-string v0, "."

    invoke-virtual {v10, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 221
    invoke-virtual {v10, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 223
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;
    .locals 3

    .line 84
    invoke-direct {p0, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˊ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)V

    .line 85
    new-instance v0, Lorg/spongycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    iget-object v2, p1, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public ˍ(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/SimpleBigDecimal;
    .locals 3

    .line 105
    new-instance v0, Lorg/spongycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    iget v2, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    invoke-virtual {p1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    iget v2, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    invoke-direct {v0, v1, v2}, Lorg/spongycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method

.method public ˎ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;
    .locals 1

    .line 100
    invoke-virtual {p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->qc()Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/SimpleBigDecimal;->ˋ(Lorg/spongycastle/math/ec/SimpleBigDecimal;)Lorg/spongycastle/math/ec/SimpleBigDecimal;

    move-result-object v0

    return-object v0
.end method

.method public ｲ(I)Lorg/spongycastle/math/ec/SimpleBigDecimal;
    .locals 3

    .line 68
    if-gez p1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "scale may not be negative"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    iget v0, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    if-ne p1, v0, :cond_1

    .line 75
    return-object p0

    .line 78
    :cond_1
    new-instance v0, Lorg/spongycastle/math/ec/SimpleBigDecimal;

    iget-object v1, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcR:Ljava/math/BigInteger;

    iget v2, p0, Lorg/spongycastle/math/ec/SimpleBigDecimal;->bcS:I

    sub-int v2, p1, v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->shiftLeft(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/spongycastle/math/ec/SimpleBigDecimal;-><init>(Ljava/math/BigInteger;I)V

    return-object v0
.end method
