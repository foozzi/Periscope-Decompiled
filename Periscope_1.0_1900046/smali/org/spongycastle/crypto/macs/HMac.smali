.class public Lorg/spongycastle/crypto/macs/HMac;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/Mac;


# static fields
.field private static aNO:Ljava/util/Hashtable;


# instance fields
.field private aFH:Lorg/spongycastle/crypto/Digest;

.field private aNI:I

.field private aNJ:I

.field private aNK:Lorg/spongycastle/util/Memoable;

.field private aNL:Lorg/spongycastle/util/Memoable;

.field private aNM:[B

.field private aNN:[B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 37
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    .line 39
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "GOST3411"

    const/16 v2, 0x20

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "MD2"

    const/16 v2, 0x10

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "MD4"

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "MD5"

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "RIPEMD128"

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "RIPEMD160"

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "SHA-1"

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "SHA-224"

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "SHA-256"

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "SHA-384"

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "SHA-512"

    const/16 v2, 0x80

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "Tiger"

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    const-string v1, "Whirlpool"

    const/16 v2, 0x40

    invoke-static {v2}, Lorg/spongycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 1

    .line 85
    invoke-static {p1}, Lorg/spongycastle/crypto/macs/HMac;->ˊ(Lorg/spongycastle/crypto/Digest;)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lorg/spongycastle/crypto/macs/HMac;-><init>(Lorg/spongycastle/crypto/Digest;I)V

    .line 86
    return-void
.end method

.method private constructor <init>(Lorg/spongycastle/crypto/Digest;I)V
    .locals 2

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    .line 93
    invoke-interface {p1}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    iput v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNI:I

    .line 94
    iput p2, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    .line 95
    iget v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    .line 96
    iget v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    iget v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNI:I

    add-int/2addr v0, v1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    .line 97
    return-void
.end method

.method private static ˊ(Lorg/spongycastle/crypto/Digest;)I
    .locals 4

    .line 61
    instance-of v0, p0, Lorg/spongycastle/crypto/ExtendedDigest;

    if-eqz v0, :cond_0

    .line 63
    move-object v0, p0

    check-cast v0, Lorg/spongycastle/crypto/ExtendedDigest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/ExtendedDigest;->iM()I

    move-result v0

    return v0

    .line 66
    :cond_0
    sget-object v0, Lorg/spongycastle/crypto/macs/HMac;->aNO:Ljava/util/Hashtable;

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    move-object v3, v0

    .line 68
    if-nez v3, :cond_1

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown digest passed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p0}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static ˋ([BIB)V
    .locals 2

    .line 226
    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 228
    aget-byte v0, p0, v1

    xor-int/2addr v0, p2

    int-to-byte v0, v0

    aput-byte v0, p0, v1

    .line 226
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 230
    :cond_0
    return-void
.end method


# virtual methods
.method public doFinal([BI)I
    .locals 6

    .line 177
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 179
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNL:Lorg/spongycastle/util/Memoable;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    check-cast v0, Lorg/spongycastle/util/Memoable;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNL:Lorg/spongycastle/util/Memoable;

    invoke-interface {v0, v1}, Lorg/spongycastle/util/Memoable;->ˊ(Lorg/spongycastle/util/Memoable;)V

    .line 182
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    iget-object v3, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v3}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 189
    :goto_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    move-result v4

    .line 191
    iget v5, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    array-length v0, v0

    if-ge v5, v0, :cond_1

    .line 193
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v5

    .line 191
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 196
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNK:Lorg/spongycastle/util/Memoable;

    if-eqz v0, :cond_2

    .line 198
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    check-cast v0, Lorg/spongycastle/util/Memoable;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNK:Lorg/spongycastle/util/Memoable;

    invoke-interface {v0, v1}, Lorg/spongycastle/util/Memoable;->ˊ(Lorg/spongycastle/util/Memoable;)V

    goto :goto_2

    .line 202
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 205
    :goto_2
    return v4
.end method

.method public iG()Ljava/lang/String;
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v1}, Lorg/spongycastle/crypto/Digest;->iG()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/HMAC"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public iO()I
    .locals 1

    .line 156
    iget v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNI:I

    return v0
.end method

.method public reset()V
    .locals 4

    .line 216
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 221
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 222
    return-void
.end method

.method public update(B)V
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1}, Lorg/spongycastle/crypto/Digest;->update(B)V

    .line 163
    return-void
.end method

.method public update([BII)V
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0, p1, p2, p3}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 171
    return-void
.end method

.method public ˊ(Lorg/spongycastle/crypto/CipherParameters;)V
    .locals 8

    .line 112
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->reset()V

    .line 114
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/KeyParameter;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/KeyParameter;->getKey()[B

    move-result-object v5

    .line 115
    array-length v6, v5

    .line 117
    iget v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    if-le v6, v0, :cond_0

    .line 119
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v5, v1, v6}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 120
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 122
    iget v6, p0, Lorg/spongycastle/crypto/macs/HMac;->aNI:I

    goto :goto_0

    .line 126
    :cond_0
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {v5, v1, v0, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 129
    :goto_0
    move v7, v6

    :goto_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    array-length v0, v0

    if-ge v7, v0, :cond_1

    .line 131
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    const/4 v1, 0x0

    aput-byte v1, v0, v7

    .line 129
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 134
    :cond_1
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v0, v3, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 136
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    const/16 v2, 0x36

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->ˋ([BIB)V

    .line 137
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    iget v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    const/16 v2, 0x5c

    invoke-static {v0, v1, v2}, Lorg/spongycastle/crypto/macs/HMac;->ˋ([BIB)V

    .line 139
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    instance-of v0, v0, Lorg/spongycastle/util/Memoable;

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    check-cast v0, Lorg/spongycastle/util/Memoable;

    invoke-interface {v0}, Lorg/spongycastle/util/Memoable;->iU()Lorg/spongycastle/util/Memoable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNL:Lorg/spongycastle/util/Memoable;

    .line 143
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNL:Lorg/spongycastle/util/Memoable;

    check-cast v0, Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNN:[B

    iget v2, p0, Lorg/spongycastle/crypto/macs/HMac;->aNJ:I

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 146
    :cond_2
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    iget-object v1, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    iget-object v2, p0, Lorg/spongycastle/crypto/macs/HMac;->aNM:[B

    array-length v2, v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 148
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    instance-of v0, v0, Lorg/spongycastle/util/Memoable;

    if-eqz v0, :cond_3

    .line 150
    iget-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aFH:Lorg/spongycastle/crypto/Digest;

    check-cast v0, Lorg/spongycastle/util/Memoable;

    invoke-interface {v0}, Lorg/spongycastle/util/Memoable;->iU()Lorg/spongycastle/util/Memoable;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/macs/HMac;->aNK:Lorg/spongycastle/util/Memoable;

    .line 152
    :cond_3
    return-void
.end method
