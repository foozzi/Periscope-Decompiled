.class public Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/CipherParameters;


# instance fields
.field private aQb:I

.field private avL:I

.field private bdK:I

.field private bfW:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 45
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;-><init>(II)V

    .line 46
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 86
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 88
    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 90
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "m is too large"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    iput p1, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->avL:I

    .line 93
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->aQb:I

    .line 94
    if-gez p2, :cond_2

    .line 96
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->aQb:I

    if-le p2, v0, :cond_3

    .line 100
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_3
    iput p2, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->bdK:I

    .line 103
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᴮ(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->bfW:I

    .line 104
    return-void
.end method


# virtual methods
.method public getM()I
    .locals 1

    .line 155
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->avL:I

    return v0
.end method

.method public kC()I
    .locals 1

    .line 163
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->aQb:I

    return v0
.end method

.method public rj()I
    .locals 1

    .line 171
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->bdK:I

    return v0
.end method

.method public rs()I
    .locals 1

    .line 179
    iget v0, p0, Lorg/spongycastle/pqc/crypto/mceliece/McElieceParameters;->bfW:I

    return v0
.end method
