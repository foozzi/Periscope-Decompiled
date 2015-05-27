.class public Lorg/spongycastle/crypto/macs/SipHash;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# instance fields
.field protected final aKM:I

.field protected final aOn:I

.field protected aOo:J

.field protected aOp:J

.field protected aOq:J

.field protected aOr:J

.field protected aOs:J

.field protected aOt:J

.field protected aOu:J

.field protected aOv:I

.field protected aOw:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOw:I

    .line 36
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aKM:I

    .line 37
    const/4 v0, 0x4

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOn:I

    .line 38
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 27
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    .line 28
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOw:I

    .line 48
    iput p1, p0, Lorg/spongycastle/crypto/macs/SipHash;->aKM:I

    .line 49
    iput p2, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOn:I

    .line 50
    return-void
.end method

.method protected static rotateLeft(JI)J
    .locals 4

    .line 214
    shl-long v0, p0, p2

    neg-int v2, p2

    ushr-long v2, p0, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 3

    .line 162
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->ka()J

    move-result-wide v1

    .line 163
    invoke-static {v1, v2, p1, p2}, Lorg/spongycastle/util/Pack;->ʼ(J[BI)V

    .line 164
    const/16 v0, 0x8

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SipHash-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->aKM:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 59
    const/16 v0, 0x8

    return v0
.end method

.method public ka()J
    .locals 8

    .line 142
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    iget v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    rsub-int/lit8 v2, v2, 0x7

    shl-int/lit8 v2, v2, 0x3

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 143
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 144
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    iget v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOw:I

    shl-int/lit8 v2, v2, 0x3

    iget v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    add-int/2addr v2, v3

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 146
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->kb()V

    .line 148
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOs:J

    const-wide/16 v2, 0xff

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOs:J

    .line 150
    iget v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOn:I

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/macs/SipHash;->ʕ(I)V

    .line 152
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOq:J

    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOr:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOs:J

    xor-long/2addr v0, v2

    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOt:J

    xor-long v6, v0, v2

    .line 154
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->reset()V

    .line 156
    return-wide v6
.end method

.method protected kb()V
    .locals 4

    .line 181
    iget v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOw:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOw:I

    .line 182
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOt:J

    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOt:J

    .line 183
    iget v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aKM:I

    invoke-virtual {p0, v0}, Lorg/spongycastle/crypto/macs/SipHash;->ʕ(I)V

    .line 184
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOq:J

    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOq:J

    .line 185
    return-void
.end method

.method public reset()V
    .locals 4

    .line 169
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOo:J

    const-wide v2, 0x736f6d6570736575L    # 1.0986868386607877E248

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOq:J

    .line 170
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOp:J

    const-wide v2, 0x646f72616e646f6dL    # 6.222199573468475E175

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOr:J

    .line 171
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOo:J

    const-wide v2, 0x6c7967656e657261L    # 3.4208747916531402E214

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOs:J

    .line 172
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOp:J

    const-wide v2, 0x7465646279746573L    # 4.901176695720602E252

    xor-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOt:J

    .line 174
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 175
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    .line 176
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOw:I

    .line 177
    return-void
.end method

.method public update(B)V
    .locals 6

    .line 85
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 86
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    int-to-long v2, p1

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 88
    iget v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 90
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->kb()V

    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    .line 93
    :cond_0
    return-void
.end method

.method public update([BII)V
    .locals 11

    .line 99
    const/4 v6, 0x0

    and-int/lit8 v7, p3, -0x8

    .line 100
    iget v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    if-nez v0, :cond_2

    .line 102
    :goto_0
    if-ge v6, v7, :cond_0

    .line 104
    add-int v0, p2, v6

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->ᐡ([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 105
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->kb()V

    .line 102
    add-int/lit8 v6, v6, 0x8

    goto :goto_0

    .line 107
    :cond_0
    :goto_1
    if-ge v6, p3, :cond_1

    .line 109
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 110
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    add-int v2, p2, v6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 107
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 112
    :cond_1
    sub-int v0, p3, v7

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    goto/16 :goto_4

    .line 116
    :cond_2
    iget v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    shl-int/lit8 v8, v0, 0x3

    .line 117
    :goto_2
    if-ge v6, v7, :cond_3

    .line 119
    add-int v0, p2, v6

    invoke-static {p1, v0}, Lorg/spongycastle/util/Pack;->ᐡ([BI)J

    move-result-wide v9

    .line 120
    shl-long v0, v9, v8

    iget-wide v2, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    neg-int v4, v8

    ushr-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 121
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->kb()V

    .line 122
    iput-wide v9, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 117
    add-int/lit8 v6, v6, 0x8

    goto :goto_2

    .line 124
    :cond_3
    :goto_3
    if-ge v6, p3, :cond_5

    .line 126
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    const/16 v2, 0x8

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 127
    iget-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    add-int v2, p2, v6

    aget-byte v2, p1, v2

    int-to-long v2, v2

    const-wide/16 v4, 0xff

    and-long/2addr v2, v4

    const/16 v4, 0x38

    shl-long/2addr v2, v4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOu:J

    .line 129
    iget v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_4

    .line 131
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->kb()V

    .line 132
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOv:I

    .line 124
    :cond_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 136
    :cond_5
    :goto_4
    return-void
.end method

.method protected ʕ(I)V
    .locals 10

    .line 189
    iget-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOq:J

    iget-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOr:J

    iget-wide v5, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOs:J

    iget-wide v7, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOt:J

    .line 191
    const/4 v9, 0x0

    :goto_0
    if-ge v9, p1, :cond_0

    .line 193
    add-long/2addr v1, v3

    .line 194
    add-long/2addr v5, v7

    .line 195
    const/16 v0, 0xd

    invoke-static {v3, v4, v0}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v3

    .line 196
    const/16 v0, 0x10

    invoke-static {v7, v8, v0}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v7

    .line 197
    xor-long/2addr v3, v1

    .line 198
    xor-long/2addr v7, v5

    .line 199
    const/16 v0, 0x20

    invoke-static {v1, v2, v0}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v1

    .line 200
    add-long/2addr v5, v3

    .line 201
    add-long/2addr v1, v7

    .line 202
    const/16 v0, 0x11

    invoke-static {v3, v4, v0}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v3

    .line 203
    const/16 v0, 0x15

    invoke-static {v7, v8, v0}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v7

    .line 204
    xor-long/2addr v3, v5

    .line 205
    xor-long/2addr v7, v1

    .line 206
    const/16 v0, 0x20

    invoke-static {v5, v6, v0}, Lorg/spongycastle/crypto/macs/SipHash;->rotateLeft(JI)J

    move-result-wide v5

    .line 191
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 209
    :cond_0
    iput-wide v1, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOq:J

    iput-wide v3, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOr:J

    iput-wide v5, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOs:J

    iput-wide v7, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOt:J

    .line 210
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 4

    .line 65
    instance-of v0, p1, Lorg/spongycastle/crypto/params/KeyParameter;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'params\' must be an instance of KeyParameter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    move-object v2, v0

    .line 70
    invoke-virtual {v2}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v3

    .line 71
    array-length v0, v3

    const/16 v1, 0x10

    if-eq v0, v1, :cond_1

    .line 73
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "\'params\' must be a 128-bit key"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    const/4 v0, 0x0

    invoke-static {v3, v0}, Lorg/spongycastle/util/Pack;->ᐡ([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOo:J

    .line 77
    const/16 v0, 0x8

    invoke-static {v3, v0}, Lorg/spongycastle/util/Pack;->ᐡ([BI)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/spongycastle/crypto/macs/SipHash;->aOp:J

    .line 79
    invoke-virtual {p0}, Lorg/spongycastle/crypto/macs/SipHash;->reset()V

    .line 80
    return-void
.end method
