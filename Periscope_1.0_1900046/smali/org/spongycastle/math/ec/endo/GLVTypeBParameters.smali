.class public Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;
.super Ljava/lang/Object;
.source ""


# instance fields
.field protected final aPL:Ljava/math/BigInteger;

.field protected final aPM:Ljava/math/BigInteger;

.field protected final aQE:I

.field protected final bdt:Ljava/math/BigInteger;

.field protected final bdu:Ljava/math/BigInteger;

.field protected final bdv:[Ljava/math/BigInteger;

.field protected final bdw:[Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;[Ljava/math/BigInteger;[Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;I)V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bdt:Ljava/math/BigInteger;

    .line 17
    iput-object p2, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bdu:Ljava/math/BigInteger;

    .line 18
    iput-object p3, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bdv:[Ljava/math/BigInteger;

    .line 19
    iput-object p4, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bdw:[Ljava/math/BigInteger;

    .line 20
    iput-object p5, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->aPL:Ljava/math/BigInteger;

    .line 21
    iput-object p6, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->aPM:Ljava/math/BigInteger;

    .line 22
    iput p7, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->aQE:I

    .line 23
    return-void
.end method


# virtual methods
.method public kr()Ljava/math/BigInteger;
    .locals 1

    .line 47
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->aPL:Ljava/math/BigInteger;

    return-object v0
.end method

.method public ks()Ljava/math/BigInteger;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->aPM:Ljava/math/BigInteger;

    return-object v0
.end method

.method public qm()Ljava/math/BigInteger;
    .locals 1

    .line 27
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bdt:Ljava/math/BigInteger;

    return-object v0
.end method

.method public qn()[Ljava/math/BigInteger;
    .locals 1

    .line 37
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bdv:[Ljava/math/BigInteger;

    return-object v0
.end method

.method public qo()[Ljava/math/BigInteger;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->bdw:[Ljava/math/BigInteger;

    return-object v0
.end method

.method public qp()I
    .locals 1

    .line 57
    iget v0, p0, Lorg/spongycastle/math/ec/endo/GLVTypeBParameters;->aQE:I

    return v0
.end method
