.class public Lorg/spongycastle/crypto/digests/SHA512tDigest;
.super Lorg/spongycastle/crypto/digests/LongDigest;
.source ""


# instance fields
.field private aHc:I

.field private aHd:J

.field private aHe:J

.field private aHf:J

.field private aHg:J

.field private aHh:J

.field private aHi:J

.field private aHj:J

.field private aHk:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 21
    invoke-direct {p0}, Lorg/spongycastle/crypto/digests/LongDigest;-><init>()V

    .line 22
    const/16 v0, 0x200

    if-lt p1, v0, :cond_0

    .line 24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength cannot be >= 512"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    rem-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 29
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength needs to be a multiple of 8"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 32
    :cond_1
    const/16 v0, 0x180

    if-ne p1, v0, :cond_2

    .line 34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "bitLength cannot be 384 use SHA384 instead"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_2
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    .line 39
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    mul-int/lit8 v0, v0, 0x8

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ᓲ(I)V

    .line 41
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->reset()V

    .line 42
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/digests/SHA512tDigest;)V
    .locals 1

    .line 50
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/digests/LongDigest;-><init>(Lorg/spongycastle/crypto/digests/LongDigest;)V

    .line 52
    iget v0, p1, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    iput v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    .line 54
    invoke-virtual {p0, p1}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˊ(Lorg/spongycastle/util/Memoable;)V

    .line 55
    return-void
.end method

.method private static ˊ(J[BII)V
    .locals 3

    .line 171
    if-lez p4, :cond_0

    .line 173
    const/16 v0, 0x20

    ushr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2, p3, p4}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˏ(I[BII)V

    .line 175
    const/4 v0, 0x4

    if-le p4, v0, :cond_0

    .line 177
    const-wide v0, 0xffffffffL

    and-long/2addr v0, p0

    long-to-int v0, v0

    add-int/lit8 v1, p3, 0x4

    add-int/lit8 v2, p4, -0x4

    invoke-static {v0, p2, v1, v2}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˏ(I[BII)V

    .line 180
    :cond_0
    return-void
.end method

.method private static ˏ(I[BII)V
    .locals 4

    .line 184
    const/4 v0, 0x4

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 185
    :goto_0
    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_0

    .line 187
    rsub-int/lit8 v0, v2, 0x3

    mul-int/lit8 v3, v0, 0x8

    .line 188
    add-int v0, p2, v2

    ushr-int v1, p0, v3

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 189
    goto :goto_0

    .line 190
    :cond_0
    return-void
.end method

.method private ᓲ(I)V
    .locals 2

    .line 120
    const-wide v0, -0x3053bc3da9e69353L    # -6.392239886847908E75

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGk:J

    .line 121
    const-wide v0, 0x1ec20b20216f029eL    # 1.604250256667292E-160

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGl:J

    .line 122
    const-wide v0, -0x6634a928a4cea272L

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGm:J

    .line 123
    const-wide v0, 0xea509ffab89354L

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGn:J

    .line 124
    const-wide v0, -0xb540825f7bcd88cL

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGo:J

    .line 125
    const-wide v0, 0x3ea0cd298e9bc9baL    # 5.007211971427005E-7

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGp:J

    .line 126
    const-wide v0, -0x45d983f1a11be732L    # -1.418977391716189E-28

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGq:J

    .line 127
    const-wide v0, -0x1ba974349247b24L

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGr:J

    .line 129
    const/16 v0, 0x53

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 130
    const/16 v0, 0x48

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 131
    const/16 v0, 0x41

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 132
    const/16 v0, 0x2d

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 133
    const/16 v0, 0x35

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 134
    const/16 v0, 0x31

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 135
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 136
    const/16 v0, 0x2f

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 138
    const/16 v0, 0x64

    if-le p1, v0, :cond_0

    .line 140
    div-int/lit8 v0, p1, 0x64

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 141
    rem-int/lit8 p1, p1, 0x64

    .line 142
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 143
    rem-int/lit8 p1, p1, 0xa

    .line 144
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    goto :goto_0

    .line 146
    :cond_0
    const/16 v0, 0xa

    if-le p1, v0, :cond_1

    .line 148
    div-int/lit8 v0, p1, 0xa

    add-int/lit8 v0, v0, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 149
    rem-int/lit8 p1, p1, 0xa

    .line 150
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    goto :goto_0

    .line 154
    :cond_1
    add-int/lit8 v0, p1, 0x30

    int-to-byte v0, v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->update(B)V

    .line 157
    :goto_0
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->finish()V

    .line 159
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGk:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHd:J

    .line 160
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGl:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHe:J

    .line 161
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGm:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHf:J

    .line 162
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGn:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHg:J

    .line 163
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGo:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHh:J

    .line 164
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGp:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHi:J

    .line 165
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGq:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHj:J

    .line 166
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGr:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHk:J

    .line 167
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 5

    .line 82
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->finish()V

    .line 84
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGk:J

    iget v2, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    invoke-static {v0, v1, p1, p2, v2}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˊ(J[BII)V

    .line 85
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGl:J

    add-int/lit8 v2, p2, 0x8

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    add-int/lit8 v3, v3, -0x8

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˊ(J[BII)V

    .line 86
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGm:J

    add-int/lit8 v2, p2, 0x10

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    add-int/lit8 v3, v3, -0x10

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˊ(J[BII)V

    .line 87
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGn:J

    add-int/lit8 v2, p2, 0x18

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    add-int/lit8 v3, v3, -0x18

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˊ(J[BII)V

    .line 88
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGo:J

    add-int/lit8 v2, p2, 0x20

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    add-int/lit8 v3, v3, -0x20

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˊ(J[BII)V

    .line 89
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGp:J

    add-int/lit8 v2, p2, 0x28

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    add-int/lit8 v3, v3, -0x28

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˊ(J[BII)V

    .line 90
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGq:J

    add-int/lit8 v2, p2, 0x30

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    add-int/lit8 v3, v3, -0x30

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˊ(J[BII)V

    .line 91
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGr:J

    add-int/lit8 v2, p2, 0x38

    iget v3, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    add-int/lit8 v3, v3, -0x38

    invoke-static {v0, v1, p1, v2, v3}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->ˊ(J[BII)V

    .line 93
    invoke-virtual {p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;->reset()V

    .line 95
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 3

    .line 70
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SHA-512/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    mul-int/lit8 v1, v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iJ()I
    .locals 1

    .line 75
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    return v0
.end method

.method public iU()Lorg/spongycastle/util/Memoable;
    .locals 1

    .line 194
    new-instance v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    invoke-direct {v0, p0}, Lorg/spongycastle/crypto/digests/SHA512tDigest;-><init>(Lorg/spongycastle/crypto/digests/SHA512tDigest;)V

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 103
    invoke-super {p0}, Lorg/spongycastle/crypto/digests/LongDigest;->reset()V

    .line 108
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHd:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGk:J

    .line 109
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHe:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGl:J

    .line 110
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHf:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGm:J

    .line 111
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHg:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGn:J

    .line 112
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHh:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGo:J

    .line 113
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHi:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGp:J

    .line 114
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHj:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGq:J

    .line 115
    iget-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHk:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aGr:J

    .line 116
    return-void
.end method

.method public ˊ(Lorg/spongycastle/util/Memoable;)V
    .locals 3

    .line 199
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/digests/SHA512tDigest;

    move-object v2, v0

    .line 201
    iget v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    iget v1, v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHc:I

    if-eq v0, v1, :cond_0

    .line 203
    new-instance v0, Lorg/spongycastle/util/MemoableResetException;

    const-string v1, "digestLength inappropriate in other"

    invoke-direct {v0, v1}, Lorg/spongycastle/util/MemoableResetException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 206
    :cond_0
    invoke-super {p0, v2}, Lorg/spongycastle/crypto/digests/LongDigest;->ˊ(Lorg/spongycastle/crypto/digests/LongDigest;)V

    .line 208
    iget-wide v0, v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHd:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHd:J

    .line 209
    iget-wide v0, v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHe:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHe:J

    .line 210
    iget-wide v0, v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHf:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHf:J

    .line 211
    iget-wide v0, v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHg:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHg:J

    .line 212
    iget-wide v0, v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHh:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHh:J

    .line 213
    iget-wide v0, v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHi:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHi:J

    .line 214
    iget-wide v0, v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHj:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHj:J

    .line 215
    iget-wide v0, v2, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHk:J

    iput-wide v0, p0, Lorg/spongycastle/crypto/digests/SHA512tDigest;->aHk:J

    .line 216
    return-void
.end method
