.class public Lorg/spongycastle/crypto/params/ECDomainParameters;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/math/ec/ECConstants;


# instance fields
.field private aDB:Ljava/math/BigInteger;

.field private aDC:Ljava/math/BigInteger;

.field private aDw:Lorg/spongycastle/math/ec/ECCurve;

.field private aDx:[B

.field private aQd:Lorg/spongycastle/math/ec/ECPoint;


# direct methods
.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;)V
    .locals 6

    .line 24
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v4, Lorg/spongycastle/crypto/params/ECDomainParameters;->ONE:Ljava/math/BigInteger;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 25
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 6

    .line 33
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/crypto/params/ECDomainParameters;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V

    .line 34
    return-void
.end method

.method public constructor <init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECPoint;Ljava/math/BigInteger;Ljava/math/BigInteger;[B)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    .line 44
    invoke-virtual {p2}, Lorg/spongycastle/math/ec/ECPoint;->pQ()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aQd:Lorg/spongycastle/math/ec/ECPoint;

    .line 45
    iput-object p3, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aDB:Ljava/math/BigInteger;

    .line 46
    iput-object p4, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aDC:Ljava/math/BigInteger;

    .line 47
    iput-object p5, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aDx:[B

    .line 48
    return-void
.end method


# virtual methods
.method public getSeed()[B
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aDx:[B

    invoke-static {v0}, Lorg/spongycastle/util/Arrays;->І([B)[B

    move-result-object v0

    return-object v0
.end method

.method public gy()Ljava/math/BigInteger;
    .locals 1

    .line 62
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aDB:Ljava/math/BigInteger;

    return-object v0
.end method

.method public iv()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aDw:Lorg/spongycastle/math/ec/ECCurve;

    return-object v0
.end method

.method public iw()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aQd:Lorg/spongycastle/math/ec/ECPoint;

    return-object v0
.end method

.method public ix()Ljava/math/BigInteger;
    .locals 1

    .line 67
    iget-object v0, p0, Lorg/spongycastle/crypto/params/ECDomainParameters;->aDC:Ljava/math/BigInteger;

    return-object v0
.end method
