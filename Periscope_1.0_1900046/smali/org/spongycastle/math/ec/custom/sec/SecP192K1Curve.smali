.class public Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;
.super Lorg/spongycastle/math/ec/ECCurve$AbstractFp;
.source ""


# static fields
.field public static final aFA:Ljava/math/BigInteger;


# instance fields
.field protected bdi:Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 13
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFFFFEE37"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    sput-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->aFA:Ljava/math/BigInteger;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 22
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->aFA:Ljava/math/BigInteger;

    invoke-direct {p0, v0}, Lorg/spongycastle/math/ec/ECCurve$AbstractFp;-><init>(Ljava/math/BigInteger;)V

    .line 24
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->bdi:Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    .line 26
    sget-object v0, Lorg/spongycastle/math/ec/ECConstants;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->bck:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 27
    const-wide/16 v0, 0x3

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->bcl:Lorg/spongycastle/math/ec/ECFieldElement;

    .line 28
    new-instance v0, Ljava/math/BigInteger;

    const-string v1, "FFFFFFFFFFFFFFFFFFFFFFFE26F2FC170F69466A74DEFD8D"

    invoke-static {v1}, Lorg/spongycastle/util/encoders/Hex;->ᵥ(Ljava/lang/String;)[B

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Ljava/math/BigInteger;-><init>(I[B)V

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->bcm:Ljava/math/BigInteger;

    .line 29
    const-wide/16 v0, 0x1

    invoke-static {v0, v1}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    iput-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->bcn:Ljava/math/BigInteger;

    .line 31
    const/4 v0, 0x2

    iput v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->bco:I

    .line 32
    return-void
.end method


# virtual methods
.method public getFieldSize()I
    .locals 1

    .line 57
    sget-object v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->aFA:Ljava/math/BigInteger;

    invoke-virtual {v0}, Ljava/math/BigInteger;->bitLength()I

    move-result v0

    return v0
.end method

.method protected pg()Lorg/spongycastle/math/ec/ECCurve;
    .locals 1

    .line 36
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;

    invoke-direct {v0}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;-><init>()V

    return-object v0
.end method

.method public pi()Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 77
    iget-object v0, p0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Curve;->bdi:Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 1

    .line 67
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method protected ˊ(Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)Lorg/spongycastle/math/ec/ECPoint;
    .locals 6

    .line 72
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1Point;-><init>(Lorg/spongycastle/math/ec/ECCurve;Lorg/spongycastle/math/ec/ECFieldElement;Lorg/spongycastle/math/ec/ECFieldElement;[Lorg/spongycastle/math/ec/ECFieldElement;Z)V

    return-object v0
.end method

.method public ι(Ljava/math/BigInteger;)Lorg/spongycastle/math/ec/ECFieldElement;
    .locals 1

    .line 62
    new-instance v0, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;

    invoke-direct {v0, p1}, Lorg/spongycastle/math/ec/custom/sec/SecP192K1FieldElement;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method

.method public ﭨ(I)Z
    .locals 1

    .line 41
    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    .line 44
    :sswitch_0
    const/4 v0, 0x1

    return v0

    .line 46
    :goto_0
    const/4 v0, 0x0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_0
    .end sparse-switch
.end method
