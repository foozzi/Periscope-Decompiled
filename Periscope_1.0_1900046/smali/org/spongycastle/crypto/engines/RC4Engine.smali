.class public Lorg/spongycastle/crypto/engines/RC4Engine;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/StreamCipher;


# instance fields
.field private aIZ:[B

.field private aLa:[B

.field private x:I

.field private y:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    .line 19
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aIZ:[B

    return-void
.end method

.method private ˇ([B)V
    .locals 6

    .line 115
    iput-object p1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aIZ:[B

    .line 119
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    .line 120
    const/4 v0, 0x0

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    .line 122
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    if-nez v0, :cond_0

    .line 124
    const/16 v0, 0x100

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    .line 128
    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/16 v0, 0x100

    if-ge v2, v0, :cond_1

    .line 130
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    int-to-byte v1, v2

    aput-byte v1, v0, v2

    .line 128
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 133
    :cond_1
    const/4 v2, 0x0

    .line 134
    const/4 v3, 0x0

    .line 136
    const/4 v4, 0x0

    :goto_1
    const/16 v0, 0x100

    if-ge v4, v0, :cond_2

    .line 138
    aget-byte v0, p1, v2

    and-int/lit16 v0, v0, 0xff

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    aget-byte v1, v1, v4

    add-int/2addr v0, v1

    add-int/2addr v0, v3

    and-int/lit16 v3, v0, 0xff

    .line 140
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    aget-byte v5, v0, v4

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    aget-byte v1, v1, v3

    aput-byte v1, v0, v4

    .line 142
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    aput-byte v5, v0, v3

    .line 143
    add-int/lit8 v0, v2, 0x1

    array-length v1, p1

    rem-int v2, v0, v1

    .line 136
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 145
    :cond_2
    return-void
.end method


# virtual methods
.method public iG()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "RC4"

    return-object v0
.end method

.method public reset()V
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aIZ:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RC4Engine;->ˇ([B)V

    .line 109
    return-void
.end method

.method public ʽ(B)B
    .locals 5

    .line 59
    iget v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    .line 60
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    .line 63
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v4, v0, v1

    .line 64
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 65
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v4, v0, v1

    .line 68
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v1, v1, v2

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v2, v2, v3

    add-int/2addr v1, v2

    and-int/lit16 v1, v1, 0xff

    aget-byte v0, v0, v1

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    return v0
.end method

.method public ˊ(ZLorg/spongycastle/crypto/CipherParameters;)V
    .locals 3

    .line 36
    instance-of v0, p2, Lorg/spongycastle/crypto/params/KeyParameter;

    if-eqz v0, :cond_0

    .line 43
    move-object v0, p2

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aIZ:[B

    .line 44
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aIZ:[B

    invoke-direct {p0, v0}, Lorg/spongycastle/crypto/engines/RC4Engine;->ˇ([B)V

    .line 46
    return-void

    .line 49
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid parameter passed to RC4 init - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public ˋ([BII[BI)I
    .locals 8

    .line 78
    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_0

    .line 80
    new-instance v0, Lorg/spongycastle/crypto/DataLengthException;

    const-string v1, "input buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/DataLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    add-int v0, p5, p3

    array-length v1, p4

    if-le v0, v1, :cond_1

    .line 85
    new-instance v0, Lorg/spongycastle/crypto/OutputLengthException;

    const-string v1, "output buffer too short"

    invoke-direct {v0, v1}, Lorg/spongycastle/crypto/OutputLengthException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_1
    const/4 v6, 0x0

    :goto_0
    if-ge v6, p3, :cond_2

    .line 90
    iget v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    add-int/lit8 v0, v0, 0x1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    .line 91
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v0, v0, v1

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    add-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    .line 94
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v7, v0, v1

    .line 95
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v2, v2, v3

    aput-byte v2, v0, v1

    .line 96
    iget-object v0, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v1, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aput-byte v7, v0, v1

    .line 99
    add-int v0, v6, p5

    add-int v1, v6, p2

    aget-byte v1, p1, v1

    iget-object v2, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget-object v3, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->x:I

    aget-byte v3, v3, v4

    iget-object v4, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->aLa:[B

    iget v5, p0, Lorg/spongycastle/crypto/engines/RC4Engine;->y:I

    aget-byte v4, v4, v5

    add-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    aget-byte v2, v2, v3

    xor-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p4, v0

    .line 88
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 103
    :cond_2
    return p3
.end method
