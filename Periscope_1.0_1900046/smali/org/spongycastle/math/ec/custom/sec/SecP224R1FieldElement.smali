.class public Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source ""


# static fields
.field public static final bdg:Ljava/math/BigInteger;


# instance fields
.field protected aLJ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 13
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Curve;->aFA:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->bdg:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 29
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 18
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->bdg:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP224R1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ﹳ(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    .line 25
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0

    .line 33
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    .line 35
    return-void
.end method

.method private static ʻ([I[I[I)Z
    .locals 8

    .line 246
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 247
    invoke-static {p1, v2}, Lorg/spongycastle/math/raw/Nat224;->ˍ([I[I)V

    .line 248
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v3

    .line 249
    const/4 v0, 0x1

    const/4 v1, 0x0

    aput v0, v3, v1

    .line 250
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v4

    .line 251
    invoke-static {p0, v2, v3, v4, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->ˊ([I[I[I[I[I)V

    .line 253
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v5

    .line 254
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v6

    .line 256
    const/4 v7, 0x1

    :goto_0
    const/16 v0, 0x60

    if-ge v7, v0, :cond_1

    .line 258
    invoke-static {v2, v5}, Lorg/spongycastle/math/raw/Nat224;->ˍ([I[I)V

    .line 259
    invoke-static {v3, v6}, Lorg/spongycastle/math/raw/Nat224;->ˍ([I[I)V

    .line 261
    invoke-static {v2, v3, v4, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->ˊ([I[I[I[I)V

    .line 263
    invoke-static {v2}, Lorg/spongycastle/math/raw/Nat224;->ﹳ([I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->aIX:[I

    invoke-static {v0, v6, p2}, Lorg/spongycastle/math/raw/Mod;->ͺ([I[I[I)V

    .line 266
    invoke-static {p2, v5, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 267
    const/4 v0, 0x1

    return v0

    .line 256
    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 271
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private static ˊ([I[I[I[I)V
    .locals 4

    .line 235
    invoke-static {p1, p0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 236
    invoke-static {p1, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ʾ([I[I)V

    .line 237
    invoke-static {p0, p3}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ι([I[I)V

    .line 238
    invoke-static {p2, p3, p0}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˋ([I[I[I)V

    .line 239
    invoke-static {p2, p3, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 240
    const/4 v0, 0x7

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, p2, v1, v2}, Lorg/spongycastle/math/raw/Nat;->ˎ(I[III)I

    move-result v3

    .line 241
    invoke-static {v3, p2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ʽ(I[I)V

    .line 242
    return-void
.end method

.method private static ˊ([I[I[I[I[I)V
    .locals 11

    .line 213
    invoke-static {p0, p3}, Lorg/spongycastle/math/raw/Nat224;->ˍ([I[I)V

    .line 215
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v7

    .line 216
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v8

    .line 218
    const/4 v9, 0x0

    :goto_0
    const/4 v0, 0x7

    if-ge v9, v0, :cond_1

    .line 220
    invoke-static {p1, v7}, Lorg/spongycastle/math/raw/Nat224;->ˍ([I[I)V

    .line 221
    invoke-static {p2, v8}, Lorg/spongycastle/math/raw/Nat224;->ˍ([I[I)V

    .line 223
    const/4 v0, 0x1

    shl-int v10, v0, v9

    .line 224
    :goto_1
    add-int/lit8 v10, v10, -0x1

    if-ltz v10, :cond_0

    .line 226
    invoke-static {p1, p2, p3, p4}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->ˊ([I[I[I[I)V

    goto :goto_1

    .line 229
    :cond_0
    move-object v0, p0

    move-object v1, v7

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->ˊ([I[I[I[I[I[I[I)V

    .line 218
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 231
    :cond_1
    return-void
.end method

.method private static ˊ([I[I[I[I[I[I[I)V
    .locals 0

    .line 199
    invoke-static {p4, p2, p6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 200
    invoke-static {p6, p0, p6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 201
    invoke-static {p3, p1, p5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 202
    invoke-static {p5, p6, p5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˋ([I[I[I)V

    .line 203
    invoke-static {p3, p2, p6}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 204
    invoke-static {p5, p3}, Lorg/spongycastle/math/raw/Nat224;->ˍ([I[I)V

    .line 205
    invoke-static {p4, p1, p4}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 206
    invoke-static {p4, p6, p4}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˋ([I[I[I)V

    .line 207
    invoke-static {p4, p5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ι([I[I)V

    .line 208
    invoke-static {p5, p0, p5}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 209
    return-void
.end method

.method private static ˍ([I)Z
    .locals 4

    .line 182
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v1

    .line 183
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 184
    invoke-static {p0, v1}, Lorg/spongycastle/math/raw/Nat224;->ˍ([I[I)V

    .line 186
    const/4 v3, 0x0

    :goto_0
    const/4 v0, 0x7

    if-ge v3, v0, :cond_0

    .line 188
    invoke-static {v1, v2}, Lorg/spongycastle/math/raw/Nat224;->ˍ([I[I)V

    .line 189
    const/4 v0, 0x1

    shl-int/2addr v0, v3

    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˋ([II[I)V

    .line 190
    invoke-static {v1, v2, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 186
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 193
    :cond_0
    const/16 v0, 0x5f

    invoke-static {v1, v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˋ([II[I)V

    .line 194
    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->ᐨ([I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 161
    if-ne p1, p0, :cond_0

    .line 163
    const/4 v0, 0x1

    return v0

    .line 166
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    if-nez v0, :cond_1

    .line 168
    const/4 v0, 0x0

    return v0

    .line 171
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    move-object v2, v0

    .line 172
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    iget-object v1, v2, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat224;->ˈ([I[I)Z

    move-result v0

    return v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 64
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->bdg:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 177
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->bdg:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/spongycastle/util/Arrays;->ˋ([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->ﹳ([I)Z

    move-result v0

    return v0
.end method

.method public pA()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->ᐨ([I)Z

    move-result v0

    return v0
.end method

.method public pB()Z
    .locals 2

    .line 49
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat224;->ʻ([II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pv()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 76
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ʼ([I[I)V

    .line 78
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public pw()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 106
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v1

    .line 107
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ʽ([I[I)V

    .line 108
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public px()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 113
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v1

    .line 114
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ι([I[I)V

    .line 115
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public py()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 121
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 122
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->aIX:[I

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Mod;->ͺ([I[I[I)V

    .line 123
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public pz()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 5

    .line 132
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    .line 133
    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->ﹳ([I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->ᐨ([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    :cond_0
    return-object p0

    .line 138
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 139
    invoke-static {v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ʽ([I[I)V

    .line 141
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->aIX:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Mod;->ᐧ([I)[I

    move-result-object v3

    .line 142
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v4

    .line 144
    invoke-static {v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->ˍ([I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    const/4 v0, 0x0

    return-object v0

    .line 149
    :cond_2
    :goto_0
    invoke-static {v2, v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->ʻ([I[I[I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 151
    invoke-static {v3, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ʼ([I[I)V

    goto :goto_0

    .line 154
    :cond_3
    invoke-static {v4, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ι([I[I)V

    .line 156
    invoke-static {v1, v3}, Lorg/spongycastle/math/raw/Nat224;->ˈ([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->ﾞ([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 90
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 91
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 92
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 98
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 99
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->aIX:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Mod;->ͺ([I[I[I)V

    .line 100
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˎ([I[I[I)V

    .line 101
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 69
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 70
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ˋ([I[I[I)V

    .line 71
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 83
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 84
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1Field;->ᐝ([I[I[I)V

    .line 85
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224R1FieldElement;-><init>([I)V

    return-object v0
.end method
