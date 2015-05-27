.class public Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bfu:Lorg/spongycastle/crypto/Digest;


# direct methods
.method public constructor <init>(Lorg/spongycastle/crypto/Digest;)V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->bfu:Lorg/spongycastle/crypto/Digest;

    .line 24
    return-void
.end method

.method private ᵔ([B[B)V
    .locals 6

    .line 54
    const/4 v3, 0x0

    .line 57
    const/4 v5, 0x0

    :goto_0
    array-length v0, p1

    if-ge v5, v0, :cond_0

    .line 59
    aget-byte v0, p1, v5

    and-int/lit16 v0, v0, 0xff

    aget-byte v1, p2, v5

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    add-int v4, v0, v3

    .line 60
    int-to-byte v0, v4

    aput-byte v0, p1, v5

    .line 61
    shr-int/lit8 v0, v4, 0x8

    int-to-byte v3, v0

    .line 57
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    :cond_0
    return-void
.end method

.method private ᵧ([B)V
    .locals 5

    .line 68
    const/4 v2, 0x1

    .line 71
    const/4 v4, 0x0

    :goto_0
    array-length v0, p1

    if-ge v4, v0, :cond_0

    .line 73
    aget-byte v0, p1, v4

    and-int/lit16 v0, v0, 0xff

    add-int v3, v0, v2

    .line 74
    int-to-byte v0, v3

    aput-byte v0, p1, v4

    .line 75
    shr-int/lit8 v0, v3, 0x8

    int-to-byte v2, v0

    .line 71
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 77
    :cond_0
    return-void
.end method


# virtual methods
.method public ᵞ([B)[B
    .locals 4

    .line 37
    array-length v0, p1

    new-array v3, v0, [B

    .line 38
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->bfu:Lorg/spongycastle/crypto/Digest;

    array-length v1, p1

    const/4 v2, 0x0

    invoke-interface {v0, p1, v2, v1}, Lorg/spongycastle/crypto/Digest;->update([BII)V

    .line 39
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->bfu:Lorg/spongycastle/crypto/Digest;

    invoke-interface {v0}, Lorg/spongycastle/crypto/Digest;->iJ()I

    move-result v0

    new-array v3, v0, [B

    .line 40
    iget-object v0, p0, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->bfu:Lorg/spongycastle/crypto/Digest;

    const/4 v1, 0x0

    invoke-interface {v0, v3, v1}, Lorg/spongycastle/crypto/Digest;->doFinal([BI)I

    .line 43
    invoke-direct {p0, p1, v3}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵔ([B[B)V

    .line 44
    invoke-direct {p0, p1}, Lorg/spongycastle/pqc/crypto/gmss/util/GMSSRandom;->ᵧ([B)V

    .line 48
    return-object v3
.end method
