.class Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lorg/spongycastle/crypto/KeyEncoder;


# annotations
.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic aWS:Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;


# direct methods
.method constructor <init>(Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;)V
    .locals 0

    .line 434
    iput-object p1, p0, Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher$1;->aWS:Lorg/spongycastle/jcajce/provider/asymmetric/ec/IESCipher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ˊ(Lorg/spongycastle/crypto/params/AsymmetricKeyParameter;)[B
    .locals 1

    .line 437
    move-object v0, p1

    check-cast v0, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;

    invoke-virtual {v0}, Lorg/spongycastle/crypto/params/ECPublicKeyParameters;->kH()Lorg/spongycastle/math/ec/ECPoint;

    move-result-object v0

    invoke-virtual {v0}, Lorg/spongycastle/math/ec/ECPoint;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
