.class public Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/security/spec/KeySpec;


# instance fields
.field private aFA:Ljava/math/BigInteger;

.field private aFL:Ljava/math/BigInteger;

.field private aFO:Ljava/math/BigInteger;

.field private aFz:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->aFO:Ljava/math/BigInteger;

    .line 30
    iput-object p2, p0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->aFz:Ljava/math/BigInteger;

    .line 31
    iput-object p3, p0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->aFA:Ljava/math/BigInteger;

    .line 32
    iput-object p4, p0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->aFL:Ljava/math/BigInteger;

    .line 33
    return-void
.end method


# virtual methods
.method public getA()Ljava/math/BigInteger;
    .locals 1

    .line 68
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->aFL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getP()Ljava/math/BigInteger;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->aFz:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getQ()Ljava/math/BigInteger;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->aFA:Ljava/math/BigInteger;

    return-object v0
.end method

.method public getX()Ljava/math/BigInteger;
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/spongycastle/jce/spec/GOST3410PrivateKeySpec;->aFO:Ljava/math/BigInteger;

    return-object v0
.end method
