.class Lorg/spongycastle/math/ec/ZTauElement;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public final aFP:Ljava/math/BigInteger;

.field public final aJD:Ljava/math/BigInteger;


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;Ljava/math/BigInteger;)V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/spongycastle/math/ec/ZTauElement;->aFP:Ljava/math/BigInteger;

    .line 35
    iput-object p2, p0, Lorg/spongycastle/math/ec/ZTauElement;->aJD:Ljava/math/BigInteger;

    .line 36
    return-void
.end method
