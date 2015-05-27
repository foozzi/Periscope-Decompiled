.class public Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private aFA:Ljava/math/BigInteger;

.field private aFL:Ljava/math/BigInteger;

.field private aFz:Ljava/math/BigInteger;

.field private aPZ:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->aPZ:Ljava/math/BigInteger;

    .line 34
    iput-object p2, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->aFz:Ljava/math/BigInteger;

    .line 35
    iput-object p3, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->aFA:Ljava/math/BigInteger;

    .line 36
    iput-object p4, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->aFL:Ljava/math/BigInteger;

    .line 37
    return-void
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->aFL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 56
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->aFz:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->aFA:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getY()Ljava/math/BigInteger;
    .locals 1

    .line 46
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PublicKeySpec;->aPZ:Ljava/math/BigInteger;

    return-object v0
.end method
