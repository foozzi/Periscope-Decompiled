.class public Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source ""


# static fields
.field public static final bdg:Ljava/math/BigInteger;


# instance fields
.field protected aLJ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 12
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->aFA:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->bdg:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 28
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 17
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 18
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->bdg:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP192K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ﹳ(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    .line 24
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    .line 34
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 195
    if-ne p1, p0, :cond_0

    .line 197
    const/4 v0, 0x1

    return v0

    .line 200
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    if-nez v0, :cond_1

    .line 202
    const/4 v0, 0x0

    return v0

    .line 205
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    move-object v2, v0

    .line 206
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    iget-object v1, v2, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat192;->ˈ([I[I)Z

    move-result v0

    return v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 63
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->bdg:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 211
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->bdg:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v1, v2, v3}, Lorg/spongycastle/util/Arrays;->ˋ([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 38
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat192;->ﹳ([I)Z

    move-result v0

    return v0
.end method

.method public pA()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat192;->ᐨ([I)Z

    move-result v0

    return v0
.end method

.method public pB()Z
    .locals 2

    .line 48
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat192;->ʻ([II)I

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

    .line 75
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v1

    .line 76
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ʼ([I[I)V

    .line 77
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public pw()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 105
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v1

    .line 106
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ʽ([I[I)V

    .line 107
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public px()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 112
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v1

    .line 113
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ι([I[I)V

    .line 114
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public py()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 120
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v2

    .line 121
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Mod;->ͺ([I[I[I)V

    .line 122
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public pz()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 14

    .line 141
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    .line 142
    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat192;->ﹳ([I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat192;->ᐨ([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 144
    :cond_0
    return-object p0

    .line 147
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v2

    .line 148
    invoke-static {v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ι([I[I)V

    .line 149
    invoke-static {v2, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 150
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v3

    .line 151
    invoke-static {v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ι([I[I)V

    .line 152
    invoke-static {v3, v1, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 153
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v4

    .line 154
    const/4 v0, 0x3

    invoke-static {v3, v0, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 155
    invoke-static {v4, v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 156
    move-object v5, v4

    .line 157
    const/4 v0, 0x2

    invoke-static {v4, v0, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 158
    invoke-static {v5, v2, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 159
    move-object v6, v2

    .line 160
    const/16 v0, 0x8

    invoke-static {v5, v0, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 161
    invoke-static {v6, v5, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 162
    move-object v7, v5

    .line 163
    const/4 v0, 0x3

    invoke-static {v6, v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 164
    invoke-static {v7, v3, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 165
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v8

    .line 166
    const/16 v0, 0x10

    invoke-static {v7, v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 167
    invoke-static {v8, v6, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 168
    move-object v9, v6

    .line 169
    const/16 v0, 0x23

    invoke-static {v8, v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 170
    invoke-static {v9, v8, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 171
    move-object v10, v8

    .line 172
    const/16 v0, 0x46

    invoke-static {v9, v0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 173
    invoke-static {v10, v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 174
    move-object v11, v9

    .line 175
    const/16 v0, 0x13

    invoke-static {v10, v0, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 176
    invoke-static {v11, v7, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 178
    move-object v12, v11

    .line 179
    const/16 v0, 0x14

    invoke-static {v12, v0, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 180
    invoke-static {v12, v7, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 181
    const/4 v0, 0x4

    invoke-static {v12, v0, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 182
    invoke-static {v12, v3, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 183
    const/4 v0, 0x6

    invoke-static {v12, v0, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([II[I)V

    .line 184
    invoke-static {v12, v3, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 185
    invoke-static {v12, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ι([I[I)V

    .line 187
    move-object v13, v3

    .line 188
    invoke-static {v12, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ι([I[I)V

    .line 190
    invoke-static {v1, v13}, Lorg/spongycastle/math/raw/Nat192;->ˈ([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat192;->ﾞ([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 89
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v2

    .line 90
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 91
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 97
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v2

    .line 98
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->aIX:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Mod;->ͺ([I[I[I)V

    .line 99
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˎ([I[I[I)V

    .line 100
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 68
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v2

    .line 69
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ˋ([I[I[I)V

    .line 70
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 82
    invoke-static {}, Lorg/spongycastle/math/raw/Nat192;->qv()[I

    move-result-object v2

    .line 83
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Field;->ᐝ([I[I[I)V

    .line 84
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>([I)V

    return-object v0
.end method