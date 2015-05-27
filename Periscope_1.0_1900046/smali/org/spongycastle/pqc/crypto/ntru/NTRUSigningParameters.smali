.class public Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public aMJ:I

.field public aOn:I

.field public bgC:I

.field public bgs:Lorg/spongycastle/crypto/Digest;

.field public bhm:I

.field public bhn:I

.field public bho:I

.field public bhp:I

.field bhq:D

.field public bhr:D

.field bhs:D

.field public bht:D

.field public bhu:I

.field bhz:I


# direct methods
.method public constructor <init>(IIIIDDLorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const/16 v0, 0x64

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhu:I

    .line 28
    const/4 v0, 0x6

    iput v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhz:I

    .line 44
    iput p1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aMJ:I

    .line 45
    iput p2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgC:I

    .line 46
    iput p3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aOn:I

    .line 47
    iput p4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhp:I

    .line 48
    iput-wide p5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhq:D

    .line 49
    iput-wide p7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhs:D

    .line 50
    iput-object p9, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    .line 51
    invoke-direct {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->init()V

    .line 52
    return-void
.end method

.method private init()V
    .locals 4

    .line 84
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhq:D

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhq:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhr:D

    .line 85
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhs:D

    iget-wide v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhs:D

    mul-double/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bht:D

    .line 86
    return-void
.end method


# virtual methods
.method public synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 17
    invoke-virtual {p0}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->rH()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 178
    if-ne p0, p1, :cond_0

    .line 180
    const/4 v0, 0x1

    return v0

    .line 182
    :cond_0
    if-nez p1, :cond_1

    .line 184
    const/4 v0, 0x0

    return v0

    .line 186
    :cond_1
    instance-of v0, p1, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    if-nez v0, :cond_2

    .line 188
    const/4 v0, 0x0

    return v0

    .line 190
    :cond_2
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    move-object v4, v0

    .line 191
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhp:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhp:I

    if-eq v0, v1, :cond_3

    .line 193
    const/4 v0, 0x0

    return v0

    .line 195
    :cond_3
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aMJ:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aMJ:I

    if-eq v0, v1, :cond_4

    .line 197
    const/4 v0, 0x0

    return v0

    .line 199
    :cond_4
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhq:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhq:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 201
    const/4 v0, 0x0

    return v0

    .line 203
    :cond_5
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhr:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhr:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 205
    const/4 v0, 0x0

    return v0

    .line 207
    :cond_6
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhz:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhz:I

    if-eq v0, v1, :cond_7

    .line 209
    const/4 v0, 0x0

    return v0

    .line 211
    :cond_7
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aOn:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aOn:I

    if-eq v0, v1, :cond_8

    .line 213
    const/4 v0, 0x0

    return v0

    .line 215
    :cond_8
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhm:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhm:I

    if-eq v0, v1, :cond_9

    .line 217
    const/4 v0, 0x0

    return v0

    .line 219
    :cond_9
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhn:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhn:I

    if-eq v0, v1, :cond_a

    .line 221
    const/4 v0, 0x0

    return v0

    .line 223
    :cond_a
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bho:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bho:I

    if-eq v0, v1, :cond_b

    .line 225
    const/4 v0, 0x0

    return v0

    .line 227
    :cond_b
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-nez v0, :cond_c

    .line 229
    iget-object v0, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-eqz v0, :cond_d

    .line 231
    const/4 v0, 0x0

    return v0

    .line 234
    :cond_c
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 236
    const/4 v0, 0x0

    return v0

    .line 238
    :cond_d
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhs:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    .line 240
    const/4 v0, 0x0

    return v0

    .line 242
    :cond_e
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bht:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bht:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    .line 244
    const/4 v0, 0x0

    return v0

    .line 246
    :cond_f
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgC:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgC:I

    if-eq v0, v1, :cond_10

    .line 248
    const/4 v0, 0x0

    return v0

    .line 250
    :cond_10
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhu:I

    iget v1, v4, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhu:I

    if-eq v0, v1, :cond_11

    .line 252
    const/4 v0, 0x0

    return v0

    .line 255
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 7

    .line 152
    const/16 v3, 0x1f

    .line 153
    const/4 v4, 0x1

    .line 154
    iget v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhp:I

    add-int/lit8 v4, v0, 0x1f

    .line 155
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aMJ:I

    add-int v4, v0, v1

    .line 157
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhq:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 158
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 159
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhr:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 160
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 161
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhz:I

    add-int v4, v0, v1

    .line 162
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aOn:I

    add-int v4, v0, v1

    .line 163
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhm:I

    add-int v4, v0, v1

    .line 164
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhn:I

    add-int v4, v0, v1

    .line 165
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bho:I

    add-int v4, v0, v1

    .line 166
    mul-int/lit8 v0, v4, 0x1f

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v4, v0, v1

    .line 167
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhs:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 168
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 169
    iget-wide v0, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bht:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v5

    .line 170
    mul-int/lit8 v0, v4, 0x1f

    const/16 v1, 0x20

    ushr-long v1, v5, v1

    xor-long/2addr v1, v5

    long-to-int v1, v1

    add-int v4, v0, v1

    .line 171
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgC:I

    add-int v4, v0, v1

    .line 172
    mul-int/lit8 v0, v4, 0x1f

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhu:I

    add-int v4, v0, v1

    .line 173
    return v4
.end method

.method public rH()Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;
    .locals 10

    .line 147
    new-instance v0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aMJ:I

    iget v2, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgC:I

    iget v3, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aOn:I

    iget v4, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhp:I

    iget-wide v5, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhq:D

    iget-wide v7, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhs:D

    iget-object v9, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-direct/range {v0 .. v9}, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;-><init>(IIIIDDLorg/spongycastle/crypto/Digest;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 260
    new-instance v3, Ljava/text/DecimalFormat;

    const-string v0, "0.00"

    invoke-direct {v3, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 262
    new-instance v4, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SignatureParameters(N="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->aMJ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " q="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgC:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " B="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " beta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhq:D

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " normBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bhs:D

    invoke-virtual {v3, v1, v2}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " hashAlg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/spongycastle/pqc/crypto/ntru/NTRUSigningParameters;->bgs:Lorg/spongycastle/crypto/Digest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
