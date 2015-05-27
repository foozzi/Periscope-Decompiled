.class public Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractFp;
.source ""


# static fields
.field public static final aFA:Ljava/math/BigInteger;


# instance fields
.field protected bdn:Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFFC2F"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->aFA:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->aFA:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 24
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->bdn:Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;

    .line 26
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 27
    const-wide/16 v0, 0x7

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 28
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBAAEDCE6AF48A03BBFD25E8CD0364141"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->bcm:Ljava/math/BigInteger;

    .line 29
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->bcn:Ljava/math/BigInteger;

    .line 30
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->bco:I

    .line 31
    return-void
.end method


# virtual methods
.method public getFieldSize()I
    .locals 1

    .line 56
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method protected pg()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 35
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;-><init>()V

    return-object v0
.end method

.method public pi()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Curve;->bdn:Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 66
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 71
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 61
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;

    invoke-direct {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP256K1FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public ﭨ(I)Z
    .locals 1

    .line 40
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 43
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 45
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
    .end sparse-switch
.end method
