.class public Lorg/spongycastle/crypto/modes/GCFBBlockCipher;
.super Lorg/spongycastle/crypto/StreamBlockCipher;
.source ""


# static fields
.field private static final aGy:[B


# instance fields
.field private aEW:Z

.field private final aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

.field private aOS:Lorg/spongycastle/crypto/params/KeyParameter;

.field private aOT:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 18
    const/16 v0, 0x20

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aGy:[B

    return-void

    :array_0
    .array-data 1
        0x69t
        0x0t
        0x72t
        0x22t
        0x64t
        -0x37t
        0x4t
        0x23t
        -0x73t
        0x3at
        -0x25t
        -0x6at
        0x46t
        -0x17t
        0x2at
        -0x3ct
        0x18t
        -0x2t
        -0x54t
        -0x6ct
        0x0t
        -0x13t
        0x7t
        0x12t
        -0x40t
        -0x7at
        -0x24t
        -0x3et
        -0x11t
        0x4ct
        -0x57t
        0x2bt
    .end array-data
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/BlockCipher;)V
    .locals 3

    .line 34
    invoke-direct {p0, p1}, Lorg/spongycastle/crypto/StreamBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;)V

    .line 29
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOT:J

    .line 36
    new-instance v0, Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-interface {p1}, Lorg/spongycastle/crypto/BlockCipher;->getBlockSize()I

    move-result v1

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, p1, v1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;-><init>(Lorg/spongycastle/crypto/BlockCipher;I)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    .line 37
    return-void
.end method


# virtual methods
.method public getBlockSize()I
    .locals 1

    .line 73
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public iG()Ljava/lang/String;
    .locals 4

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->iG()Ljava/lang/String;

    move-result-object v3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x2f

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x2f

    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public reset()V
    .locals 2

    .line 117
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOT:J

    .line 118
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->reset()V

    .line 119
    return-void
.end method

.method public ˊ([BI[BI)I
    .locals 6

    .line 79
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v3}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v3

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->ˋ([BII[BI)I

    .line 81
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->getBlockSize()I

    move-result v0

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 2

    .line 42
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOT:J

    .line 43
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0, p1, p2}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 45
    iput-boolean p1, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aEW:Z

    .line 47
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    if-eqz v0, :cond_0

    .line 49
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithIV;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithIV;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 52
    :cond_0
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    if-eqz v0, :cond_1

    .line 54
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithRandom;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithRandom;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 57
    :cond_1
    instance-of v0, p2, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    if-eqz v0, :cond_2

    .line 59
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/ParametersWithSBox;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ParametersWithSBox;->lh()Lorg/spongycastle/crypto/CipherParameters;

    move-result-object p2

    .line 62
    :cond_2
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOS:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 63
    return-void
.end method

.method protected ͺ(B)B
    .locals 7

    .line 86
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOT:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOT:J

    const-wide/16 v2, 0x400

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 88
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->iH()Lorg/spongycastle/crypto/BlockCipher;

    move-result-object v4

    .line 90
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOS:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x0

    invoke-interface {v4, v1, v0}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 92
    const/16 v0, 0x20

    new-array v5, v0, [B

    .line 94
    sget-object v0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aGy:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v4, v0, v1, v5, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 95
    sget-object v0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aGy:[B

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-interface {v4, v0, v1, v5, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 96
    sget-object v0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aGy:[B

    const/16 v1, 0x10

    const/16 v2, 0x10

    invoke-interface {v4, v0, v1, v5, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 97
    sget-object v0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aGy:[B

    const/16 v1, 0x18

    const/16 v2, 0x18

    invoke-interface {v4, v0, v1, v5, v2}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 99
    new-instance v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v0, v5}, Lorg/spongycastle/crypto/params/KeyParameter;-><init>([B)V

    iput-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOS:Lorg/spongycastle/crypto/params/KeyParameter;

    .line 101
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOS:Lorg/spongycastle/crypto/params/KeyParameter;

    const/4 v1, 0x1

    invoke-interface {v4, v1, v0}, Lorg/spongycastle/crypto/BlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 103
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->kf()[B

    move-result-object v6

    .line 105
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-interface {v4, v6, v0, v6, v1}, Lorg/spongycastle/crypto/BlockCipher;->ˊ([BI[BI)I

    .line 107
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    iget-boolean v1, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aEW:Z

    new-instance v2, Lorg/spongycastle/crypto/params/ParametersWithIV;

    iget-object v3, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOS:Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-direct {v2, v3, v6}, Lorg/spongycastle/crypto/params/ParametersWithIV;-><init>(Lorg/spongycastle/crypto/CipherParameters;[B)V

    invoke-virtual {v0, v1, v2}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V

    .line 110
    :cond_0
    iget-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOT:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOT:J

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/modes/GCFBBlockCipher;->aOR:Lorg/spongycastle/crypto/modes/CFBBlockCipher;

    invoke-virtual {v0, p1}, Lorg/spongycastle/crypto/modes/CFBBlockCipher;->ͺ(B)B

    move-result v0

    return v0
.end method
