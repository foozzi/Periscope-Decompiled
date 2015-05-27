.class public Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;
.super Lorg/spongycastle/math/ec/ECFieldElement;
.source ""


# static fields
.field public static final bdg:Ljava/math/BigInteger;

.field private static final bdh:[I


# instance fields
.field protected aLJ:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 12
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Curve;->aFA:Ljava/math/BigInteger;

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->bdg:Ljava/math/BigInteger;

    .line 15
    const/4 v0, 0x7

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->bdh:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x33bfd202
        -0x23052ecd
        0x2287624a
        -0x3c7ee458
        -0x57aaa704
        0x1eaef5d7
        -0x7120eab4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 32
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    .line 33
    return-void
.end method

.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 2

    .line 21
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 22
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/math/BigInteger;->signum()I

    move-result v0

    if-ltz v0, :cond_0

    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->bdg:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "x value invalid for SecP224K1FieldElement"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_1
    invoke-static {p1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ﹳ(Ljava/math/BigInteger;)[I

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    .line 28
    return-void
.end method

.method protected constructor <init>([I)V
    .locals 0

    .line 36
    invoke-direct {p0}, Lorg/spongycastle/math/ec/ECFieldElement;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    .line 38
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 225
    if-ne p1, p0, :cond_0

    .line 227
    const/4 v0, 0x1

    return v0

    .line 230
    :cond_0
    instance-of v0, p1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    if-nez v0, :cond_1

    .line 232
    const/4 v0, 0x0

    return v0

    .line 235
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    move-object v2, v0

    .line 236
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    iget-object v1, v2, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/raw/Nat224;->ˈ([I[I)Z

    move-result v0

    return v0
.end method

.method public getFieldSize()I
    .locals 1

    .line 67
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->bdg:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 4

    .line 241
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->bdg:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->hashCode()I

    move-result v0

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-static {v1, v2, v3}, Lorg/spongycastle/util/Arrays;->ˋ([III)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public isZero()Z
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->ﹳ([I)Z

    move-result v0

    return v0
.end method

.method public pA()Z
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->ᐨ([I)Z

    move-result v0

    return v0
.end method

.method public pB()Z
    .locals 2

    .line 52
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

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

    .line 79
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v1

    .line 80
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ʼ([I[I)V

    .line 81
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public pw()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 109
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v1

    .line 110
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ʽ([I[I)V

    .line 111
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public px()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 2

    .line 116
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v1

    .line 117
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ι([I[I)V

    .line 118
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v1}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public py()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 124
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 125
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Mod;->ͺ([I[I[I)V

    .line 126
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public pz()Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 15

    .line 148
    iget-object v1, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    .line 149
    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->ﹳ([I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v1}, Lorg/spongycastle/math/raw/Nat224;->ᐨ([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    :cond_0
    return-object p0

    .line 154
    :cond_1
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 155
    invoke-static {v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ι([I[I)V

    .line 156
    invoke-static {v2, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 157
    move-object v3, v2

    .line 158
    invoke-static {v2, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ι([I[I)V

    .line 159
    invoke-static {v3, v1, v3}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 160
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v4

    .line 161
    invoke-static {v3, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ι([I[I)V

    .line 162
    invoke-static {v4, v1, v4}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 163
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v5

    .line 164
    const/4 v0, 0x4

    invoke-static {v4, v0, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 165
    invoke-static {v5, v4, v5}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 166
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v6

    .line 167
    const/4 v0, 0x3

    invoke-static {v5, v0, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 168
    invoke-static {v6, v3, v6}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 169
    move-object v7, v6

    .line 170
    const/16 v0, 0x8

    invoke-static {v6, v0, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 171
    invoke-static {v7, v5, v7}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 172
    move-object v8, v5

    .line 173
    const/4 v0, 0x4

    invoke-static {v7, v0, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 174
    invoke-static {v8, v4, v8}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 175
    move-object v9, v4

    .line 176
    const/16 v0, 0x13

    invoke-static {v8, v0, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 177
    invoke-static {v9, v7, v9}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 178
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v10

    .line 179
    const/16 v0, 0x2a

    invoke-static {v9, v0, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 180
    invoke-static {v10, v9, v10}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 181
    move-object v11, v9

    .line 182
    const/16 v0, 0x17

    invoke-static {v10, v0, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 183
    invoke-static {v11, v8, v11}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 184
    move-object v12, v8

    .line 185
    const/16 v0, 0x54

    invoke-static {v11, v0, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 186
    invoke-static {v12, v10, v12}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 188
    move-object v13, v12

    .line 189
    const/16 v0, 0x14

    invoke-static {v13, v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 190
    invoke-static {v13, v7, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 191
    const/4 v0, 0x3

    invoke-static {v13, v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 192
    invoke-static {v13, v1, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 193
    const/4 v0, 0x2

    invoke-static {v13, v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 194
    invoke-static {v13, v1, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 195
    const/4 v0, 0x4

    invoke-static {v13, v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([II[I)V

    .line 196
    invoke-static {v13, v3, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 197
    invoke-static {v13, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ι([I[I)V

    .line 199
    move-object v14, v10

    .line 200
    invoke-static {v13, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ι([I[I)V

    .line 202
    invoke-static {v1, v14}, Lorg/spongycastle/math/raw/Nat224;->ˈ([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 204
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0

    .line 211
    :cond_2
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->bdh:[I

    invoke-static {v13, v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 213
    invoke-static {v13, v14}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ι([I[I)V

    .line 215
    invoke-static {v1, v14}, Lorg/spongycastle/math/raw/Nat224;->ˈ([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v13}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0

    .line 220
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public toBigInteger()Ljava/math/BigInteger;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0}, Lorg/spongycastle/math/raw/Nat224;->ﾞ([I)Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public ʻ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 93
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 94
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 95
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public ʼ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 101
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 102
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->aIX:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/raw/Mod;->ͺ([I[I[I)V

    .line 103
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v2, v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˎ([I[I[I)V

    .line 104
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public ˏ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 72
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 73
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ˋ([I[I[I)V

    .line 74
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0
.end method

.method public ᐝ(Lorg/spongycastle/math/ec/ECFieldElement;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 3

    .line 86
    invoke-static {}, Lorg/spongycastle/math/raw/Nat224;->qv()[I

    move-result-object v2

    .line 87
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    move-object v1, p1

    check-cast v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    iget-object v1, v1, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;->aLJ:[I

    invoke-static {v0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1Field;->ᐝ([I[I[I)V

    .line 88
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;

    invoke-direct {v0, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP224K1FieldElement;-><init>([I)V

    return-object v0
.end method
