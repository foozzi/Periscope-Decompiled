.class public Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/AlgorithmParameterSpec;


# instance fields
.field private aQb:I

.field private avL:I

.field private bdK:I

.field private bfW:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    const/16 v0, 0xb

    const/16 v1, 0x32

    invoke-direct {p0, v0, v1}, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;-><init>(II)V

    .line 56
    return-void
.end method

.method public constructor <init>(II)V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    .line 96
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "m must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 98
    :cond_0
    const/16 v0, 0x20

    if-le p1, v0, :cond_1

    .line 100
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "m is too large"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    iput p1, p0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->avL:I

    .line 103
    const/4 v0, 0x1

    shl-int/2addr v0, p1

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->aQb:I

    .line 104
    if-gez p2, :cond_2

    .line 106
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "t must be positive"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->aQb:I

    if-le p2, v0, :cond_3

    .line 110
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "t must be less than n = 2^m"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    iput p2, p0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->bdK:I

    .line 113
    invoke-static {p1}, Lorg/spongycastle/pqc/math/linearalgebra/PolynomialRingGF2;->ᴮ(I)I

    move-result v0

    iput v0, p0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->bfW:I

    .line 114
    return-void
.end method


# virtual methods
.method public getM()I
    .locals 1

    .line 165
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->avL:I

    return v0
.end method

.method public rj()I
    .locals 1

    .line 181
    iget v0, p0, Lorg/spongycastle/pqc/jcajce/spec/ECCKeyGenParameterSpec;->bdK:I

    return v0
.end method
