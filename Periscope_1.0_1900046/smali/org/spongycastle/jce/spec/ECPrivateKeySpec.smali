.class public Lorg/spongycastle/jce/spec/ECPrivateKeySpec;
.super Lorg/spongycastle/jce/spec/ECKeySpec;
.source ""


# instance fields
.field private aPU:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Lorg/spongycastle/jce/spec/ECParameterSpec;)V
    .locals 0

    .line 23
    invoke-direct {p0, p2}, Lorg/spongycastle/jce/spec/ECKeySpec;-><init>(Lorg/spongycastle/jce/spec/ECParameterSpec;)V

    .line 25
    iput-object p1, p0, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->aPU:Ljava/math/BigInteger;

    .line 26
    return-void
.end method


# virtual methods
.method public kz()Ljava/math/BigInteger;
    .locals 1

    .line 33
    iget-object v0, p0, Lorg/spongycastle/jce/spec/ECPrivateKeySpec;->aPU:Ljava/math/BigInteger;

    return-object v0
.end method
